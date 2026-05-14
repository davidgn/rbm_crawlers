package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzbfd {
    final long zza;
    final String zzb;
    final int zzc;

    public zzbfd(long j5, String str, int i) {
        this.zza = j5;
        this.zzb = str;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbfd) {
            zzbfd zzbfdVar = (zzbfd) obj;
            return zzbfdVar.zza == this.zza && zzbfdVar.zzc == this.zzc;
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.zza;
    }
}
