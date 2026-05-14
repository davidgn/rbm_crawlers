package B;

import android.app.LocaleManager;
import android.os.LocaleList;
/* loaded from: classes.dex */
public abstract class p {
    public static LocaleList a(Object obj) {
        return ((LocaleManager) obj).getApplicationLocales();
    }

    public static LocaleList b(Object obj) {
        return ((LocaleManager) obj).getSystemLocales();
    }
}
