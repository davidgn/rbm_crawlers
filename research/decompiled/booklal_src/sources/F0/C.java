package F0;

import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes.dex */
public final class C extends B {
    @Override // F0.B
    public final void C(View view, int i, int i4, int i5, int i6) {
        view.setLeftTopRightBottom(i, i4, i5, i6);
    }

    @Override // F0.B
    public final void D(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // F0.B
    public final void E(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // android.support.v4.media.session.a
    public final float o(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    @Override // android.support.v4.media.session.a
    public final void w(View view, float f5) {
        view.setTransitionAlpha(f5);
    }

    @Override // F0.B, android.support.v4.media.session.a
    public final void x(View view, int i) {
        view.setTransitionVisibility(i);
    }
}
