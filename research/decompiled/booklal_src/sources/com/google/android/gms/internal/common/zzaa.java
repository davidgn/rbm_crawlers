package com.google.android.gms.internal.common;

import java.util.Arrays;
/* loaded from: classes.dex */
class zzaa extends zzab {
    Object[] zza = new Object[4];
    int zzb = 0;
    boolean zzc;

    public zzaa(int i) {
    }

    public final zzaa zza(Object obj) {
        int i;
        obj.getClass();
        int length = this.zza.length;
        int i4 = this.zzb;
        int i5 = i4 + 1;
        if (i5 >= 0) {
            if (i5 <= length) {
                i = length;
            } else {
                i = (length >> 1) + length + 1;
                if (i < i5) {
                    int highestOneBit = Integer.highestOneBit(i4);
                    i = highestOneBit + highestOneBit;
                }
                if (i < 0) {
                    i = Integer.MAX_VALUE;
                }
            }
            if (i > length || this.zzc) {
                this.zza = Arrays.copyOf(this.zza, i);
                this.zzc = false;
            }
            Object[] objArr = this.zza;
            int i6 = this.zzb;
            this.zzb = i6 + 1;
            objArr[i6] = obj;
            return this;
        }
        throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
    }
}
