package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzdnw implements zzilu {
    private final zzdnu zza;

    private zzdnw(zzdnu zzdnuVar) {
        this.zza = zzdnuVar;
    }

    public static zzdnw zzc(zzdnu zzdnuVar) {
        return new zzdnw(zzdnuVar);
    }

    public static JSONObject zzd(zzdnu zzdnuVar) {
        JSONObject zzc = zzdnuVar.zzc();
        zzimc.zzb(zzc);
        return zzc;
    }

    public final JSONObject zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}
