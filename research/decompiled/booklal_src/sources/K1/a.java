package K1;

import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f1392a = 0;

    static {
        Logger.getLogger("GeoFire");
    }

    public static double a(double d2, double d5, double d6, double d7) {
        double radians = Math.toRadians(d2 - d6);
        double radians2 = Math.toRadians(d5 - d7);
        double d8 = radians / 2.0d;
        double sin = Math.sin(d8);
        double cos = Math.cos(Math.toRadians(d6)) * Math.cos(Math.toRadians(d2));
        double d9 = radians2 / 2.0d;
        double sin2 = (Math.sin(d9) * Math.sin(d9) * cos) + (Math.sin(d8) * sin);
        return Math.atan2(Math.sqrt(sin2), Math.sqrt(1.0d - sin2)) * 1.27359893E7d;
    }

    public static double b(double d2, double d5) {
        double radians = Math.toRadians(d5);
        double sqrt = (1.0d / Math.sqrt(1.0d - (Math.sin(radians) * (Math.sin(radians) * 0.00669447819799d)))) * (((Math.cos(radians) * 6378137.0d) * 3.141592653589793d) / 180.0d);
        if (sqrt < 1.0E-12d) {
            if (d2 > 0.0d) {
                return 360.0d;
            }
            return d2;
        }
        return Math.min(360.0d, d2 / sqrt);
    }

    public static double c(double d2) {
        if (d2 < -180.0d || d2 > 180.0d) {
            double d5 = d2 + 180.0d;
            return d5 > 0.0d ? (d5 % 360.0d) - 180.0d : 180.0d - ((-d5) % 360.0d);
        }
        return d2;
    }
}
