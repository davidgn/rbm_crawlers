package N;

import android.app.LocaleManager;
import android.os.LocaleList;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
/* loaded from: classes.dex */
public abstract /* synthetic */ class c {
    public static /* bridge */ /* synthetic */ LocaleManager c(Object obj) {
        return (LocaleManager) obj;
    }

    public static /* bridge */ /* synthetic */ LocaleList h(LocaleManager localeManager) {
        return localeManager.getSystemLocales();
    }

    public static /* bridge */ /* synthetic */ OnBackInvokedCallback j(Object obj) {
        return (OnBackInvokedCallback) obj;
    }

    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher m(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    public static /* bridge */ /* synthetic */ Class n() {
        return LocaleManager.class;
    }
}
