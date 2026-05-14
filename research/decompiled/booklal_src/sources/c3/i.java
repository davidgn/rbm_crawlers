package c3;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    public static final Field f4894a;

    /* renamed from: b  reason: collision with root package name */
    public static final Field f4895b;

    /* renamed from: c  reason: collision with root package name */
    public static final Field f4896c;

    /* renamed from: d  reason: collision with root package name */
    public static Dialog f4897d;

    /* renamed from: e  reason: collision with root package name */
    public static Context f4898e;

    static {
        Field field;
        Field field2;
        Field field3;
        boolean z4 = true;
        try {
            field2 = TextView.class.getDeclaredField("mCursorDrawableRes");
            try {
                field2.setAccessible(true);
                field = TextView.class.getDeclaredField("mEditor");
                try {
                    field.setAccessible(true);
                    field3 = field.getType().getDeclaredField("mCursorDrawable");
                    try {
                        field3.setAccessible(true);
                        z4 = false;
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    field3 = null;
                }
            } catch (Exception unused3) {
                field = null;
                field3 = null;
            }
        } catch (Exception unused4) {
            field = null;
            field2 = null;
            field3 = null;
        }
        if (z4) {
            f4894a = null;
            f4895b = null;
            f4896c = null;
            return;
        }
        f4894a = field;
        f4895b = field3;
        f4896c = field2;
    }

    public static void a(Context context) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
            View currentFocus = activity.getCurrentFocus();
            if (currentFocus == null) {
                currentFocus = new View(activity);
            }
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }
}
