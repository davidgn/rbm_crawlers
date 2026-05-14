package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzdnu {
    private final JSONObject zza;
    private final zzduc zzb;
    private final com.google.android.gms.ads.internal.zzb zzc;
    private final zzccs zzd;

    public zzdnu(JSONObject jSONObject, zzduc zzducVar, com.google.android.gms.ads.internal.zzb zzbVar, zzccs zzccsVar) {
        this.zza = jSONObject;
        this.zzb = zzducVar;
        this.zzc = zzbVar;
        this.zzd = zzccsVar;
    }

    public final com.google.android.gms.ads.internal.zzb zza() {
        return this.zzc;
    }

    public final zzccs zzb() {
        return this.zzd;
    }

    public final JSONObject zzc() {
        return this.zza;
    }

    public final zzduc zzd() {
        return this.zzb;
    }
}
