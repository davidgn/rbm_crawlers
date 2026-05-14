package com.google.android.gms.internal.ads;

import com.google.firebase.database.core.ServerValues;
import org.json.JSONObject;
/* loaded from: classes.dex */
final class zzcrw implements zzcqz {
    private final zzccx zza;

    public zzcrw(zzccx zzccxVar) {
        this.zza = zzccxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzccx] */
    /* JADX WARN: Type inference failed for: r4v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // com.google.android.gms.internal.ads.zzcqz
    public final void zza(JSONObject jSONObject) {
        this.zza.zzd(jSONObject.optBoolean("npa_reset") ? -1 : jSONObject.optBoolean("npa"), jSONObject.optLong(ServerValues.NAME_OP_TIMESTAMP));
    }
}
