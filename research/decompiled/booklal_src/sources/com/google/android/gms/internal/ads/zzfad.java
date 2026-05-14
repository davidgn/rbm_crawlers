package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzfad implements zzfbn {
    private final String zza;
    private final Integer zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;

    public zzfad(String str, Integer num, String str2, String str3, String str4, String str5) {
        this.zza = str;
        this.zzb = num;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = str5;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzfks.zze(bundle, "pn", this.zza);
        zzfks.zzh(bundle, "vc", this.zzb);
        zzfks.zze(bundle, "vnm", this.zzc);
        zzfks.zze(bundle, "dl", this.zzd);
        zzfks.zze(bundle, "ins_pn", this.zze);
        zzfks.zze(bundle, "ini_pn", this.zzf);
    }
}
