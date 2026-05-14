package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzye implements zzaav {
    public long zza;
    public long zzb;
    public zzaau zzc;
    public zzye zzd;

    public zzye(long j5, int i) {
        zza(j5, 65536);
    }

    public final void zza(long j5, int i) {
        zzgsj.zzi(this.zzc == null);
        this.zza = j5;
        this.zzb = j5 + 65536;
    }

    public final int zzb(long j5) {
        long j6 = j5 - this.zza;
        int i = this.zzc.zzb;
        return (int) j6;
    }

    public final zzye zzc() {
        this.zzc = null;
        zzye zzyeVar = this.zzd;
        this.zzd = null;
        return zzyeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaav
    public final zzaau zzd() {
        zzaau zzaauVar = this.zzc;
        zzaauVar.getClass();
        return zzaauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaav
    public final zzaav zze() {
        zzye zzyeVar = this.zzd;
        if (zzyeVar == null || zzyeVar.zzc == null) {
            return null;
        }
        return zzyeVar;
    }
}
