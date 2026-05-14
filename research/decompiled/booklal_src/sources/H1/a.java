package H1;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import kotlin.jvm.internal.i;
import s.AbstractC0824e;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public float f1065a;

    /* renamed from: b  reason: collision with root package name */
    public float f1066b;

    /* renamed from: c  reason: collision with root package name */
    public float f1067c;

    /* renamed from: d  reason: collision with root package name */
    public int f1068d;

    public final String a() {
        String str;
        StringBuilder sb = new StringBuilder("RoundedTransformation(radius=");
        sb.append(this.f1065a);
        sb.append(", margin=");
        sb.append(this.f1067c);
        sb.append(", diameter=");
        sb.append(this.f1066b);
        sb.append(", cornerType=");
        switch (this.f1068d) {
            case 1:
                str = "ALL";
                break;
            case 2:
                str = "TOP_LEFT";
                break;
            case 3:
                str = "TOP_RIGHT";
                break;
            case 4:
                str = "BOTTOM_LEFT";
                break;
            case 5:
                str = "BOTTOM_RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "LEFT";
                break;
            case 9:
                str = "RIGHT";
                break;
            case 10:
                str = "OTHER_TOP_LEFT";
                break;
            case 11:
                str = "OTHER_TOP_RIGHT";
                break;
            case 12:
                str = "OTHER_BOTTOM_LEFT";
                break;
            case 13:
                str = "OTHER_BOTTOM_RIGHT";
                break;
            case 14:
                str = "DIAGONAL_FROM_TOP_LEFT";
                break;
            case 15:
                str = "DIAGONAL_FROM_TOP_RIGHT";
                break;
            default:
                throw null;
        }
        sb.append(str);
        sb.append(")");
        return sb.toString();
    }

    public final Bitmap b(Bitmap source) {
        i.g(source, "source");
        int width = source.getWidth();
        int height = source.getHeight();
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(source, tileMode, tileMode));
        float f5 = this.f1067c;
        float f6 = width - f5;
        float f7 = height - f5;
        int d2 = AbstractC0824e.d(this.f1068d);
        float f8 = this.f1066b;
        float f9 = this.f1065a;
        switch (d2) {
            case 0:
                canvas.drawRoundRect(new RectF(f5, f5, f6, f7), f9, f9, paint);
                break;
            case 1:
                float f10 = f8 + f5;
                canvas.drawRoundRect(new RectF(f5, f5, f10, f10), f9, f9, paint);
                float f11 = f9 + f5;
                canvas.drawRect(new RectF(f5, f11, f11, f7), paint);
                canvas.drawRect(new RectF(f11, f5, f6, f7), paint);
                break;
            case 2:
                canvas.drawRoundRect(new RectF(f6 - f8, f5, f6, f8 + f5), f9, f9, paint);
                float f12 = f6 - f9;
                canvas.drawRect(new RectF(f5, f5, f12, f7), paint);
                canvas.drawRect(new RectF(f12, f5 + f9, f6, f7), paint);
                break;
            case 3:
                float f13 = f7 - f8;
                float f14 = f8 + f5;
                canvas.drawRoundRect(new RectF(f5, f13, f14, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f5, f14, f7 - f9), paint);
                canvas.drawRect(new RectF(f9 + f5, f5, f6, f7), paint);
                break;
            case 4:
                canvas.drawRoundRect(new RectF(f6 - f8, f7 - f8, f6, f7), f9, f9, paint);
                float f15 = f6 - f9;
                canvas.drawRect(new RectF(f5, f5, f15, f7), paint);
                canvas.drawRect(new RectF(f15, f5, f6, f7 - f9), paint);
                break;
            case 5:
                canvas.drawRoundRect(new RectF(f5, f5, f6, f8 + f5), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f9 + f5, f6, f7), paint);
                break;
            case 6:
                canvas.drawRoundRect(new RectF(f5, f7 - f8, f6, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f5, f6, f7 - f9), paint);
                break;
            case 7:
                canvas.drawRoundRect(new RectF(f5, f5, f8 + f5, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f9 + f5, f5, f6, f7), paint);
                break;
            case 8:
                canvas.drawRoundRect(new RectF(f6 - f8, f5, f6, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f5, f6 - f9, f7), paint);
                break;
            case 9:
                canvas.drawRoundRect(new RectF(f5, f7 - f8, f6, f7), f9, f9, paint);
                canvas.drawRoundRect(new RectF(f6 - f8, f5, f6, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f5, f6 - f9, f7 - f9), paint);
                break;
            case 10:
                canvas.drawRoundRect(new RectF(f5, f5, f5 + f8, f7), f9, f9, paint);
                canvas.drawRoundRect(new RectF(f5, f7 - f8, f6, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5 + f9, f5, f6, f7 - f9), paint);
                break;
            case 11:
                canvas.drawRoundRect(new RectF(f5, f5, f6, f5 + f8), f9, f9, paint);
                canvas.drawRoundRect(new RectF(f6 - f8, f5, f6, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f5 + f9, f6 - f9, f7), paint);
                break;
            case 12:
                float f16 = f8 + f5;
                canvas.drawRoundRect(new RectF(f5, f5, f6, f16), f9, f9, paint);
                canvas.drawRoundRect(new RectF(f5, f5, f16, f7), f9, f9, paint);
                float f17 = f5 + f9;
                canvas.drawRect(new RectF(f17, f17, f6, f7), paint);
                break;
            case 13:
                float f18 = f5 + f8;
                canvas.drawRoundRect(new RectF(f5, f5, f18, f18), f9, f9, paint);
                float f19 = f6 - f8;
                canvas.drawRoundRect(new RectF(f19, f7 - f8, f6, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f5 + f9, f19, f7), paint);
                canvas.drawRect(new RectF(f18, f5, f6, f7 - f9), paint);
                break;
            case 14:
                float f20 = f5 + f8;
                canvas.drawRoundRect(new RectF(f6 - f8, f5, f6, f20), f9, f9, paint);
                canvas.drawRoundRect(new RectF(f5, f7 - f8, f20, f7), f9, f9, paint);
                canvas.drawRect(new RectF(f5, f5, f6 - f9, f7 - f9), paint);
                float f21 = f5 + f9;
                canvas.drawRect(new RectF(f21, f21, f6, f7), paint);
                break;
            default:
                canvas.drawRoundRect(new RectF(f5, f5, f6, f7), f9, f9, paint);
                break;
        }
        source.recycle();
        i.b(bitmap, "bitmap");
        return bitmap;
    }
}
