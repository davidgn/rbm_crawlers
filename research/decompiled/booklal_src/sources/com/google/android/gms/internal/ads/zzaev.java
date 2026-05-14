package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public class zzaev implements zzagj {
    private final long zza;
    private final long zzb;
    private final int zzc;
    private final long zzd;
    private final int zze;
    private final long zzf;

    public zzaev(long j5, long j6, int i, int i4, boolean z4) {
        long zze;
        this.zza = j5;
        this.zzb = j6;
        this.zzc = i4 == -1 ? 1 : i4;
        this.zze = i;
        if (j5 == -1) {
            this.zzd = -1L;
            zze = -9223372036854775807L;
        } else {
            this.zzd = j5 - j6;
            zze = zze(j5, j6, i);
        }
        this.zzf = zze;
    }

    private static long zze(long j5, long j6, int i) {
        return (Math.max(0L, j5 - j6) * 8000000) / i;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final long zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final boolean zzb() {
        return this.zzd != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final zzagh zzc(long j5) {
        long j6 = this.zzd;
        int i = (j6 > (-1L) ? 1 : (j6 == (-1L) ? 0 : -1));
        if (i == 0) {
            zzagk zzagkVar = new zzagk(0L, this.zzb);
            return new zzagh(zzagkVar, zzagkVar);
        }
        long j7 = this.zzc;
        long j8 = (((this.zze * j5) / 8000000) / j7) * j7;
        if (i != 0) {
            j8 = Math.min(j8, j6 - j7);
        }
        long max = this.zzb + Math.max(j8, 0L);
        long zzd = zzd(max);
        zzagk zzagkVar2 = new zzagk(zzd, max);
        if (i != 0 && zzd < j5) {
            long j9 = max + j7;
            if (j9 < this.zza) {
                return new zzagh(zzagkVar2, new zzagk(zzd(j9), j9));
            }
        }
        return new zzagh(zzagkVar2, zzagkVar2);
    }

    public final long zzd(long j5) {
        return zze(j5, this.zzb, this.zze);
    }
}
