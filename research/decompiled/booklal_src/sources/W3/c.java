package W3;

import android.animation.ValueAnimator;
import io.supercharge.shimmerlayout.ShimmerLayout;
/* loaded from: classes2.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2961a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f2962b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ShimmerLayout f2963c;

    public c(ShimmerLayout shimmerLayout, int i, int i4) {
        this.f2963c = shimmerLayout;
        this.f2961a = i;
        this.f2962b = i4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue() + this.f2961a;
        ShimmerLayout shimmerLayout = this.f2963c;
        shimmerLayout.f7859a = intValue;
        if (shimmerLayout.f7859a + this.f2962b >= 0) {
            shimmerLayout.invalidate();
        }
    }
}
