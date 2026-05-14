package F0;

import M.k0;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import r.C0794b;
/* loaded from: classes.dex */
public final class o extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f861a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f862b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f863c;

    public o(k0 k0Var, View view) {
        this.f862b = k0Var;
        this.f863c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f861a) {
            case 1:
                ((k0) this.f862b).a();
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f861a) {
            case 0:
                ((C0794b) this.f862b).remove(animator);
                ((r) this.f863c).f883r.remove(animator);
                return;
            default:
                ((k0) this.f862b).c();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f861a) {
            case 0:
                ((r) this.f863c).f883r.add(animator);
                return;
            default:
                ((k0) this.f862b).b();
                return;
        }
    }

    public o(r rVar, C0794b c0794b) {
        this.f863c = rVar;
        this.f862b = c0794b;
    }
}
