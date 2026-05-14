package M;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public abstract class m0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Field f1850a;

    /* renamed from: b  reason: collision with root package name */
    public static final Field f1851b;

    /* renamed from: c  reason: collision with root package name */
    public static final Field f1852c;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f1853d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f1850a = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            f1851b = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f1852c = declaredField3;
            declaredField3.setAccessible(true);
            f1853d = true;
        } catch (ReflectiveOperationException e5) {
            Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e5.getMessage(), e5);
        }
    }
}
