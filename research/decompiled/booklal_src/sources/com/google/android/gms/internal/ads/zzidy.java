package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public class zzidy {
    protected volatile zzieo zza;
    private volatile zzibz zzb;
    private volatile boolean zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzidy) {
            zzidy zzidyVar = (zzidy) obj;
            zzieo zzieoVar = this.zza;
            zzieo zzieoVar2 = zzidyVar.zza;
            if (zzieoVar == null && zzieoVar2 == null) {
                return zzc().equals(zzidyVar.zzc());
            }
            if (zzieoVar == null || zzieoVar2 == null) {
                if (zzieoVar != null) {
                    zzidyVar.zzd(zzieoVar.zzbw());
                    return zzieoVar.equals(zzidyVar.zza);
                }
                zzd(zzieoVar2.zzbw());
                return this.zza.equals(zzieoVar2);
            }
            return zzieoVar.equals(zzieoVar2);
        }
        return false;
    }

    public int hashCode() {
        return 1;
    }

    public final zzieo zza(zzieo zzieoVar) {
        zzieo zzieoVar2 = this.zza;
        this.zzb = null;
        this.zza = zzieoVar;
        return zzieoVar2;
    }

    public final int zzb() {
        if (this.zzb != null) {
            return this.zzb.zzb();
        }
        if (this.zza != null) {
            return this.zza.zzbr();
        }
        return 0;
    }

    public final zzibz zzc() {
        if (this.zzb != null) {
            return this.zzb;
        }
        synchronized (this) {
            try {
                if (this.zzb != null) {
                    return this.zzb;
                }
                if (this.zza == null) {
                    this.zzb = zzibz.zza;
                } else {
                    this.zzb = this.zza.zzaM();
                }
                return this.zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(zzieo zzieoVar) {
        if (this.zza != null) {
            return;
        }
        synchronized (this) {
            if (this.zza != null) {
                return;
            }
            try {
                this.zza = zzieoVar;
                this.zzb = zzibz.zza;
            } catch (zzids unused) {
                this.zzc = true;
                this.zza = zzieoVar;
                this.zzb = zzibz.zza;
            }
        }
    }
}
