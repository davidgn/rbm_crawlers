package P1;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f2209a;

    public b(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f2209a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f2209a.equals(((b) obj).f2209a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2209a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return C.a.p(new StringBuilder("Encoding{name=\""), this.f2209a, "\"}");
    }
}
