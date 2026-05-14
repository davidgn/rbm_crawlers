package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes.dex */
public final class zzfsp {
    private final Object zza;
    private final long zzb;
    private final Clock zzc;
    private final long zzd;
    private final double zze;
    private final int zzf;

    public zzfsp(Object obj, Clock clock, double d2, int i) {
        if (clock == null) {
            throw new IllegalArgumentException("Clock cannot be null.");
        }
        this.zza = obj;
        this.zzc = clock;
        this.zzb = clock.currentTimeMillis();
        this.zzd = Math.min(Math.max(((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbhv.zzab)).longValue() * 1000, 10000L), 21600000L);
        this.zze = d2;
        this.zzf = i;
    }

    public final Object zza() {
        return this.zza;
    }

    public final boolean zzb() {
        return this.zzc.currentTimeMillis() >= this.zzb + this.zzd;
    }

    public final long zzc() {
        return this.zzd - (this.zzc.currentTimeMillis() - this.zzb);
    }

    public final long zzd() {
        return this.zzb;
    }

    public final double zze() {
        return this.zze;
    }

    public final int zzf() {
        return this.zzf;
    }
}
