package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes.dex */
public final class zzdij implements zzilu {
    private final zzdhw zza;

    private zzdij(zzdhw zzdhwVar) {
        this.zza = zzdhwVar;
    }

    public static zzdij zza(zzdhw zzdhwVar) {
        return new zzdij(zzdhwVar);
    }

    public static Set zzc(zzdhw zzdhwVar) {
        return zzdhwVar.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        return this.zza.zzm();
    }
}
