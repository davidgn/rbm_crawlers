package R1;
/* loaded from: classes.dex */
public final class p extends x {

    /* renamed from: a  reason: collision with root package name */
    public final w f2473a;

    /* renamed from: b  reason: collision with root package name */
    public final v f2474b;

    public p(w wVar, v vVar) {
        this.f2473a = wVar;
        this.f2474b = vVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof x) {
            x xVar = (x) obj;
            w wVar = this.f2473a;
            if (wVar != null ? wVar.equals(((p) xVar).f2473a) : ((p) xVar).f2473a == null) {
                v vVar = this.f2474b;
                if (vVar == null) {
                    if (((p) xVar).f2474b == null) {
                        return true;
                    }
                } else if (vVar.equals(((p) xVar).f2474b)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        w wVar = this.f2473a;
        int hashCode = ((wVar == null ? 0 : wVar.hashCode()) ^ 1000003) * 1000003;
        v vVar = this.f2474b;
        return (vVar != null ? vVar.hashCode() : 0) ^ hashCode;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f2473a + ", mobileSubtype=" + this.f2474b + "}";
    }
}
