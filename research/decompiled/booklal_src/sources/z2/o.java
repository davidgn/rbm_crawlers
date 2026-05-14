package z2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import y2.C0995a;
/* loaded from: classes2.dex */
public final class o extends t {

    /* renamed from: b  reason: collision with root package name */
    public final q f11716b;

    public o(q qVar) {
        this.f11716b = qVar;
    }

    @Override // z2.t
    public final void a(Matrix matrix, C0995a c0995a, int i, Canvas canvas) {
        q qVar = this.f11716b;
        float f5 = qVar.f11725f;
        float f6 = qVar.f11726g;
        RectF rectF = new RectF(qVar.f11721b, qVar.f11722c, qVar.f11723d, qVar.f11724e);
        c0995a.getClass();
        boolean z4 = f6 < 0.0f;
        Path path = c0995a.f11560g;
        int[] iArr = C0995a.f11552k;
        if (z4) {
            iArr[0] = 0;
            iArr[1] = c0995a.f11559f;
            iArr[2] = c0995a.f11558e;
            iArr[3] = c0995a.f11557d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f5, f6);
            path.close();
            float f7 = -i;
            rectF.inset(f7, f7);
            iArr[0] = 0;
            iArr[1] = c0995a.f11557d;
            iArr[2] = c0995a.f11558e;
            iArr[3] = c0995a.f11559f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f8 = 1.0f - (i / width);
        float[] fArr = C0995a.f11553l;
        fArr[1] = f8;
        fArr[2] = ((1.0f - f8) / 2.0f) + f8;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP);
        Paint paint = c0995a.f11555b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z4) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, c0995a.f11561h);
        }
        canvas.drawArc(rectF, f5, f6, true, paint);
        canvas.restore();
    }
}
