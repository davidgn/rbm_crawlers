package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzzb {
    public final long zza;
    public final long zzb;

    public zzzb(long j5, long j6) {
        this.zza = j5;
        this.zzb = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzzb) {
            zzzb zzzbVar = (zzzb) obj;
            return this.zza == zzzbVar.zza && this.zzb == zzzbVar.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zza) * 31) + ((int) this.zzb);
    }
}
