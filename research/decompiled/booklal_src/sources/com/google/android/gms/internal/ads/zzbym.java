package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzbym {
    public final boolean zza;
    public final String zzb;
    public final boolean zzc;

    public zzbym(boolean z4, String str, boolean z5) {
        this.zza = z4;
        this.zzb = str;
        this.zzc = z5;
    }

    public static zzbym zza(JSONObject jSONObject) {
        return new zzbym(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", ""), jSONObject.optBoolean("skip_offline_notification_flow", false));
    }
}
