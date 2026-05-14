package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class zzfcc implements zzfbn {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final boolean zze;
    public final int zzf;

    public zzfcc(String str, int i, int i4, int i5, boolean z4, int i6) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = z4;
        this.zzf = i6;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        String str = this.zza;
        Bundle bundle = (Bundle) obj;
        zzfks.zzb(bundle, "carrier", str, !TextUtils.isEmpty(str));
        int i = this.zzb;
        zzfks.zzc(bundle, "cnt", i, i != -2);
        bundle.putInt("gnt", this.zzc);
        bundle.putInt("pt", this.zzd);
        Bundle zza = zzfks.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzfks.zza(zza, "network");
        zza.putBundle("network", zza2);
        zza2.putInt("active_network_state", this.zzf);
        zza2.putBoolean("active_network_metered", this.zze);
    }
}
