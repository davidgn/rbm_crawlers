package z2;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import y2.C0995a;
/* loaded from: classes2.dex */
public final class p extends t {

    /* renamed from: b  reason: collision with root package name */
    public final r f11717b;

    /* renamed from: c  reason: collision with root package name */
    public final float f11718c;

    /* renamed from: d  reason: collision with root package name */
    public final float f11719d;

    public p(r rVar, float f5, float f6) {
        this.f11717b = rVar;
        this.f11718c = f5;
        this.f11719d = f6;
    }

    @Override // z2.t
    public final void a(Matrix matrix, C0995a c0995a, int i, Canvas canvas) {
        r rVar = this.f11717b;
        float f5 = rVar.f11728c;
        float f6 = this.f11719d;
        float f7 = rVar.f11727b;
        float f8 = this.f11718c;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f5 - f6, f7 - f8), 0.0f);
        Matrix matrix2 = new Matrix(matrix);
        matrix2.preTranslate(f8, f6);
        matrix2.preRotate(b());
        c0995a.getClass();
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int[] iArr = C0995a.i;
        iArr[0] = c0995a.f11559f;
        iArr[1] = c0995a.f11558e;
        iArr[2] = c0995a.f11557d;
        Paint paint = c0995a.f11556c;
        float f9 = rectF.left;
        paint.setShader(new LinearGradient(f9, rectF.top, f9, rectF.bottom, iArr, C0995a.f11551j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        r rVar = this.f11717b;
        return (float) Math.toDegrees(Math.atan((rVar.f11728c - this.f11719d) / (rVar.f11727b - this.f11718c)));
    }
}
