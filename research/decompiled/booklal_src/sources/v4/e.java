package v4;
/* loaded from: classes2.dex */
public final class e extends f {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f11194a;

    public e(Throwable th) {
        this.f11194a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            if (kotlin.jvm.internal.i.a(this.f11194a, ((e) obj).f11194a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Throwable th = this.f11194a;
        if (th != null) {
            return th.hashCode();
        }
        return 0;
    }

    @Override // v4.f
    public final String toString() {
        return "Closed(" + this.f11194a + ')';
    }
}
