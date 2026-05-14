package z;

import android.graphics.Rect;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes.dex */
public abstract class c {
    public boolean a(View view) {
        return false;
    }

    public boolean b(View view, View view2) {
        return false;
    }

    public void c(e eVar) {
    }

    public boolean d(View view, View view2) {
        return false;
    }

    public void e(CoordinatorLayout coordinatorLayout, View view) {
    }

    public void f() {
    }

    public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    public abstract boolean h(CoordinatorLayout coordinatorLayout, View view, int i);

    public boolean i(CoordinatorLayout coordinatorLayout, View view, int i, int i4, int i5) {
        return false;
    }

    public boolean j(View view) {
        return false;
    }

    public void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i4, int[] iArr, int i5) {
    }

    public void l(CoordinatorLayout coordinatorLayout, View view, int i, int i4, int i5, int[] iArr) {
        iArr[0] = iArr[0] + i4;
        iArr[1] = iArr[1] + i5;
    }

    public boolean m(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z4) {
        return false;
    }

    public void n(View view, Parcelable parcelable) {
    }

    public Parcelable o(View view) {
        return View.BaseSavedState.EMPTY_STATE;
    }

    public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i4) {
        return false;
    }

    public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
    }

    public boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }
}
