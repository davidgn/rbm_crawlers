package z2;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
/* loaded from: classes2.dex */
public final class q extends s {

    /* renamed from: h  reason: collision with root package name */
    public static final RectF f11720h = new RectF();

    /* renamed from: b  reason: collision with root package name */
    public final float f11721b;

    /* renamed from: c  reason: collision with root package name */
    public final float f11722c;

    /* renamed from: d  reason: collision with root package name */
    public final float f11723d;

    /* renamed from: e  reason: collision with root package name */
    public final float f11724e;

    /* renamed from: f  reason: collision with root package name */
    public float f11725f;

    /* renamed from: g  reason: collision with root package name */
    public float f11726g;

    public q(float f5, float f6, float f7, float f8) {
        this.f11721b = f5;
        this.f11722c = f6;
        this.f11723d = f7;
        this.f11724e = f8;
    }

    @Override // z2.s
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f11729a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = f11720h;
        rectF.set(this.f11721b, this.f11722c, this.f11723d, this.f11724e);
        path.arcTo(rectF, this.f11725f, this.f11726g, false);
        path.transform(matrix);
    }
}
