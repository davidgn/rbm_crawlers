package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacf  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzacf {
    private final String zza;

    public zzacf(String str) {
        this.zza = Preconditions.checkNotEmpty(str);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appSignatureHash", this.zza);
        return jSONObject;
    }
}
