package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public class zzagi implements zzagj {
    private final long zza;
    private final zzagh zzb;

    public zzagi(long j5, long j6) {
        this.zza = j5;
        zzagk zzagkVar = j6 == 0 ? zzagk.zza : new zzagk(0L, j6);
        this.zzb = new zzagh(zzagkVar, zzagkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final long zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final zzagh zzc(long j5) {
        return this.zzb;
    }
}
