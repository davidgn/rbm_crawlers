package t4;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2.dex */
public class Z extends g0 {

    /* renamed from: c  reason: collision with root package name */
    public final boolean f10463c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z(W w5) {
        super(true);
        boolean z4 = true;
        D(w5);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g0.f10496b;
        InterfaceC0857i interfaceC0857i = (InterfaceC0857i) atomicReferenceFieldUpdater.get(this);
        C0858j c0858j = interfaceC0857i instanceof C0858j ? (C0858j) interfaceC0857i : null;
        if (c0858j != null) {
            g0 j5 = c0858j.j();
            while (!j5.x()) {
                InterfaceC0857i interfaceC0857i2 = (InterfaceC0857i) atomicReferenceFieldUpdater.get(j5);
                C0858j c0858j2 = interfaceC0857i2 instanceof C0858j ? (C0858j) interfaceC0857i2 : null;
                if (c0858j2 != null) {
                    j5 = c0858j2.j();
                }
            }
            this.f10463c = z4;
        }
        z4 = false;
        this.f10463c = z4;
    }

    @Override // t4.g0
    public final boolean x() {
        return this.f10463c;
    }

    @Override // t4.g0
    public final boolean y() {
        return true;
    }
}
