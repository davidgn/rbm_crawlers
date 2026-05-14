package g0;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public abstract class b implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    public final float[] f7364a;

    /* renamed from: b  reason: collision with root package name */
    public final float f7365b;

    public b(float[] fArr) {
        this.f7364a = fArr;
        this.f7365b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f5) {
        if (f5 >= 1.0f) {
            return 1.0f;
        }
        if (f5 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f7364a;
        int min = Math.min((int) ((fArr.length - 1) * f5), fArr.length - 2);
        float f6 = this.f7365b;
        float f7 = fArr[min];
        return ((fArr[min + 1] - f7) * ((f5 - (min * f6)) / f6)) + f7;
    }
}
