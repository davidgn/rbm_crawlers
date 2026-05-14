package h3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
/* loaded from: classes2.dex */
public final class w extends BitmapDrawable {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f7765e = 0;

    /* renamed from: a  reason: collision with root package name */
    public Drawable f7766a;

    /* renamed from: b  reason: collision with root package name */
    public final long f7767b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7768c;

    /* renamed from: d  reason: collision with root package name */
    public int f7769d;

    static {
        new Paint();
    }

    public w(Context context, Bitmap bitmap, Drawable drawable, int i) {
        super(context.getResources(), bitmap);
        this.f7769d = 255;
        float f5 = context.getResources().getDisplayMetrics().density;
        if (i != 1) {
            this.f7766a = drawable;
            this.f7768c = true;
            this.f7767b = SystemClock.uptimeMillis();
        }
    }

    public static void a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!this.f7768c) {
            super.draw(canvas);
            return;
        }
        float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f7767b)) / 200.0f;
        if (uptimeMillis >= 1.0f) {
            this.f7768c = false;
            this.f7766a = null;
            super.draw(canvas);
            return;
        }
        Drawable drawable = this.f7766a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        super.setAlpha((int) (this.f7769d * uptimeMillis));
        super.draw(canvas);
        super.setAlpha(this.f7769d);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7766a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f7769d = i;
        Drawable drawable = this.f7766a;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f7766a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
