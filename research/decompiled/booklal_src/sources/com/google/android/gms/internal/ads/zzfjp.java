package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzfjp {
    public final String zza;
    public final String zzb;
    public final JSONObject zzc;
    public final JSONObject zzd;

    public zzfjp(JsonReader jsonReader) {
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
        this.zzd = zzd;
        this.zza = zzd.optString("ad_html", null);
        this.zzb = zzd.optString("ad_base_url", null);
        this.zzc = zzd.optJSONObject("ad_json");
    }
}
