package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
public final class zzng {
    public final long zza;
    public final zzbf zzb;
    public final int zzc;
    public final zzwt zzd;
    public final long zze;
    public final zzbf zzf;
    public final int zzg;
    public final zzwt zzh;
    public final long zzi;
    public final long zzj;

    public zzng(long j5, zzbf zzbfVar, int i, zzwt zzwtVar, long j6, zzbf zzbfVar2, int i4, zzwt zzwtVar2, long j7, long j8) {
        this.zza = j5;
        this.zzb = zzbfVar;
        this.zzc = i;
        this.zzd = zzwtVar;
        this.zze = j6;
        this.zzf = zzbfVar2;
        this.zzg = i4;
        this.zzh = zzwtVar2;
        this.zzi = j7;
        this.zzj = j8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzng.class == obj.getClass()) {
            zzng zzngVar = (zzng) obj;
            if (this.zza == zzngVar.zza && this.zzc == zzngVar.zzc && this.zze == zzngVar.zze && this.zzg == zzngVar.zzg && this.zzi == zzngVar.zzi && this.zzj == zzngVar.zzj && Objects.equals(this.zzb, zzngVar.zzb) && Objects.equals(this.zzd, zzngVar.zzd) && Objects.equals(this.zzf, zzngVar.zzf) && Objects.equals(this.zzh, zzngVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), this.zzb, Integer.valueOf(this.zzc), this.zzd, Long.valueOf(this.zze), this.zzf, Integer.valueOf(this.zzg), this.zzh, Long.valueOf(this.zzi), Long.valueOf(this.zzj));
    }
}
