package io.supercharge.shimmerlayout;

import W3.a;
import W3.b;
import W3.c;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.booklal.booklal.R;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
public class ShimmerLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public int f7859a;

    /* renamed from: b  reason: collision with root package name */
    public Rect f7860b;

    /* renamed from: c  reason: collision with root package name */
    public Paint f7861c;

    /* renamed from: d  reason: collision with root package name */
    public ValueAnimator f7862d;

    /* renamed from: e  reason: collision with root package name */
    public Bitmap f7863e;

    /* renamed from: f  reason: collision with root package name */
    public Bitmap f7864f;

    /* renamed from: l  reason: collision with root package name */
    public Canvas f7865l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7866m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f7867n;
    public final boolean o;

    /* renamed from: p  reason: collision with root package name */
    public int f7868p;

    /* renamed from: q  reason: collision with root package name */
    public int f7869q;

    /* renamed from: r  reason: collision with root package name */
    public int f7870r;

    /* renamed from: s  reason: collision with root package name */
    public float f7871s;

    /* renamed from: t  reason: collision with root package name */
    public float f7872t;

    /* renamed from: u  reason: collision with root package name */
    public b f7873u;

    public ShimmerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setWillNotDraw(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.f2958a, 0, 0);
        try {
            this.f7870r = obtainStyledAttributes.getInteger(0, 20);
            this.f7868p = obtainStyledAttributes.getInteger(1, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
            this.f7869q = obtainStyledAttributes.getColor(3, getContext().getColor(R.color.shimmer_color));
            boolean z4 = obtainStyledAttributes.getBoolean(2, false);
            this.o = z4;
            this.f7871s = obtainStyledAttributes.getFloat(5, 0.5f);
            this.f7872t = obtainStyledAttributes.getFloat(4, 0.1f);
            this.f7866m = obtainStyledAttributes.getBoolean(6, false);
            obtainStyledAttributes.recycle();
            setMaskWidth(this.f7871s);
            setGradientCenterColorWidth(this.f7872t);
            setShimmerAngle(this.f7870r);
            if (z4 && getVisibility() == 0) {
                c();
            }
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private float[] getGradientColorDistribution() {
        float[] fArr = {0.0f, 0.5f - (r1 / 2.0f), (r1 / 2.0f) + 0.5f, 1.0f};
        float f5 = this.f7872t;
        return fArr;
    }

    private Bitmap getMaskBitmap() {
        Bitmap bitmap;
        if (this.f7864f == null) {
            try {
                bitmap = Bitmap.createBitmap(this.f7860b.width(), getHeight(), Bitmap.Config.ALPHA_8);
            } catch (OutOfMemoryError unused) {
                System.gc();
                bitmap = null;
            }
            this.f7864f = bitmap;
        }
        return this.f7864f;
    }

    private Animator getShimmerAnimation() {
        ValueAnimator valueAnimator = this.f7862d;
        if (valueAnimator != null) {
            return valueAnimator;
        }
        if (this.f7860b == null) {
            this.f7860b = new Rect(0, 0, (int) ((Math.tan(Math.toRadians(Math.abs(this.f7870r))) * getHeight()) + (((getWidth() / 2) * this.f7871s) / Math.cos(Math.toRadians(Math.abs(this.f7870r))))), getHeight());
        }
        int width = getWidth();
        int i = getWidth() > this.f7860b.width() ? -width : -this.f7860b.width();
        int width2 = this.f7860b.width();
        int i4 = width - i;
        ValueAnimator ofInt = this.f7866m ? ValueAnimator.ofInt(i4, 0) : ValueAnimator.ofInt(0, i4);
        this.f7862d = ofInt;
        ofInt.setDuration(this.f7868p);
        this.f7862d.setRepeatCount(-1);
        this.f7862d.addUpdateListener(new c(this, i, width2));
        return this.f7862d;
    }

    public final void a() {
        if (this.f7867n) {
            b();
            c();
        }
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f7862d;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f7862d.removeAllUpdateListeners();
        }
        this.f7862d = null;
        this.f7861c = null;
        this.f7867n = false;
        this.f7865l = null;
        Bitmap bitmap = this.f7864f;
        if (bitmap != null) {
            bitmap.recycle();
            this.f7864f = null;
        }
    }

    public final void c() {
        if (this.f7867n) {
            return;
        }
        if (getWidth() == 0) {
            this.f7873u = new b(this, 0);
            getViewTreeObserver().addOnPreDrawListener(this.f7873u);
            return;
        }
        getShimmerAnimation().start();
        this.f7867n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (!this.f7867n || getWidth() <= 0 || getHeight() <= 0) {
            super.dispatchDraw(canvas);
            return;
        }
        super.dispatchDraw(canvas);
        Bitmap maskBitmap = getMaskBitmap();
        this.f7863e = maskBitmap;
        if (maskBitmap == null) {
            return;
        }
        if (this.f7865l == null) {
            this.f7865l = new Canvas(this.f7863e);
        }
        this.f7865l.drawColor(0, PorterDuff.Mode.CLEAR);
        this.f7865l.save();
        this.f7865l.translate(-this.f7859a, 0.0f);
        super.dispatchDraw(this.f7865l);
        this.f7865l.restore();
        if (this.f7861c == null) {
            int i = this.f7869q;
            int argb = Color.argb(0, Color.red(i), Color.green(i), Color.blue(i));
            float width = (getWidth() / 2) * this.f7871s;
            float height = this.f7870r >= 0 ? getHeight() : 0.0f;
            int i4 = this.f7869q;
            int[] iArr = {argb, i4, i4, argb};
            float[] gradientColorDistribution = getGradientColorDistribution();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            ComposeShader composeShader = new ComposeShader(new LinearGradient(0.0f, height, ((float) Math.cos(Math.toRadians(this.f7870r))) * width, (((float) Math.sin(Math.toRadians(this.f7870r))) * width) + height, iArr, gradientColorDistribution, tileMode), new BitmapShader(this.f7863e, tileMode, tileMode), PorterDuff.Mode.DST_IN);
            Paint paint = new Paint();
            this.f7861c = paint;
            paint.setAntiAlias(true);
            this.f7861c.setDither(true);
            this.f7861c.setFilterBitmap(true);
            this.f7861c.setShader(composeShader);
        }
        canvas.save();
        canvas.translate(this.f7859a, 0.0f);
        Rect rect = this.f7860b;
        canvas.drawRect(rect.left, 0.0f, rect.width(), this.f7860b.height(), this.f7861c);
        canvas.restore();
        this.f7863e = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }

    public void setAnimationReversed(boolean z4) {
        this.f7866m = z4;
        a();
    }

    public void setGradientCenterColorWidth(float f5) {
        if (f5 <= 0.0f || 1.0f <= f5) {
            throw new IllegalArgumentException(String.format("gradientCenterColorWidth value must be higher than %d and less than %d", (byte) 0, (byte) 1));
        }
        this.f7872t = f5;
        a();
    }

    public void setMaskWidth(float f5) {
        if (f5 <= 0.0f || 1.0f < f5) {
            throw new IllegalArgumentException(String.format("maskWidth value must be higher than %d and less or equal to %d", (byte) 0, (byte) 1));
        }
        this.f7871s = f5;
        a();
    }

    public void setShimmerAngle(int i) {
        if (i < -45 || 45 < i) {
            throw new IllegalArgumentException(String.format("shimmerAngle value must be between %d and %d", (byte) -45, (byte) 45));
        }
        this.f7870r = i;
        a();
    }

    public void setShimmerAnimationDuration(int i) {
        this.f7868p = i;
        a();
    }

    public void setShimmerColor(int i) {
        this.f7869q = i;
        a();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            if (this.o) {
                c();
                return;
            }
            return;
        }
        if (this.f7873u != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f7873u);
        }
        b();
    }
}
