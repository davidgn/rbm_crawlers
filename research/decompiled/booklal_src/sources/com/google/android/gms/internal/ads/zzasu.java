package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzasu {
    public final Object zza;
    public final zzarx zzb;
    public final zzasx zzc;
    public boolean zzd;

    private zzasu(zzasx zzasxVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzasxVar;
    }

    public static zzasu zza(Object obj, zzarx zzarxVar) {
        return new zzasu(obj, zzarxVar);
    }

    public static zzasu zzb(zzasx zzasxVar) {
        return new zzasu(zzasxVar);
    }

    public final boolean zzc() {
        return this.zzc == null;
    }

    private zzasu(Object obj, zzarx zzarxVar) {
        this.zzd = false;
        this.zza = obj;
        this.zzb = zzarxVar;
        this.zzc = null;
    }
}
