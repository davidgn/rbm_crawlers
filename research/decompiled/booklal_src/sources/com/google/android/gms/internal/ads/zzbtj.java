package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import org.json.JSONObject;
/* loaded from: classes.dex */
final /* synthetic */ class zzbtj implements zzbtf {
    static final /* synthetic */ zzbtj zza = new zzbtj();

    private /* synthetic */ zzbtj() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final /* synthetic */ Object zza(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
    }
}
