package M;

import android.view.View;
import com.booklal.booklal.R;
import java.util.Objects;
/* loaded from: classes.dex */
public abstract class T {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$OnUnhandledKeyEventListener, java.lang.Object] */
    public static void a(View view, Y y5) {
        r.k kVar = (r.k) view.getTag(R.id.tag_unhandled_key_listeners);
        r.k kVar2 = kVar;
        if (kVar == null) {
            r.k kVar3 = new r.k();
            view.setTag(R.id.tag_unhandled_key_listeners, kVar3);
            kVar2 = kVar3;
        }
        Objects.requireNonNull(y5);
        ?? obj = new Object();
        kVar2.put(y5, obj);
        view.addOnUnhandledKeyEventListener(obj);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, Y y5) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        r.k kVar = (r.k) view.getTag(R.id.tag_unhandled_key_listeners);
        if (kVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) kVar.getOrDefault(y5, null)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i) {
        return (T) view.requireViewById(i);
    }

    public static void g(View view, boolean z4) {
        view.setAccessibilityHeading(z4);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, P.a aVar) {
        view.setAutofillId(null);
    }

    public static void j(View view, boolean z4) {
        view.setScreenReaderFocusable(z4);
    }
}
