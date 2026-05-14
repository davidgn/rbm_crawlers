package androidx.cardview.widget;

import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public abstract class f extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public static final double f3916a = Math.cos(Math.toRadians(45.0d));

    public static float a(float f5, float f6, boolean z4) {
        if (z4) {
            return (float) (((1.0d - f3916a) * f6) + f5);
        }
        return f5;
    }

    public static float b(float f5, float f6, boolean z4) {
        if (z4) {
            return (float) (((1.0d - f3916a) * f6) + (f5 * 1.5f));
        }
        return f5 * 1.5f;
    }
}
