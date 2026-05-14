package M;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes.dex */
public final class A implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final View f1783a;

    /* renamed from: b  reason: collision with root package name */
    public ViewTreeObserver f1784b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f1785c;

    public A(View view, Runnable runnable) {
        this.f1783a = view;
        this.f1784b = view.getViewTreeObserver();
        this.f1785c = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        A a5 = new A(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(a5);
        view.addOnAttachStateChangeListener(a5);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean isAlive = this.f1784b.isAlive();
        View view = this.f1783a;
        if (isAlive) {
            this.f1784b.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f1785c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f1784b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean isAlive = this.f1784b.isAlive();
        View view2 = this.f1783a;
        if (isAlive) {
            this.f1784b.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
