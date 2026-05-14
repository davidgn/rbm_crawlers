package com.google.android.gms.internal.p002firebaseauthapi;

import C.a;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.messaging.Constants;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzach  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzach implements zzaar {
    private static final String zza = "com.google.android.gms.internal.firebase-auth-api.zzach";
    private String zzb;

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaar
    public final /* bridge */ /* synthetic */ zzaar zza(String str) {
        zzb(str);
        return this;
    }

    public final zzach zzb(String str) {
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(str).getString(Constants.IPC_BUNDLE_KEY_SEND_ERROR));
            jSONObject.getInt("code");
            this.zzb = jSONObject.getString("message");
            return this;
        } catch (NullPointerException | JSONException e5) {
            String str2 = zza;
            String message = e5.getMessage();
            Log.e(str2, "Failed to parse error for string [" + str + "] with exception: " + message);
            throw new zzyi(a.l("Failed to parse error for string [", str, "]"), e5);
        }
    }

    public final String zzc() {
        return this.zzb;
    }

    public final boolean zzd() {
        return !TextUtils.isEmpty(this.zzb);
    }
}
