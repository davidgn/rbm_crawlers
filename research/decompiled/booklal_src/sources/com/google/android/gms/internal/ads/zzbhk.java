package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbhk extends zzbhm {
    public zzbhk(int i, String str, Float f5, Float f6) {
        super(1, str, f5, f6, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zza(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zze())) ? Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(zze()))) : (Float) zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ void zzb(SharedPreferences.Editor editor, Object obj) {
        editor.putFloat(zze(), ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zzc(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(zze(), ((Float) zzf()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zzd(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(zze(), ((Float) zzf()).floatValue()));
    }
}
