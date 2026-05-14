package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadb  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzadb implements zzaar {
    private static final String zza = "zzadb";
    private List zzb;

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaar
    public final /* bridge */ /* synthetic */ zzaar zza(String str) {
        zzb(str);
        return this;
    }

    public final zzadb zzb(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("authorizedDomains");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    this.zzb.add(optJSONArray.getString(i));
                }
            }
            return this;
        } catch (JSONException e5) {
            throw zzaen.zza(e5, zza, str);
        }
    }

    public final List zzc() {
        return this.zzb;
    }
}
