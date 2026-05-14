package x;

import java.util.Arrays;
/* renamed from: x.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0964g {

    /* renamed from: a  reason: collision with root package name */
    public int[] f11346a;

    /* renamed from: b  reason: collision with root package name */
    public int[] f11347b;

    /* renamed from: c  reason: collision with root package name */
    public int f11348c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f11349d;

    /* renamed from: e  reason: collision with root package name */
    public float[] f11350e;

    /* renamed from: f  reason: collision with root package name */
    public int f11351f;

    /* renamed from: g  reason: collision with root package name */
    public int[] f11352g;

    /* renamed from: h  reason: collision with root package name */
    public String[] f11353h;
    public int i;

    /* renamed from: j  reason: collision with root package name */
    public int[] f11354j;

    /* renamed from: k  reason: collision with root package name */
    public boolean[] f11355k;

    /* renamed from: l  reason: collision with root package name */
    public int f11356l;

    public final void a(int i, float f5) {
        int i4 = this.f11351f;
        int[] iArr = this.f11349d;
        if (i4 >= iArr.length) {
            this.f11349d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f11350e;
            this.f11350e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f11349d;
        int i5 = this.f11351f;
        iArr2[i5] = i;
        float[] fArr2 = this.f11350e;
        this.f11351f = i5 + 1;
        fArr2[i5] = f5;
    }

    public final void b(int i, int i4) {
        int i5 = this.f11348c;
        int[] iArr = this.f11346a;
        if (i5 >= iArr.length) {
            this.f11346a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f11347b;
            this.f11347b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f11346a;
        int i6 = this.f11348c;
        iArr3[i6] = i;
        int[] iArr4 = this.f11347b;
        this.f11348c = i6 + 1;
        iArr4[i6] = i4;
    }

    public final void c(int i, String str) {
        int i4 = this.i;
        int[] iArr = this.f11352g;
        if (i4 >= iArr.length) {
            this.f11352g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f11353h;
            this.f11353h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f11352g;
        int i5 = this.i;
        iArr2[i5] = i;
        String[] strArr2 = this.f11353h;
        this.i = i5 + 1;
        strArr2[i5] = str;
    }

    public final void d(int i, boolean z4) {
        int i4 = this.f11356l;
        int[] iArr = this.f11354j;
        if (i4 >= iArr.length) {
            this.f11354j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f11355k;
            this.f11355k = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f11354j;
        int i5 = this.f11356l;
        iArr2[i5] = i;
        boolean[] zArr2 = this.f11355k;
        this.f11356l = i5 + 1;
        zArr2[i5] = z4;
    }
}
