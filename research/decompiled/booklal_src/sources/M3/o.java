package M3;

import java.util.concurrent.atomic.AtomicInteger;
import z3.InterfaceC1035m;
/* loaded from: classes2.dex */
public final class o extends AtomicInteger implements H3.c, Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1035m f1971a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f1972b;

    public o(InterfaceC1035m interfaceC1035m, Object obj) {
        this.f1971a = interfaceC1035m;
        this.f1972b = obj;
    }

    @Override // B3.b
    public final void b() {
        set(3);
    }

    @Override // H3.h
    public final void clear() {
        lazySet(3);
    }

    @Override // H3.d
    public final int g(int i) {
        lazySet(1);
        return 1;
    }

    @Override // H3.h
    public final boolean isEmpty() {
        return get() != 1;
    }

    @Override // H3.h
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // H3.h
    public final Object poll() {
        if (get() == 1) {
            lazySet(3);
            return this.f1972b;
        }
        return null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (get() == 0 && compareAndSet(0, 2)) {
            InterfaceC1035m interfaceC1035m = this.f1971a;
            interfaceC1035m.onNext(this.f1972b);
            if (get() == 2) {
                lazySet(3);
                interfaceC1035m.onComplete();
            }
        }
    }
}
