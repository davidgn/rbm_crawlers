package y2;

import android.graphics.Paint;
import android.graphics.Path;
/* renamed from: y2.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0995a {
    public static final int[] i = new int[3];

    /* renamed from: j  reason: collision with root package name */
    public static final float[] f11551j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k  reason: collision with root package name */
    public static final int[] f11552k = new int[4];

    /* renamed from: l  reason: collision with root package name */
    public static final float[] f11553l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    public final Paint f11554a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f11555b;

    /* renamed from: c  reason: collision with root package name */
    public final Paint f11556c;

    /* renamed from: d  reason: collision with root package name */
    public final int f11557d;

    /* renamed from: e  reason: collision with root package name */
    public final int f11558e;

    /* renamed from: f  reason: collision with root package name */
    public final int f11559f;

    /* renamed from: g  reason: collision with root package name */
    public final Path f11560g = new Path();

    /* renamed from: h  reason: collision with root package name */
    public final Paint f11561h;

    public C0995a() {
        Paint paint = new Paint();
        this.f11561h = paint;
        Paint paint2 = new Paint();
        this.f11554a = paint2;
        this.f11557d = E.a.d(-16777216, 68);
        this.f11558e = E.a.d(-16777216, 20);
        this.f11559f = E.a.d(-16777216, 0);
        paint2.setColor(this.f11557d);
        paint.setColor(0);
        Paint paint3 = new Paint(4);
        this.f11555b = paint3;
        paint3.setStyle(Paint.Style.FILL);
        this.f11556c = new Paint(paint3);
    }
}
