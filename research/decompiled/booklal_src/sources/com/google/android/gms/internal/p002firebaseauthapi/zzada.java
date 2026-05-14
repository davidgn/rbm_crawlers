package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.util.Strings;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzada  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzada implements zzaar {
    private static final String zza = "zzada";
    private String zzb;

    public zzada() {
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaar
    public final /* bridge */ /* synthetic */ zzaar zza(String str) {
        try {
            this.zzb = Strings.emptyToNull(new JSONObject(str).optString("producerProjectNumber"));
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw zzaen.zza(e5, zza, str);
        }
    }

    public final String zzb() {
        return this.zzb;
    }

    public zzada(String str) {
        this.zzb = str;
    }
}
