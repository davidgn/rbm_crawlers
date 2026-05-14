package K3;

import z3.InterfaceC1029g;
/* renamed from: K3.g  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0056g implements T4.b {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1029g f1551a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f1552b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1553c;

    public C0056g(Object obj, InterfaceC1029g interfaceC1029g) {
        this.f1552b = obj;
        this.f1551a = interfaceC1029g;
    }

    @Override // T4.b
    public final void cancel() {
    }

    @Override // T4.b
    public final void f(long j5) {
        if (j5 <= 0 || this.f1553c) {
            return;
        }
        this.f1553c = true;
        Object obj = this.f1552b;
        InterfaceC1029g interfaceC1029g = this.f1551a;
        interfaceC1029g.onNext(obj);
        interfaceC1029g.onComplete();
    }
}
