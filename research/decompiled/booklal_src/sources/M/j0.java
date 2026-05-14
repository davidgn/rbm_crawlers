package M;

import android.view.View;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f1846a;

    public j0(View view) {
        this.f1846a = new WeakReference(view);
    }

    public final void a(float f5) {
        View view = (View) this.f1846a.get();
        if (view != null) {
            view.animate().alpha(f5);
        }
    }

    public final void b() {
        View view = (View) this.f1846a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j5) {
        View view = (View) this.f1846a.get();
        if (view != null) {
            view.animate().setDuration(j5);
        }
    }

    public final void d(k0 k0Var) {
        View view = (View) this.f1846a.get();
        if (view != null) {
            if (k0Var != null) {
                view.animate().setListener(new F0.o(k0Var, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f5) {
        View view = (View) this.f1846a.get();
        if (view != null) {
            view.animate().translationY(f5);
        }
    }
}
