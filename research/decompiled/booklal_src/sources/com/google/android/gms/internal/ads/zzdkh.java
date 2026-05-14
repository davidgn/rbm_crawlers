package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes.dex */
public final class zzdkh {
    private final List zza;
    private final zzfrf zzb;
    private final com.google.android.gms.ads.internal.util.client.zzv zzc;
    private boolean zzd;

    public zzdkh(zzfjk zzfjkVar, zzfrf zzfrfVar) {
        this.zza = zzfjkVar.zzp;
        this.zzb = zzfrfVar;
        this.zzc = zzfjkVar.zzax;
    }

    public final void zza() {
        if (this.zzd) {
            return;
        }
        this.zzb.zza(this.zza, this.zzc);
        this.zzd = true;
    }
}
