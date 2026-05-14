package I1;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final double f1123a;

    /* renamed from: b  reason: collision with root package name */
    public final double f1124b;

    public a(double d2, double d5) {
        if (a(d2, d5)) {
            this.f1123a = d2;
            this.f1124b = d5;
            return;
        }
        throw new IllegalArgumentException("Not a valid geo location: " + d2 + ", " + d5);
    }

    public static boolean a(double d2, double d5) {
        return d2 >= -90.0d && d2 <= 90.0d && d5 >= -180.0d && d5 <= 180.0d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return Double.compare(aVar.f1123a, this.f1123a) == 0 && Double.compare(aVar.f1124b, this.f1124b) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f1123a);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f1124b);
        return (((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) ((doubleToLongBits2 >>> 32) ^ doubleToLongBits2));
    }

    public final String toString() {
        return "GeoLocation(" + this.f1123a + ", " + this.f1124b + ")";
    }
}
