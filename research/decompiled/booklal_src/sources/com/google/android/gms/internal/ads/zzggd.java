package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.DisplayMetrics;
/* loaded from: classes.dex */
public final class zzggd implements zzilu {
    private final zzimd zza;

    private zzggd(zzimd zzimdVar) {
        this.zza = zzimdVar;
    }

    public static zzggd zza(zzimd zzimdVar) {
        return new zzggd(zzimdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* bridge */ /* synthetic */ Object zzb() {
        DisplayMetrics displayMetrics = ((Context) this.zza.zzb()).getResources().getDisplayMetrics();
        zzimc.zzb(displayMetrics);
        return displayMetrics;
    }
}
