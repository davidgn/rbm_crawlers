package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
final class zzlw {
    public final zzwt zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final boolean zzj;

    public zzlw(zzwt zzwtVar, long j5, long j6, long j7, long j8, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        boolean z9 = true;
        zzgsj.zza(!z8 || z6);
        if (z7 && !z6) {
            z9 = false;
        }
        zzgsj.zza(z9);
        this.zza = zzwtVar;
        this.zzb = j5;
        this.zzc = j6;
        this.zzd = j7;
        this.zze = j8;
        this.zzf = false;
        this.zzg = false;
        this.zzh = z6;
        this.zzi = z7;
        this.zzj = z8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzlw.class == obj.getClass()) {
            zzlw zzlwVar = (zzlw) obj;
            if (this.zzb == zzlwVar.zzb && this.zzc == zzlwVar.zzc && this.zzd == zzlwVar.zzd && this.zze == zzlwVar.zze && this.zzh == zzlwVar.zzh && this.zzi == zzlwVar.zzi && this.zzj == zzlwVar.zzj && Objects.equals(this.zza, zzlwVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.zze;
        long j6 = this.zzd;
        return ((((((((((((((this.zza.hashCode() + 527) * 31) + ((int) this.zzb)) * 31) + ((int) this.zzc)) * 31) + ((int) j6)) * 31) + ((int) j5)) * 29791) + (this.zzh ? 1 : 0)) * 31) + (this.zzi ? 1 : 0)) * 31) + (this.zzj ? 1 : 0);
    }

    public final zzlw zza(long j5) {
        return j5 == this.zzb ? this : new zzlw(this.zza, j5, this.zzc, this.zzd, this.zze, false, false, this.zzh, this.zzi, this.zzj);
    }

    public final zzlw zzb(long j5) {
        return j5 == this.zzc ? this : new zzlw(this.zza, this.zzb, j5, this.zzd, this.zze, false, false, this.zzh, this.zzi, this.zzj);
    }
}
