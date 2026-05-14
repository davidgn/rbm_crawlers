package androidx.appcompat.widget;

import M.AbstractC0070a0;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.booklal.booklal.R;
import g.AbstractC0420a;
import java.util.WeakHashMap;
import l.C0565b;
import l.M0;
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public boolean f3718a;

    /* renamed from: b  reason: collision with root package name */
    public View f3719b;

    /* renamed from: c  reason: collision with root package name */
    public View f3720c;

    /* renamed from: d  reason: collision with root package name */
    public Drawable f3721d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f3722e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f3723f;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f3724l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3725m;

    /* renamed from: n  reason: collision with root package name */
    public final int f3726n;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0565b c0565b = new C0565b(this);
        WeakHashMap weakHashMap = AbstractC0070a0.f1813a;
        setBackground(c0565b);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0420a.f7337a);
        boolean z4 = false;
        this.f3721d = obtainStyledAttributes.getDrawable(0);
        this.f3722e = obtainStyledAttributes.getDrawable(2);
        this.f3726n = obtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f3724l = true;
            this.f3723f = obtainStyledAttributes.getDrawable(1);
        }
        obtainStyledAttributes.recycle();
        if (!this.f3724l ? !(this.f3721d != null || this.f3722e != null) : this.f3723f == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f3721d;
        if (drawable != null && drawable.isStateful()) {
            this.f3721d.setState(getDrawableState());
        }
        Drawable drawable2 = this.f3722e;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f3722e.setState(getDrawableState());
        }
        Drawable drawable3 = this.f3723f;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f3723f.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f3721d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f3722e;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f3723f;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f3719b = findViewById(R.id.action_bar);
        this.f3720c = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f3718a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i, int i4, int i5, int i6) {
        super.onLayout(z4, i, i4, i5, i6);
        boolean z5 = true;
        if (this.f3724l) {
            Drawable drawable = this.f3723f;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z5 = false;
            }
        } else {
            if (this.f3721d == null) {
                z5 = false;
            } else if (this.f3719b.getVisibility() == 0) {
                this.f3721d.setBounds(this.f3719b.getLeft(), this.f3719b.getTop(), this.f3719b.getRight(), this.f3719b.getBottom());
            } else {
                View view = this.f3720c;
                if (view == null || view.getVisibility() != 0) {
                    this.f3721d.setBounds(0, 0, 0, 0);
                } else {
                    this.f3721d.setBounds(this.f3720c.getLeft(), this.f3720c.getTop(), this.f3720c.getRight(), this.f3720c.getBottom());
                }
            }
            this.f3725m = false;
        }
        if (z5) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i4) {
        int i5;
        if (this.f3719b == null && View.MeasureSpec.getMode(i4) == Integer.MIN_VALUE && (i5 = this.f3726n) >= 0) {
            i4 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, View.MeasureSpec.getSize(i4)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i4);
        if (this.f3719b == null) {
            return;
        }
        View.MeasureSpec.getMode(i4);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f3721d;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f3721d);
        }
        this.f3721d = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f3719b;
            if (view != null) {
                this.f3721d.setBounds(view.getLeft(), this.f3719b.getTop(), this.f3719b.getRight(), this.f3719b.getBottom());
            }
        }
        boolean z4 = false;
        if (!this.f3724l ? !(this.f3721d != null || this.f3722e != null) : this.f3723f == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f3723f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f3723f);
        }
        this.f3723f = drawable;
        boolean z4 = this.f3724l;
        boolean z5 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z4 && (drawable2 = this.f3723f) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z4 ? !(this.f3721d != null || this.f3722e != null) : this.f3723f == null) {
            z5 = true;
        }
        setWillNotDraw(z5);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f3722e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f3722e);
        }
        this.f3722e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f3725m && this.f3722e != null) {
                throw null;
            }
        }
        boolean z4 = false;
        if (!this.f3724l ? !(this.f3721d != null || this.f3722e != null) : this.f3723f == null) {
            z4 = true;
        }
        setWillNotDraw(z4);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(M0 m02) {
    }

    public void setTransitioning(boolean z4) {
        this.f3718a = z4;
        setDescendantFocusability(z4 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z4 = i == 0;
        Drawable drawable = this.f3721d;
        if (drawable != null) {
            drawable.setVisible(z4, false);
        }
        Drawable drawable2 = this.f3722e;
        if (drawable2 != null) {
            drawable2.setVisible(z4, false);
        }
        Drawable drawable3 = this.f3723f;
        if (drawable3 != null) {
            drawable3.setVisible(z4, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f3721d;
        boolean z4 = this.f3724l;
        return (drawable == drawable2 && !z4) || (drawable == this.f3722e && this.f3725m) || ((drawable == this.f3723f && z4) || super.verifyDrawable(drawable));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }
}
