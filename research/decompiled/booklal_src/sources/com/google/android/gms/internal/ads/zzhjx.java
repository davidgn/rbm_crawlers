package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhjx {
    public static void zza(long[] jArr, long[] jArr2, int i) {
        for (int i4 = 0; i4 < 10; i4++) {
            int i5 = (int) jArr[i4];
            jArr[i4] = ((-i) & (((int) jArr2[i4]) ^ i5)) ^ i5;
        }
    }
}
