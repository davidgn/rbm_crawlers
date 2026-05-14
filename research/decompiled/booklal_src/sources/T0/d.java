package T0;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f2624a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2625b;

    public d(String str, int i) {
        this.f2624a = str;
        this.f2625b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f2625b != dVar.f2625b) {
                return false;
            }
            return this.f2624a.equals(dVar.f2624a);
        }
        return false;
    }

    public final int hashCode() {
        return (this.f2624a.hashCode() * 31) + this.f2625b;
    }
}
