package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Random;
/* loaded from: classes.dex */
public final class zzyo {
    private final Random zza;
    private final int[] zzb;
    private final int[] zzc;

    public zzyo(int i) {
        this(0, new Random());
    }

    public final int zza() {
        return this.zzb.length;
    }

    public final int zzb(int i) {
        int i4 = this.zzc[i] + 1;
        int[] iArr = this.zzb;
        if (i4 < iArr.length) {
            return iArr[i4];
        }
        return -1;
    }

    public final int zzc(int i) {
        int i4 = this.zzc[i] - 1;
        if (i4 >= 0) {
            return this.zzb[i4];
        }
        return -1;
    }

    public final int zzd() {
        int[] iArr = this.zzb;
        int length = iArr.length;
        if (length > 0) {
            return iArr[length - 1];
        }
        return -1;
    }

    public final int zze() {
        int[] iArr = this.zzb;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    public final zzyo zzf(int i, int i4) {
        int[] iArr = new int[i4];
        int[] iArr2 = new int[i4];
        int i5 = 0;
        while (i5 < i4) {
            Random random = this.zza;
            iArr[i5] = random.nextInt(this.zzb.length + 1);
            int i6 = i5 + 1;
            int nextInt = random.nextInt(i6);
            iArr2[i5] = iArr2[nextInt];
            iArr2[nextInt] = i5;
            i5 = i6;
        }
        Arrays.sort(iArr);
        int[] iArr3 = this.zzb;
        int[] iArr4 = new int[iArr3.length + i4];
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < iArr3.length + i4; i9++) {
            if (i7 >= i4 || i8 != iArr[i7]) {
                int i10 = i8 + 1;
                int i11 = iArr3[i8];
                iArr4[i9] = i11;
                if (i11 >= 0) {
                    iArr4[i9] = i11 + i4;
                }
                i8 = i10;
            } else {
                iArr4[i9] = iArr2[i7];
                i7++;
            }
        }
        return new zzyo(iArr4, new Random(this.zza.nextLong()));
    }

    public final zzyo zzg() {
        return new zzyo(0, new Random(this.zza.nextLong()));
    }

    private zzyo(int i, Random random) {
        this(new int[0], random);
    }

    private zzyo(int[] iArr, Random random) {
        this.zzb = iArr;
        this.zza = random;
        this.zzc = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this.zzc[iArr[i]] = i;
        }
    }
}
