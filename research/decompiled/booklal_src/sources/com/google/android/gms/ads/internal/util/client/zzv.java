package com.google.android.gms.ads.internal.util.client;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzv {
    private final zzx zza;

    public zzv() {
        this.zza = new zzn(1, 0, 1.0d, false);
    }

    public static zzv zzb(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("ping_strategy");
        return new zzv(optJSONObject == null ? new zzn(1, 0, 1.0d, false) : new zzn(optJSONObject.optInt("max_attempts", 1), optJSONObject.optInt("initial_backoff_ms", 0), optJSONObject.optDouble("backoff_multiplier", 1.0d), optJSONObject.optBoolean("buffer_after_max_attempts", false)));
    }

    public final zzx zza() {
        return this.zza;
    }

    private zzv(zzx zzxVar) {
        this.zza = zzxVar;
    }
}
