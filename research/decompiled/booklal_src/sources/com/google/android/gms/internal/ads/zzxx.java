package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzxx {
    public final int zza;
    public final boolean zzb;

    public zzxx(int i, boolean z4) {
        this.zza = i;
        this.zzb = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzxx.class == obj.getClass()) {
            zzxx zzxxVar = (zzxx) obj;
            if (this.zza == zzxxVar.zza && this.zzb == zzxxVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza * 31) + (this.zzb ? 1 : 0);
    }
}
