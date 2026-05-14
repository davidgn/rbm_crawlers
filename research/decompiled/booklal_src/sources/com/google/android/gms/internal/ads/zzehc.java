package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
final /* synthetic */ class zzehc implements zzfnp {
    static final /* synthetic */ zzehc zza = new zzehc();

    private /* synthetic */ zzehc() {
    }

    @Override // com.google.android.gms.internal.ads.zzfnp
    public final /* synthetic */ Object zza(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        com.google.android.gms.ads.internal.util.zze.zza("Ad request signals:");
        com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
        return jSONObject;
    }
}
