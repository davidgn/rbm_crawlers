package j3;
/* loaded from: classes2.dex */
public final class s0 extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final r0 f8129a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f8130b;

    public s0(r0 r0Var) {
        super(r0.c(r0Var), r0Var.f8127c);
        this.f8129a = r0Var;
        this.f8130b = true;
        fillInStackTrace();
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this.f8130b ? super.fillInStackTrace() : this;
    }
}
