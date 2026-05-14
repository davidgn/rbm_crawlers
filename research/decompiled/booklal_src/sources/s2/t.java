package s2;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
/* loaded from: classes2.dex */
public abstract class t extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public Drawable f10196a;

    /* renamed from: b  reason: collision with root package name */
    public Rect f10197b;

    /* renamed from: c  reason: collision with root package name */
    public Rect f10198c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10199d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f10200e;

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f10197b == null || this.f10196a == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        boolean z4 = this.f10199d;
        Rect rect = this.f10198c;
        if (z4) {
            rect.set(0, 0, width, this.f10197b.top);
            this.f10196a.setBounds(rect);
            this.f10196a.draw(canvas);
        }
        if (this.f10200e) {
            rect.set(0, height - this.f10197b.bottom, width, height);
            this.f10196a.setBounds(rect);
            this.f10196a.draw(canvas);
        }
        Rect rect2 = this.f10197b;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f10196a.setBounds(rect);
        this.f10196a.draw(canvas);
        Rect rect3 = this.f10197b;
        rect.set(width - rect3.right, rect3.top, width, height - rect3.bottom);
        this.f10196a.setBounds(rect);
        this.f10196a.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f10196a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f10196a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z4) {
        this.f10200e = z4;
    }

    public void setDrawTopInsetForeground(boolean z4) {
        this.f10199d = z4;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f10196a = drawable;
    }
}
