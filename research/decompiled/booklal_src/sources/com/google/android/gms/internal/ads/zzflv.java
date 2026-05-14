package com.google.android.gms.internal.ads;

import e1.i;
/* loaded from: classes.dex */
final class zzflv {
    private final zzflu zza = new zzflu();
    private int zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;

    public final void zza() {
        this.zzd++;
    }

    public final void zzb() {
        this.zze++;
    }

    public final void zzc() {
        this.zzb++;
        this.zza.zza = true;
    }

    public final void zzd() {
        this.zzc++;
        this.zza.zzb = true;
    }

    public final void zze() {
        this.zzf++;
    }

    public final zzflu zzf() {
        zzflu zzfluVar = this.zza;
        zzflu clone = zzfluVar.clone();
        zzfluVar.zza = false;
        zzfluVar.zzb = false;
        return clone;
    }

    public final String zzg() {
        StringBuilder sb = new StringBuilder("\n\tPool does not exist: ");
        sb.append(this.zzd);
        sb.append("\n\tNew pools created: ");
        sb.append(this.zzb);
        sb.append("\n\tPools removed: ");
        sb.append(this.zzc);
        sb.append("\n\tEntries added: ");
        sb.append(this.zzf);
        sb.append("\n\tNo entries retrieved: ");
        return i.b(this.zze, "\n", sb);
    }
}
