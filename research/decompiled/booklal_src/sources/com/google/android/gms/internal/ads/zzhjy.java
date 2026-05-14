package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
class zzhjy {
    final long[] zza;
    final long[] zzb;
    final long[] zzc;

    public zzhjy(long[] jArr, long[] jArr2, long[] jArr3) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = jArr3;
    }

    public void zza(long[] jArr, long[] jArr2) {
        System.arraycopy(jArr2, 0, jArr, 0, 10);
    }

    public final void zzb(zzhjy zzhjyVar, int i) {
        zzhjx.zza(this.zza, zzhjyVar.zza, i);
        zzhjx.zza(this.zzb, zzhjyVar.zzb, i);
        zzhjx.zza(this.zzc, zzhjyVar.zzc, i);
    }

    public zzhjy() {
        this(new long[10], new long[10], new long[10]);
    }

    public zzhjy(zzhjy zzhjyVar) {
        this.zza = Arrays.copyOf(zzhjyVar.zza, 10);
        this.zzb = Arrays.copyOf(zzhjyVar.zzb, 10);
        this.zzc = Arrays.copyOf(zzhjyVar.zzc, 10);
    }
}
