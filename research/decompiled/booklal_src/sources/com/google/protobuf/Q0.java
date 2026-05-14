package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Q0 implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    public int f6660a = -1;

    /* renamed from: b  reason: collision with root package name */
    public boolean f6661b;

    /* renamed from: c  reason: collision with root package name */
    public Iterator f6662c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ L0 f6663d;

    public Q0(L0 l02) {
        this.f6663d = l02;
    }

    public final Iterator a() {
        if (this.f6662c == null) {
            this.f6662c = this.f6663d.f6648c.entrySet().iterator();
        }
        return this.f6662c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f6660a + 1;
        L0 l02 = this.f6663d;
        if (i >= l02.f6647b.size()) {
            return !l02.f6648c.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        this.f6661b = true;
        int i = this.f6660a + 1;
        this.f6660a = i;
        L0 l02 = this.f6663d;
        return i < l02.f6647b.size() ? (Map.Entry) l02.f6647b.get(this.f6660a) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f6661b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f6661b = false;
        int i = L0.f6645l;
        L0 l02 = this.f6663d;
        l02.b();
        if (this.f6660a >= l02.f6647b.size()) {
            a().remove();
            return;
        }
        int i4 = this.f6660a;
        this.f6660a = i4 - 1;
        l02.g(i4);
    }
}
