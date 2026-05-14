package com.google.android.gms.internal.p002firebaseauthapi;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaco  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzaco implements zzaar {
    private static final String zza = "zzaco";
    private String zzb;
    private String zzc;

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaar
    public final /* bridge */ /* synthetic */ zzaar zza(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = jSONObject.optString("idToken", null);
            this.zzc = jSONObject.optString("refreshToken", null);
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw zzaen.zza(e5, zza, str);
        }
    }

    public final String zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzc;
    }
}
