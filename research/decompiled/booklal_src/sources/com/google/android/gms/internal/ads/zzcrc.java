package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes.dex */
public final class zzcrc implements zzcqy {
    private final com.google.android.gms.ads.internal.util.zzg zza;

    public zzcrc(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqy
    public final void zza(Map map) {
        this.zza.zzd(Boolean.parseBoolean((String) map.get("content_vertical_opted_out")));
    }
}
