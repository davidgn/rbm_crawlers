package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.util.Strings;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadp  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzadp implements zzaar {
    private static final String zza = "zzadp";
    private String zzb;

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaar
    public final /* bridge */ /* synthetic */ zzaar zza(String str) {
        try {
            this.zzb = Strings.emptyToNull(new JSONObject(str).optString("sessionInfo", null));
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw zzaen.zza(e5, zza, str);
        }
    }

    public final String zzb() {
        return this.zzb;
    }
}
