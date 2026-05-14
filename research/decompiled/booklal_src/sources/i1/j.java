package i1;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final String f7814a;

    public j(String str) {
        this.f7814a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f7814a.equals(((j) obj).f7814a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7814a.hashCode();
    }

    public final String toString() {
        return C.a.p(new StringBuilder("StringHeaderFactory{value='"), this.f7814a, "'}");
    }
}
