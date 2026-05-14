package v0;

import java.util.Arrays;
/* renamed from: v0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0934b {

    /* renamed from: a  reason: collision with root package name */
    public final long[] f11107a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean[] f11108b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f11109c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11110d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11111e;

    public C0934b(int i) {
        long[] jArr = new long[i];
        this.f11107a = jArr;
        boolean[] zArr = new boolean[i];
        this.f11108b = zArr;
        this.f11109c = new int[i];
        Arrays.fill(jArr, 0L);
        Arrays.fill(zArr, false);
    }

    public final int[] a() {
        synchronized (this) {
            try {
                if (this.f11110d && !this.f11111e) {
                    int length = this.f11107a.length;
                    int i = 0;
                    while (true) {
                        int i4 = 1;
                        if (i >= length) {
                            this.f11111e = true;
                            this.f11110d = false;
                            return this.f11109c;
                        }
                        boolean z4 = this.f11107a[i] > 0;
                        boolean[] zArr = this.f11108b;
                        if (z4 != zArr[i]) {
                            int[] iArr = this.f11109c;
                            if (!z4) {
                                i4 = 2;
                            }
                            iArr[i] = i4;
                        } else {
                            this.f11109c[i] = 0;
                        }
                        zArr[i] = z4;
                        i++;
                    }
                }
                return null;
            } finally {
            }
        }
    }
}
