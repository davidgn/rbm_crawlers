package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzilu;
import com.google.android.gms.internal.ads.zzimc;
/* loaded from: classes.dex */
public final class zzav implements zzilu {
    private final zzat zza;

    private zzav(zzat zzatVar) {
        this.zza = zzatVar;
    }

    public static zzav zza(zzat zzatVar) {
        return new zzav(zzatVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        String zzb = this.zza.zzb();
        zzimc.zzb(zzb);
        return zzb;
    }
}
