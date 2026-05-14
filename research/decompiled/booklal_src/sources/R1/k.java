package R1;
/* loaded from: classes.dex */
public final class k extends s {

    /* renamed from: a  reason: collision with root package name */
    public final i f2451a;

    public k(i iVar) {
        this.f2451a = iVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s) {
            s sVar = (s) obj;
            Object obj2 = r.f2475a;
            ((k) sVar).getClass();
            return obj2.equals(obj2) && this.f2451a.equals(((k) sVar).f2451a);
        }
        return false;
    }

    public final int hashCode() {
        return ((r.f2475a.hashCode() ^ 1000003) * 1000003) ^ this.f2451a.hashCode();
    }

    public final String toString() {
        return "ClientInfo{clientType=" + r.f2475a + ", androidClientInfo=" + this.f2451a + "}";
    }
}
