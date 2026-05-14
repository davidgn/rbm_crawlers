package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzqh {
    public static final zzqh zza = new zzqg().zzd();
    public final boolean zzb;
    public final boolean zzc;
    public final boolean zzd;

    public /* synthetic */ zzqh(zzqg zzqgVar, byte[] bArr) {
        this.zzb = zzqgVar.zze();
        this.zzc = zzqgVar.zzf();
        this.zzd = zzqgVar.zzg();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzqh.class == obj.getClass()) {
            zzqh zzqhVar = (zzqh) obj;
            if (this.zzb == zzqhVar.zzb && this.zzc == zzqhVar.zzc && this.zzd == zzqhVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        boolean z4 = this.zzb;
        boolean z5 = this.zzc;
        return (z5 ? 1 : 0) + (z5 ? 1 : 0) + ((z4 ? 1 : 0) << 2) + (this.zzd ? 1 : 0);
    }
}
