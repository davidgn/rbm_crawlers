package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public final class e extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public float f3906a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f3907b;

    /* renamed from: c  reason: collision with root package name */
    public final RectF f3908c;

    /* renamed from: d  reason: collision with root package name */
    public final Rect f3909d;

    /* renamed from: e  reason: collision with root package name */
    public float f3910e;

    /* renamed from: h  reason: collision with root package name */
    public ColorStateList f3913h;
    public PorterDuffColorFilter i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f3914j;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3911f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3912g = true;

    /* renamed from: k  reason: collision with root package name */
    public PorterDuff.Mode f3915k = PorterDuff.Mode.SRC_IN;

    public e(ColorStateList colorStateList, float f5) {
        this.f3906a = f5;
        Paint paint = new Paint(5);
        this.f3907b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f3913h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f3913h.getDefaultColor()));
        this.f3908c = new RectF();
        this.f3909d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        RectF rectF = this.f3908c;
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
        Rect rect2 = this.f3909d;
        rect2.set(rect);
        if (this.f3911f) {
            rect2.inset((int) Math.ceil(f.a(this.f3910e, this.f3906a, this.f3912g)), (int) Math.ceil(f.b(this.f3910e, this.f3906a, this.f3912g)));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z4;
        Paint paint = this.f3907b;
        if (this.i == null || paint.getColorFilter() != null) {
            z4 = false;
        } else {
            paint.setColorFilter(this.i);
            z4 = true;
        }
        RectF rectF = this.f3908c;
        float f5 = this.f3906a;
        canvas.drawRoundRect(rectF, f5, f5, paint);
        if (z4) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f3909d, this.f3906a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f3914j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f3913h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f3913h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f3907b;
        boolean z4 = colorForState != paint.getColor();
        if (z4) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f3914j;
        if (colorStateList2 == null || (mode = this.f3915k) == null) {
            return z4;
        }
        this.i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f3907b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f3907b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f3914j = colorStateList;
        this.i = a(colorStateList, this.f3915k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f3915k = mode;
        this.i = a(this.f3914j, mode);
        invalidateSelf();
    }
}
