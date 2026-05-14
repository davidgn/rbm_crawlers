package F0;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
/* loaded from: classes.dex */
public class B extends android.support.v4.media.session.a {

    /* renamed from: d  reason: collision with root package name */
    public static boolean f810d = true;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f811e = true;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f812f = true;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f813g = true;

    public void C(View view, int i, int i4, int i5, int i6) {
        if (f812f) {
            try {
                view.setLeftTopRightBottom(i, i4, i5, i6);
            } catch (NoSuchMethodError unused) {
                f812f = false;
            }
        }
    }

    public void D(View view, Matrix matrix) {
        if (f810d) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f810d = false;
            }
        }
    }

    public void E(View view, Matrix matrix) {
        if (f811e) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f811e = false;
            }
        }
    }

    @Override // android.support.v4.media.session.a
    public void x(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.x(view, i);
        } else if (f813g) {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError unused) {
                f813g = false;
            }
        }
    }
}
