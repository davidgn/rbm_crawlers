package s2;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: s2.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0830c {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal f10149a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    public static final ThreadLocal f10150b = new ThreadLocal();

    public static void a(ViewGroup viewGroup, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewGroup) {
            View view2 = (View) parent;
            a(viewGroup, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }
}
