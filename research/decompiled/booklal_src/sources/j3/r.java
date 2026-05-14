package j3;
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public final EnumC0520q f8113a;

    /* renamed from: b  reason: collision with root package name */
    public final r0 f8114b;

    public r(EnumC0520q enumC0520q, r0 r0Var) {
        this.f8113a = enumC0520q;
        Z2.l.j(r0Var, "status is null");
        this.f8114b = r0Var;
    }

    public static r a(EnumC0520q enumC0520q) {
        Z2.l.f(enumC0520q != EnumC0520q.f8090c, "state is TRANSIENT_ERROR. Use forError() instead");
        return new r(enumC0520q, r0.f8116e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof r) {
            r rVar = (r) obj;
            return this.f8113a.equals(rVar.f8113a) && this.f8114b.equals(rVar.f8114b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8113a.hashCode() ^ this.f8114b.hashCode();
    }

    public final String toString() {
        r0 r0Var = this.f8114b;
        boolean f5 = r0Var.f();
        EnumC0520q enumC0520q = this.f8113a;
        if (f5) {
            return enumC0520q.toString();
        }
        return enumC0520q + "(" + r0Var + ")";
    }
}
