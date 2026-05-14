package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzlk {
    public zzml zza;
    public int zzb;
    public boolean zzc;
    public int zzd;
    private boolean zze;

    public zzlk(zzml zzmlVar) {
        this.zza = zzmlVar;
    }

    public final void zza(int i) {
        this.zze = 1 == ((this.zze ? 1 : 0) | i);
        this.zzb += i;
    }

    public final void zzb(zzml zzmlVar) {
        this.zze |= this.zza != zzmlVar;
        this.zza = zzmlVar;
    }

    public final void zzc(int i) {
        if (this.zzc && this.zzd != 5) {
            zzgsj.zza(i == 5);
            return;
        }
        this.zze = true;
        this.zzc = true;
        this.zzd = i;
    }

    public final /* synthetic */ boolean zzd() {
        return this.zze;
    }
}
