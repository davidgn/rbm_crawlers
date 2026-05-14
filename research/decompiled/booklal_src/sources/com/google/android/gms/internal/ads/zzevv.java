package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzevv implements zzfbn {
    private final double zza;
    private final boolean zzb;

    public zzevv(double d2, boolean z4) {
        this.zza = d2;
        this.zzb = z4;
    }

    @Override // com.google.android.gms.internal.ads.zzfbn
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle zza = zzfks.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzfks.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzb);
        zza2.putDouble("battery_level", this.zza);
    }
}
