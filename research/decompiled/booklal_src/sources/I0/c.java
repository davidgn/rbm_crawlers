package I0;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public final class c implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1107a;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f5) {
        switch (this.f1107a) {
            case 0:
                float f6 = f5 - 1.0f;
                return (f6 * f6 * f6 * f6 * f6) + 1.0f;
            case 1:
                float f7 = f5 - 1.0f;
                return (f7 * f7 * f7 * f7 * f7) + 1.0f;
            default:
                float f8 = f5 - 1.0f;
                return (f8 * f8 * f8 * f8 * f8) + 1.0f;
        }
    }
}
