package T0;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f2622a;

    /* renamed from: b  reason: collision with root package name */
    public final Long f2623b;

    public c(String str, long j5) {
        this.f2622a = str;
        this.f2623b = Long.valueOf(j5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (this.f2622a.equals(cVar.f2622a)) {
                Long l5 = cVar.f2623b;
                Long l6 = this.f2623b;
                return l6 != null ? l6.equals(l5) : l5 == null;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f2622a.hashCode() * 31;
        Long l5 = this.f2623b;
        return hashCode + (l5 != null ? l5.hashCode() : 0);
    }
}
