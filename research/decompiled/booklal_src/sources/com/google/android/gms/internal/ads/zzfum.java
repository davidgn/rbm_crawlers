package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes.dex */
public final class zzfum {
    private final zzfwa zza;
    private final String zzb;
    private final zzfts zzc;
    private final String zzd = "Ad overlay";

    public zzfum(View view, zzfts zzftsVar, String str) {
        this.zza = new zzfwa(view);
        this.zzb = view.getClass().getCanonicalName();
        this.zzc = zzftsVar;
    }

    public final zzfwa zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final zzfts zzc() {
        return this.zzc;
    }

    public final String zzd() {
        return this.zzd;
    }
}
