package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zznb {
    public static final zznb zza;
    public static final zznb zzb;
    public static final zznb zzc;
    public final long zzd;
    public final long zze;

    static {
        zznb zznbVar = new zznb(0L, 0L);
        zza = zznbVar;
        new zznb(Long.MAX_VALUE, Long.MAX_VALUE);
        zzb = new zznb(Long.MAX_VALUE, 0L);
        new zznb(0L, Long.MAX_VALUE);
        zzc = zznbVar;
    }

    public zznb(long j5, long j6) {
        zzgsj.zza(j5 >= 0);
        zzgsj.zza(j6 >= 0);
        this.zzd = j5;
        this.zze = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zznb.class == obj.getClass()) {
            zznb zznbVar = (zznb) obj;
            if (this.zzd == zznbVar.zzd && this.zze == zznbVar.zze) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zzd) * 31) + ((int) this.zze);
    }
}
