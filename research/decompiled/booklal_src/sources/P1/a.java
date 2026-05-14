package P1;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Object f2208a;

    public a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.f2208a = obj;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            aVar.getClass();
            if (this.f2208a.equals(aVar.f2208a)) {
                Object obj2 = c.f2210a;
                if (obj2.equals(obj2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return c.f2210a.hashCode() ^ (((1000003 * 1000003) ^ this.f2208a.hashCode()) * 1000003);
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.f2208a + ", priority=" + c.f2210a + "}";
    }
}
