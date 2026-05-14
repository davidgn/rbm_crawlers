package com.google.android.gms.internal.p002firebaseauthapi;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadh  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzadh {
    private String zza;
    private String zzb;
    private String zzc;
    private Long zzd;
    private Long zze;

    public static zzadh zza(String str) {
        try {
            zzadh zzadhVar = new zzadh();
            JSONObject jSONObject = new JSONObject(str);
            zzadhVar.zza = jSONObject.optString("iss");
            zzadhVar.zzb = jSONObject.optString("aud");
            zzadhVar.zzc = jSONObject.optString("sub");
            zzadhVar.zzd = Long.valueOf(jSONObject.optLong("iat"));
            zzadhVar.zze = Long.valueOf(jSONObject.optLong("exp"));
            jSONObject.optBoolean("is_anonymous");
            return zzadhVar;
        } catch (JSONException e5) {
            if (Log.isLoggable("JwtToken", 3)) {
                Log.d("JwtToken", "Failed to read JwtToken from JSONObject. ".concat(e5.toString()));
            }
            throw new UnsupportedEncodingException("Failed to read JwtToken from JSONObject. ".concat(e5.toString()));
        }
    }

    public final Long zzb() {
        return this.zze;
    }

    public final Long zzc() {
        return this.zzd;
    }
}
