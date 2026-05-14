package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzasc {
    private int zza = 2500;
    private int zzb;

    public final int zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final void zzc(zzasx zzasxVar) {
        int i = this.zzb + 1;
        this.zzb = i;
        int i4 = this.zza;
        this.zza = i4 + i4;
        if (i > 1) {
            throw zzasxVar;
        }
    }
}
