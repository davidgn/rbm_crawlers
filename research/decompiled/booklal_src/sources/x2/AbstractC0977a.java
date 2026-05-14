package x2;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
/* renamed from: x2.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0977a {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f11492a = {16842919};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f11493b = {16842913, 16842919};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f11494c = {16842913};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f11495d = {16842910, 16842919};

    /* renamed from: e  reason: collision with root package name */
    public static final String f11496e = AbstractC0977a.class.getSimpleName();

    public static ColorStateList a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f11495d, 0)) != 0) {
                Log.w(f11496e, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }

    public static boolean b(int[] iArr) {
        boolean z4 = false;
        boolean z5 = false;
        for (int i : iArr) {
            if (i == 16842910) {
                z4 = true;
            } else if (i == 16842908 || i == 16842919 || i == 16843623) {
                z5 = true;
            }
        }
        return z4 && z5;
    }
}
