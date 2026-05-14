package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzfcv implements zzfbn {
    private final String zza;

    public zzfcv(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        try {
            ((JSONObject) obj).put("ms", this.zza);
        } catch (JSONException e5) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed putting Ad ID.", e5);
        }
    }
}
