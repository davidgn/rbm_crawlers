package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* loaded from: classes.dex */
public final class zzflh implements zzilu {
    private zzflh(zzflg zzflgVar) {
    }

    public static zzflh zza(zzflg zzflgVar) {
        return new zzflh(zzflgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final /* synthetic */ Object zzb() {
        Clock defaultClock = DefaultClock.getInstance();
        zzimc.zzb(defaultClock);
        return defaultClock;
    }
}
