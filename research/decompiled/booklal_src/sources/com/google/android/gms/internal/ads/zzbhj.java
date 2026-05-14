package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbhj extends zzbhm {
    public zzbhj(int i, String str, Long l5, Long l6) {
        super(1, str, l5, l6, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zza(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zze())) ? Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(zze()))) : (Long) zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ void zzb(SharedPreferences.Editor editor, Object obj) {
        editor.putLong(zze(), ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zzc(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(zze(), ((Long) zzf()).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zzd(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(zze(), ((Long) zzf()).longValue()));
    }
}
