package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class zzeuj {
    private final AtomicBoolean zza = new AtomicBoolean(false);
    private zzeui zzb;

    public final void zza(boolean z4) {
        this.zza.set(true);
    }

    public final boolean zzb() {
        return this.zza.get();
    }

    public final void zzc(zzeui zzeuiVar) {
        this.zzb = zzeuiVar;
    }

    public final zzeui zzd() {
        return this.zzb;
    }
}
