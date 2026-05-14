package N1;

import android.widget.ImageView;
/* loaded from: classes.dex */
public abstract /* synthetic */ class j {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f2060a;

    static {
        int[] iArr = new int[ImageView.ScaleType.values().length];
        f2060a = iArr;
        try {
            iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f2060a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f2060a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f2060a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
