package com.google.android.gms.internal.ads;

import N2.o;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes.dex */
final class zzewa {
    public final o zza;
    private final long zzb;
    private final Clock zzc;

    public zzewa(o oVar, long j5, Clock clock) {
        this.zza = oVar;
        this.zzc = clock;
        this.zzb = clock.elapsedRealtime() + j5;
    }

    public final boolean zza() {
        return this.zzb < this.zzc.elapsedRealtime();
    }
}
