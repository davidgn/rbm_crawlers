package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes.dex */
public final class zzccx {
    private final Clock zza;
    private final zzccv zzb;

    public zzccx(Clock clock, zzccv zzccvVar) {
        this.zza = clock;
        this.zzb = zzccvVar;
    }

    public static zzccx zza(Context context) {
        return zzcdf.zzb(context).zza();
    }

    public final void zzb() {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }

    public final void zzc(com.google.android.gms.ads.internal.client.zzfr zzfrVar) {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }

    public final void zzd(int i, long j5) {
        this.zzb.zza(i, j5);
    }
}
