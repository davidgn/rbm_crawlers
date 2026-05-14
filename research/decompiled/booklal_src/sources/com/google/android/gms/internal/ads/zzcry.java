package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes.dex */
public final class zzcry implements zzcqy {
    private final com.google.android.gms.ads.internal.util.zzg zza;

    public zzcry(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqy
    public final void zza(Map map) {
        int intValue;
        String str = (String) map.get("total_inflight_ad_limit");
        if (str == null || (intValue = Float.valueOf(str).intValue()) <= 0) {
            return;
        }
        this.zza.zzS(intValue);
    }
}
