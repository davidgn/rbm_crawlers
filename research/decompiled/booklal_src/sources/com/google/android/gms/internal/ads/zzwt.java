package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzwt {
    public final Object zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final int zze;

    private zzwt(Object obj, int i, int i4, long j5, int i5) {
        this.zza = obj;
        this.zzb = i;
        this.zzc = i4;
        this.zzd = j5;
        this.zze = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzwt) {
            zzwt zzwtVar = (zzwt) obj;
            return this.zza.equals(zzwtVar.zza) && this.zzb == zzwtVar.zzb && this.zzc == zzwtVar.zzc && this.zzd == zzwtVar.zzd && this.zze == zzwtVar.zze;
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.zza.hashCode() + 527) * 31) + this.zzb) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + this.zze;
    }

    public final zzwt zza(Object obj) {
        return this.zza.equals(obj) ? this : new zzwt(obj, this.zzb, this.zzc, this.zzd, this.zze);
    }

    public final boolean zzb() {
        return this.zzb != -1;
    }

    public zzwt(Object obj, int i, int i4, long j5) {
        this(obj, i, i4, j5, -1);
    }

    public zzwt(Object obj, long j5) {
        this(obj, -1, -1, j5, -1);
    }

    public zzwt(Object obj, long j5, int i) {
        this(obj, -1, -1, j5, i);
    }
}
