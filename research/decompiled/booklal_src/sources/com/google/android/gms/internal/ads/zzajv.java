package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzajv extends zzaev implements zzake {
    private final long zza;
    private final int zzb;
    private final int zzc;
    private final long zzd;

    public zzajv(long j5, long j6, int i, int i4, boolean z4) {
        super(j5, j6, i, i4, false);
        this.zza = j6;
        this.zzb = i;
        this.zzc = i4;
        this.zzd = j5 == -1 ? -1L : j5;
    }

    @Override // com.google.android.gms.internal.ads.zzake
    public final long zze(long j5) {
        return zzd(j5);
    }

    @Override // com.google.android.gms.internal.ads.zzake
    public final long zzf() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzake
    public final int zzg() {
        return this.zzb;
    }

    public final zzajv zzh(long j5) {
        return new zzajv(j5, this.zza, this.zzb, this.zzc, false);
    }
}
