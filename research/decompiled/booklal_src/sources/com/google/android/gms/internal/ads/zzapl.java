package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzapl {
    private final zzags zza;
    private long zzb;
    private boolean zzc;
    private int zzd;
    private long zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private long zzk;
    private long zzl;
    private boolean zzm;

    public zzapl(zzags zzagsVar) {
        this.zza = zzagsVar;
    }

    private final void zze(int i) {
        long j5 = this.zzl;
        if (j5 != -9223372036854775807L) {
            long j6 = this.zzb;
            long j7 = this.zzk;
            if (j6 == j7) {
                return;
            }
            this.zza.zze(j5, this.zzm ? 1 : 0, (int) (j6 - j7), i, null);
        }
    }

    public final void zza() {
        this.zzf = false;
        this.zzg = false;
        this.zzh = false;
        this.zzi = false;
        this.zzj = false;
    }

    public final void zzb(long j5, int i, int i4, long j6, boolean z4) {
        boolean z5 = false;
        this.zzg = false;
        this.zzh = false;
        this.zze = j6;
        this.zzd = 0;
        this.zzb = j5;
        if (i4 >= 32 && i4 != 40) {
            if (this.zzi && !this.zzj) {
                if (z4) {
                    zze(i);
                }
                this.zzi = false;
            }
            if (i4 <= 35 || i4 == 39) {
                this.zzh = !this.zzj;
                this.zzj = true;
            }
        }
        boolean z6 = i4 >= 16 && i4 <= 21;
        this.zzc = z6;
        if (z6 || i4 <= 9) {
            z5 = true;
        }
        this.zzf = z5;
    }

    public final void zzc(byte[] bArr, int i, int i4) {
        if (this.zzf) {
            int i5 = this.zzd;
            int i6 = (i + 2) - i5;
            if (i6 >= i4) {
                this.zzd = (i4 - i) + i5;
                return;
            }
            this.zzg = (bArr[i6] & 128) != 0;
            this.zzf = false;
        }
    }

    public final void zzd(long j5, int i, boolean z4) {
        if (this.zzj && this.zzg) {
            this.zzm = this.zzc;
            this.zzj = false;
        } else if (this.zzh || this.zzg) {
            if (z4 && this.zzi) {
                zze(i + ((int) (j5 - this.zzb)));
            }
            this.zzk = this.zzb;
            this.zzl = this.zze;
            this.zzm = this.zzc;
            this.zzi = true;
        }
    }
}
