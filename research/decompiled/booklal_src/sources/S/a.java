package S;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public int f2493a;

    /* renamed from: b  reason: collision with root package name */
    public int f2494b;

    /* renamed from: c  reason: collision with root package name */
    public float f2495c;

    /* renamed from: d  reason: collision with root package name */
    public float f2496d;

    /* renamed from: e  reason: collision with root package name */
    public long f2497e;

    /* renamed from: f  reason: collision with root package name */
    public long f2498f;

    /* renamed from: g  reason: collision with root package name */
    public long f2499g;

    /* renamed from: h  reason: collision with root package name */
    public float f2500h;
    public int i;

    public final float a(long j5) {
        long j6 = this.f2497e;
        if (j5 < j6) {
            return 0.0f;
        }
        long j7 = this.f2499g;
        if (j7 < 0 || j5 < j7) {
            return g.b(((float) (j5 - j6)) / this.f2493a, 0.0f, 1.0f) * 0.5f;
        }
        float f5 = this.f2500h;
        return (g.b(((float) (j5 - j7)) / this.i, 0.0f, 1.0f) * f5) + (1.0f - f5);
    }
}
