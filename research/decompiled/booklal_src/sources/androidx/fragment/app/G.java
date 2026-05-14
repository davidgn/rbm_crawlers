package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
/* loaded from: classes.dex */
public final class G extends AnimationSet implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final ViewGroup f4130a;

    /* renamed from: b  reason: collision with root package name */
    public final View f4131b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4132c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4133d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4134e;

    public G(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f4134e = true;
        this.f4130a = viewGroup;
        this.f4131b = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j5, Transformation transformation) {
        this.f4134e = true;
        if (this.f4132c) {
            return !this.f4133d;
        }
        if (!super.getTransformation(j5, transformation)) {
            this.f4132c = true;
            M.A.a(this.f4130a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z4 = this.f4132c;
        ViewGroup viewGroup = this.f4130a;
        if (z4 || !this.f4134e) {
            viewGroup.endViewTransition(this.f4131b);
            this.f4133d = true;
            return;
        }
        this.f4134e = false;
        viewGroup.post(this);
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j5, Transformation transformation, float f5) {
        this.f4134e = true;
        if (this.f4132c) {
            return !this.f4133d;
        }
        if (!super.getTransformation(j5, transformation, f5)) {
            this.f4132c = true;
            M.A.a(this.f4130a, this);
        }
        return true;
    }
}
