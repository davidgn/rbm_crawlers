package D0;

import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final RectF f638a = new RectF();

    /* renamed from: b  reason: collision with root package name */
    public final Paint f639b;

    /* renamed from: c  reason: collision with root package name */
    public final Paint f640c;

    /* renamed from: d  reason: collision with root package name */
    public final Paint f641d;

    /* renamed from: e  reason: collision with root package name */
    public float f642e;

    /* renamed from: f  reason: collision with root package name */
    public float f643f;

    /* renamed from: g  reason: collision with root package name */
    public float f644g;

    /* renamed from: h  reason: collision with root package name */
    public float f645h;
    public int[] i;

    /* renamed from: j  reason: collision with root package name */
    public int f646j;

    /* renamed from: k  reason: collision with root package name */
    public float f647k;

    /* renamed from: l  reason: collision with root package name */
    public float f648l;

    /* renamed from: m  reason: collision with root package name */
    public float f649m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f650n;
    public Path o;

    /* renamed from: p  reason: collision with root package name */
    public float f651p;

    /* renamed from: q  reason: collision with root package name */
    public float f652q;

    /* renamed from: r  reason: collision with root package name */
    public int f653r;

    /* renamed from: s  reason: collision with root package name */
    public int f654s;

    /* renamed from: t  reason: collision with root package name */
    public int f655t;

    /* renamed from: u  reason: collision with root package name */
    public int f656u;

    public d() {
        Paint paint = new Paint();
        this.f639b = paint;
        Paint paint2 = new Paint();
        this.f640c = paint2;
        Paint paint3 = new Paint();
        this.f641d = paint3;
        this.f642e = 0.0f;
        this.f643f = 0.0f;
        this.f644g = 0.0f;
        this.f645h = 5.0f;
        this.f651p = 1.0f;
        this.f655t = 255;
        paint.setStrokeCap(Paint.Cap.SQUARE);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setAntiAlias(true);
        paint3.setColor(0);
    }

    public final void a(int i) {
        this.f646j = i;
        this.f656u = this.i[i];
    }
}
