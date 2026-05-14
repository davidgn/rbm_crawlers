package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes.dex */
public final class zzdbg {
    private final Context zza;
    private final zzfkd zzb;
    private final Bundle zzc;
    private final zzfjw zzd;
    private final zzdaz zze;
    private final zzelc zzf;

    public /* synthetic */ zzdbg(zzdbf zzdbfVar, byte[] bArr) {
        this.zza = zzdbfVar.zzh();
        this.zzb = zzdbfVar.zzi();
        this.zzc = zzdbfVar.zzj();
        this.zzd = zzdbfVar.zzk();
        this.zze = zzdbfVar.zzl();
        this.zzf = zzdbfVar.zzm();
    }

    public final zzdbf zza() {
        zzdbf zzdbfVar = new zzdbf();
        zzdbfVar.zza(this.zza);
        zzdbfVar.zzb(this.zzb);
        zzdbfVar.zzc(this.zzc);
        zzdbfVar.zzd(this.zze);
        zzdbfVar.zzg(this.zzf);
        return zzdbfVar;
    }

    public final zzfkd zzb() {
        return this.zzb;
    }

    public final zzfjw zzc() {
        return this.zzd;
    }

    public final Bundle zzd() {
        return this.zzc;
    }

    public final zzdaz zze() {
        return this.zze;
    }

    public final Context zzf(Context context) {
        return this.zza;
    }

    public final zzelc zzg(String str) {
        zzelc zzelcVar = this.zzf;
        return zzelcVar != null ? zzelcVar : new zzelc(str);
    }
}
