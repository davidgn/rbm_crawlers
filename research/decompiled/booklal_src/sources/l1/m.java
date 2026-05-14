package l1;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    public static final m f8711b = new m(2);

    /* renamed from: c  reason: collision with root package name */
    public static final m f8712c = new m(0);

    /* renamed from: d  reason: collision with root package name */
    public static final m f8713d;

    /* renamed from: e  reason: collision with root package name */
    public static final m f8714e;

    /* renamed from: f  reason: collision with root package name */
    public static final m f8715f;

    /* renamed from: g  reason: collision with root package name */
    public static final b1.g f8716g;

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f8717h;

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f8718a;

    static {
        m mVar = new m(1);
        f8713d = mVar;
        f8714e = new m(3);
        f8715f = mVar;
        f8716g = b1.g.a(mVar, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f8717h = true;
    }

    public /* synthetic */ m(int i) {
        this.f8718a = i;
    }

    public final int a(int i, int i4, int i5, int i6) {
        switch (this.f8718a) {
            case 0:
                if (b(i, i4, i5, i6) == 1.0f) {
                    return 2;
                }
                return f8711b.a(i, i4, i5, i6);
            case 1:
                return 2;
            case 2:
                return f8717h ? 2 : 1;
            default:
                return 2;
        }
    }

    public final float b(int i, int i4, int i5, int i6) {
        switch (this.f8718a) {
            case 0:
                return Math.min(1.0f, f8711b.b(i, i4, i5, i6));
            case 1:
                return Math.max(i5 / i, i6 / i4);
            case 2:
                if (f8717h) {
                    return Math.min(i5 / i, i6 / i4);
                }
                int max = Math.max(i4 / i6, i / i5);
                return max != 0 ? 1.0f / Integer.highestOneBit(max) : 1.0f;
            default:
                return 1.0f;
        }
    }
}
