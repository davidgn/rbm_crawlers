package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzfba implements zzfbn {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final Long zze;

    public zzfba(String str, String str2, String str3, String str4, Long l5) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = l5;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzfks.zze(bundle, "gmp_app_id", this.zza);
        zzfks.zze(bundle, "fbs_aiid", this.zzb);
        zzfks.zze(bundle, "fbs_aeid", this.zzc);
        zzfks.zze(bundle, "apm_id_origin", this.zzd);
        Long l5 = this.zze;
        if (l5 != null) {
            bundle.putLong("sai_timeout", l5.longValue());
        }
    }
}
