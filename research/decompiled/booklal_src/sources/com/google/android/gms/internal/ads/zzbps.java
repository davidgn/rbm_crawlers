package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.h5.OnH5AdsEventListener;
/* loaded from: classes.dex */
public final class zzbps extends zzbpu {
    private final OnH5AdsEventListener zza;

    public zzbps(OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzb(String str) {
        this.zza.onH5AdsEvent(str);
    }
}
