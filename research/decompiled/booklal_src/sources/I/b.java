package I;

import android.os.Build;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f1094a = 0;

    static {
        int i = Build.VERSION.SDK_INT;
        a aVar = a.f1093a;
        if (i >= 30) {
            aVar.a(30);
        }
        if (i >= 30) {
            aVar.a(31);
        }
        if (i >= 30) {
            aVar.a(33);
        }
        if (i >= 30) {
            aVar.a(1000000);
        }
    }

    public static final boolean a(String str, String str2) {
        if ("REL".equals(str2)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String upperCase = str2.toUpperCase(locale);
        kotlin.jvm.internal.i.e(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = str.toUpperCase(locale);
        kotlin.jvm.internal.i.e(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase.compareTo(upperCase2) >= 0;
    }

    public static final boolean b() {
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            if (i >= 30) {
                String CODENAME = Build.VERSION.CODENAME;
                kotlin.jvm.internal.i.e(CODENAME, "CODENAME");
                if (a("S", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    public static final boolean c() {
        int i = Build.VERSION.SDK_INT;
        if (i < 33) {
            if (i >= 32) {
                String CODENAME = Build.VERSION.CODENAME;
                kotlin.jvm.internal.i.e(CODENAME, "CODENAME");
                if (a("Tiramisu", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }
}
