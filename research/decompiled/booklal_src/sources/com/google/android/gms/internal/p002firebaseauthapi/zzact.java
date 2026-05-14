package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzact  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzact implements zzaaq {
    private final String zza;

    public zzact(String str) {
        this.zza = Preconditions.checkNotEmpty(str);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaaq
    public final String zza() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("idToken", this.zza);
        return jSONObject.toString();
    }
}
