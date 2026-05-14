package com.google.android.gms.internal.p002firebaseauthapi;

import C.a;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaen  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzaen {
    public static zzyi zza(Exception exc, String str, String str2) {
        String message = exc.getMessage();
        StringBuilder s5 = a.s("Failed to parse ", str, " for string [", str2, "] with exception: ");
        s5.append(message);
        Log.e(str, s5.toString());
        return new zzyi(a.m("Failed to parse ", str, " for string [", str2, "]"), exc);
    }

    public static List zzb(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() != 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
        }
        return arrayList;
    }

    public static void zzc(JSONObject jSONObject) {
        jSONObject.put("clientType", "CLIENT_TYPE_ANDROID");
    }

    public static void zzd(JSONObject jSONObject, String str, String str2) {
        jSONObject.put(str, str2);
        jSONObject.put("recaptchaVersion", "RECAPTCHA_ENTERPRISE");
        jSONObject.put("clientType", "CLIENT_TYPE_ANDROID");
    }
}
