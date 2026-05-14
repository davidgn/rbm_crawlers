package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes.dex */
public final class zzeor {
    private zzeoi zza;

    public zzeor() {
    }

    public static zzeor zza(zzeoi zzeoiVar) {
        return new zzeor(zzeoiVar);
    }

    public final zzeoi zzb(Clock clock, zzeok zzeokVar, zzelc zzelcVar, zzfrf zzfrfVar) {
        zzeoi zzeoiVar = this.zza;
        return zzeoiVar != null ? zzeoiVar : new zzeoi(clock, zzeokVar, zzelcVar, zzfrfVar);
    }

    private zzeor(zzeoi zzeoiVar) {
        this.zza = zzeoiVar;
    }
}
