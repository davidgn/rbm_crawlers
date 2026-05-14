package com.google.firebase.inappmessaging.display.dagger.internal;

import X3.a;
import com.google.firebase.inappmessaging.display.dagger.Lazy;
/* loaded from: classes2.dex */
public final class DoubleCheck<T> implements a, Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile a provider;

    private DoubleCheck(a aVar) {
        this.provider = aVar;
    }

    public static <P extends a, T> Lazy<T> lazy(P p2) {
        return p2 instanceof Lazy ? (Lazy) p2 : new DoubleCheck((a) Preconditions.checkNotNull(p2));
    }

    public static <P extends a, T> a provider(P p2) {
        Preconditions.checkNotNull(p2);
        return p2 instanceof DoubleCheck ? p2 : new DoubleCheck(p2);
    }

    public static Object reentrantCheck(Object obj, Object obj2) {
        if (obj == UNINITIALIZED || (obj instanceof MemoizedSentinel) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // X3.a
    public T get() {
        T t2 = (T) this.instance;
        Object obj = UNINITIALIZED;
        if (t2 == obj) {
            synchronized (this) {
                try {
                    t2 = this.instance;
                    if (t2 == obj) {
                        t2 = (T) this.provider.get();
                        this.instance = reentrantCheck(this.instance, t2);
                        this.provider = null;
                    }
                } finally {
                }
            }
        }
        return t2;
    }
}
