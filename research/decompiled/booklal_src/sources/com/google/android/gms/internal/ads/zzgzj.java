package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzgzj {
    public static long[] zza(long[]... jArr) {
        long j5 = 0;
        for (long[] jArr2 : jArr) {
            j5 += jArr2.length;
        }
        int i = (int) j5;
        zzgsj.zze(j5 == ((long) i), "the total number of elements (%s) in the arrays must fit in an int", j5);
        long[] jArr3 = new long[i];
        int i4 = 0;
        for (long[] jArr4 : jArr) {
            int length = jArr4.length;
            System.arraycopy(jArr4, 0, jArr3, i4, length);
            i4 += length;
        }
        return jArr3;
    }
}
