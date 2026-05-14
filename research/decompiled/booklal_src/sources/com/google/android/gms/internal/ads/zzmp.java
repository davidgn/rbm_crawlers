package com.google.android.gms.internal.ads;

import android.os.Looper;
/* loaded from: classes.dex */
public final class zzmp {
    private final zzmo zza;
    private final zzmn zzb;
    private final zzbf zzc;
    private int zzd;
    private Object zze;
    private final Looper zzf;
    private final int zzg;
    private boolean zzh;
    private boolean zzi;

    public zzmp(zzmn zzmnVar, zzmo zzmoVar, zzbf zzbfVar, int i, zzdo zzdoVar, Looper looper) {
        this.zzb = zzmnVar;
        this.zza = zzmoVar;
        this.zzc = zzbfVar;
        this.zzf = looper;
        this.zzg = i;
    }

    public final zzmo zza() {
        return this.zza;
    }

    public final zzmp zzb(int i) {
        zzgsj.zzi(!this.zzh);
        this.zzd = i;
        return this;
    }

    public final int zzc() {
        return this.zzd;
    }

    public final zzmp zzd(Object obj) {
        zzgsj.zzi(!this.zzh);
        this.zze = obj;
        return this;
    }

    public final Object zze() {
        return this.zze;
    }

    public final Looper zzf() {
        return this.zzf;
    }

    public final zzmp zzg() {
        zzgsj.zzi(!this.zzh);
        this.zzh = true;
        this.zzb.zzk(this);
        return this;
    }

    public final synchronized boolean zzh() {
        return false;
    }

    public final synchronized void zzi(boolean z4) {
        this.zzi = z4 | this.zzi;
        notifyAll();
    }
}
