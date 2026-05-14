package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbhi extends zzbhm {
    public zzbhi(int i, String str, Integer num, Integer num2) {
        super(1, str, num, num2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zza(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(zze())) ? Integer.valueOf(bundle.getInt("com.google.android.gms.ads.flag.".concat(zze()))) : (Integer) zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ void zzb(SharedPreferences.Editor editor, Object obj) {
        editor.putInt(zze(), ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zzc(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(zze(), ((Integer) zzf()).intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final /* bridge */ /* synthetic */ Object zzd(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(zze(), ((Integer) zzf()).intValue()));
    }
}
