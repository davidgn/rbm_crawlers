package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public abstract class zzgvh {
    public static int zze(int i, int i4) {
        if (i4 >= 0) {
            if (i4 <= i) {
                return i;
            }
            int i5 = i + (i >> 1) + 1;
            if (i5 < i4) {
                int highestOneBit = Integer.highestOneBit(i4 - 1);
                i5 = highestOneBit + highestOneBit;
            }
            if (i5 < 0) {
                return Integer.MAX_VALUE;
            }
            return i5;
        }
        throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
    }

    public abstract zzgvh zzd(Object obj);
}
