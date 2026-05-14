package de.hdodenhof.circleimageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import i3.C0478a;
import i3.b;
/* loaded from: classes2.dex */
public class CircleImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    public final RectF f6974a;

    /* renamed from: b  reason: collision with root package name */
    public final RectF f6975b;

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f6976c;

    /* renamed from: d  reason: collision with root package name */
    public final Paint f6977d;

    /* renamed from: e  reason: collision with root package name */
    public final Paint f6978e;

    /* renamed from: f  reason: collision with root package name */
    public final Paint f6979f;

    /* renamed from: l  reason: collision with root package name */
    public int f6980l;

    /* renamed from: m  reason: collision with root package name */
    public int f6981m;

    /* renamed from: n  reason: collision with root package name */
    public int f6982n;
    public Bitmap o;

    /* renamed from: p  reason: collision with root package name */
    public BitmapShader f6983p;

    /* renamed from: q  reason: collision with root package name */
    public int f6984q;

    /* renamed from: r  reason: collision with root package name */
    public int f6985r;

    /* renamed from: s  reason: collision with root package name */
    public float f6986s;

    /* renamed from: t  reason: collision with root package name */
    public float f6987t;

    /* renamed from: u  reason: collision with root package name */
    public ColorFilter f6988u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f6989v;

    /* renamed from: w  reason: collision with root package name */
    public boolean f6990w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f6991x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f6992y;

    /* renamed from: z  reason: collision with root package name */
    public static final ImageView.ScaleType f6973z = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: A  reason: collision with root package name */
    public static final Bitmap.Config f6972A = Bitmap.Config.ARGB_8888;

    public CircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6974a = new RectF();
        this.f6975b = new RectF();
        this.f6976c = new Matrix();
        this.f6977d = new Paint();
        this.f6978e = new Paint();
        this.f6979f = new Paint();
        this.f6980l = -16777216;
        this.f6981m = 0;
        this.f6982n = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.f7858a, 0, 0);
        this.f6981m = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f6980l = obtainStyledAttributes.getColor(0, -16777216);
        this.f6991x = obtainStyledAttributes.getBoolean(1, false);
        this.f6982n = obtainStyledAttributes.getColor(3, 0);
        obtainStyledAttributes.recycle();
        super.setScaleType(f6973z);
        this.f6989v = true;
        setOutlineProvider(new C0478a(this, 0));
        if (this.f6990w) {
            b();
            this.f6990w = false;
        }
    }

    public final void a() {
        Bitmap bitmap = null;
        if (this.f6992y) {
            this.o = null;
        } else {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                if (drawable instanceof BitmapDrawable) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } else {
                    try {
                        boolean z4 = drawable instanceof ColorDrawable;
                        Bitmap.Config config = f6972A;
                        Bitmap createBitmap = z4 ? Bitmap.createBitmap(2, 2, config) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), config);
                        Canvas canvas = new Canvas(createBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                        bitmap = createBitmap;
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
            this.o = bitmap;
        }
        b();
    }

    public final void b() {
        int width;
        int height;
        float width2;
        float height2;
        int i;
        if (!this.f6989v) {
            this.f6990w = true;
        } else if (getWidth() == 0 && getHeight() == 0) {
        } else {
            if (this.o == null) {
                invalidate();
                return;
            }
            Bitmap bitmap = this.o;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f6983p = new BitmapShader(bitmap, tileMode, tileMode);
            Paint paint = this.f6977d;
            paint.setAntiAlias(true);
            paint.setDither(true);
            paint.setFilterBitmap(true);
            paint.setShader(this.f6983p);
            Paint.Style style = Paint.Style.STROKE;
            Paint paint2 = this.f6978e;
            paint2.setStyle(style);
            paint2.setAntiAlias(true);
            paint2.setColor(this.f6980l);
            paint2.setStrokeWidth(this.f6981m);
            Paint.Style style2 = Paint.Style.FILL;
            Paint paint3 = this.f6979f;
            paint3.setStyle(style2);
            paint3.setAntiAlias(true);
            paint3.setColor(this.f6982n);
            this.f6985r = this.o.getHeight();
            this.f6984q = this.o.getWidth();
            int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
            float paddingLeft = ((width - min) / 2.0f) + getPaddingLeft();
            float paddingTop = ((height - min) / 2.0f) + getPaddingTop();
            float f5 = min;
            RectF rectF = new RectF(paddingLeft, paddingTop, paddingLeft + f5, f5 + paddingTop);
            RectF rectF2 = this.f6975b;
            rectF2.set(rectF);
            this.f6987t = Math.min((rectF2.height() - this.f6981m) / 2.0f, (rectF2.width() - this.f6981m) / 2.0f);
            RectF rectF3 = this.f6974a;
            rectF3.set(rectF2);
            if (!this.f6991x && (i = this.f6981m) > 0) {
                float f6 = i - 1.0f;
                rectF3.inset(f6, f6);
            }
            this.f6986s = Math.min(rectF3.height() / 2.0f, rectF3.width() / 2.0f);
            if (paint != null) {
                paint.setColorFilter(this.f6988u);
            }
            Matrix matrix = this.f6976c;
            matrix.set(null);
            float f7 = 0.0f;
            if (rectF3.height() * this.f6984q > rectF3.width() * this.f6985r) {
                width2 = rectF3.height() / this.f6985r;
                height2 = 0.0f;
                f7 = (rectF3.width() - (this.f6984q * width2)) * 0.5f;
            } else {
                width2 = rectF3.width() / this.f6984q;
                height2 = (rectF3.height() - (this.f6985r * width2)) * 0.5f;
            }
            matrix.setScale(width2, width2);
            matrix.postTranslate(((int) (f7 + 0.5f)) + rectF3.left, ((int) (height2 + 0.5f)) + rectF3.top);
            this.f6983p.setLocalMatrix(matrix);
            invalidate();
        }
    }

    public int getBorderColor() {
        return this.f6980l;
    }

    public int getBorderWidth() {
        return this.f6981m;
    }

    public int getCircleBackgroundColor() {
        return this.f6982n;
    }

    @Override // android.widget.ImageView
    public ColorFilter getColorFilter() {
        return this.f6988u;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f6973z;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f6992y) {
            super.onDraw(canvas);
        } else if (this.o == null) {
        } else {
            int i = this.f6982n;
            RectF rectF = this.f6974a;
            if (i != 0) {
                canvas.drawCircle(rectF.centerX(), rectF.centerY(), this.f6986s, this.f6979f);
            }
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), this.f6986s, this.f6977d);
            if (this.f6981m > 0) {
                RectF rectF2 = this.f6975b;
                canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), this.f6987t, this.f6978e);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i4, int i5, int i6) {
        super.onSizeChanged(i, i4, i5, i6);
        b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
        if ((java.lang.Math.pow(r1 - r2.centerY(), 2.0d) + java.lang.Math.pow(r0 - r2.centerX(), 2.0d)) <= java.lang.Math.pow(r7.f6987t, 2.0d)) goto L11;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.f6992y
            if (r0 == 0) goto L9
            boolean r8 = super.onTouchEvent(r8)
            return r8
        L9:
            float r0 = r8.getX()
            float r1 = r8.getY()
            android.graphics.RectF r2 = r7.f6975b
            boolean r3 = r2.isEmpty()
            if (r3 == 0) goto L1a
            goto L3c
        L1a:
            float r3 = r2.centerX()
            float r0 = r0 - r3
            double r3 = (double) r0
            r5 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r3 = java.lang.Math.pow(r3, r5)
            float r0 = r2.centerY()
            float r1 = r1 - r0
            double r0 = (double) r1
            double r0 = java.lang.Math.pow(r0, r5)
            double r0 = r0 + r3
            float r2 = r7.f6987t
            double r2 = (double) r2
            double r2 = java.lang.Math.pow(r2, r5)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 > 0) goto L44
        L3c:
            boolean r8 = super.onTouchEvent(r8)
            if (r8 == 0) goto L44
            r8 = 1
            goto L45
        L44:
            r8 = 0
        L45:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: de.hdodenhof.circleimageview.CircleImageView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z4) {
        if (z4) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(int i) {
        if (i == this.f6980l) {
            return;
        }
        this.f6980l = i;
        this.f6978e.setColor(i);
        invalidate();
    }

    public void setBorderOverlay(boolean z4) {
        if (z4 == this.f6991x) {
            return;
        }
        this.f6991x = z4;
        b();
    }

    public void setBorderWidth(int i) {
        if (i == this.f6981m) {
            return;
        }
        this.f6981m = i;
        b();
    }

    public void setCircleBackgroundColor(int i) {
        if (i == this.f6982n) {
            return;
        }
        this.f6982n = i;
        this.f6979f.setColor(i);
        invalidate();
    }

    public void setCircleBackgroundColorResource(int i) {
        setCircleBackgroundColor(getContext().getResources().getColor(i));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.f6988u) {
            return;
        }
        this.f6988u = colorFilter;
        Paint paint = this.f6977d;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
        invalidate();
    }

    public void setDisableCircularTransformation(boolean z4) {
        if (this.f6992y == z4) {
            return;
        }
        this.f6992y = z4;
        a();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        a();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        a();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        a();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i4, int i5, int i6) {
        super.setPadding(i, i4, i5, i6);
        b();
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i4, int i5, int i6) {
        super.setPaddingRelative(i, i4, i5, i6);
        b();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == f6973z) {
            return;
        }
        throw new IllegalArgumentException("ScaleType " + scaleType + " not supported.");
    }
}
