package K3;

import z3.InterfaceC1029g;
import z3.InterfaceC1035m;
/* loaded from: classes2.dex */
public final class F implements InterfaceC1035m, T4.b {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1029g f1474a;

    /* renamed from: b  reason: collision with root package name */
    public B3.b f1475b;

    public F(InterfaceC1029g interfaceC1029g) {
        this.f1474a = interfaceC1029g;
    }

    @Override // z3.InterfaceC1035m
    public final void a(B3.b bVar) {
        this.f1475b = bVar;
        this.f1474a.c(this);
    }

    @Override // T4.b
    public final void cancel() {
        this.f1475b.b();
    }

    @Override // T4.b
    public final void f(long j5) {
    }

    @Override // z3.InterfaceC1035m
    public final void onComplete() {
        this.f1474a.onComplete();
    }

    @Override // z3.InterfaceC1035m
    public final void onError(Throwable th) {
        this.f1474a.onError(th);
    }

    @Override // z3.InterfaceC1035m
    public final void onNext(Object obj) {
        this.f1474a.onNext(obj);
    }
}
