package com.google.android.gms.internal.ads;

import java.nio.ByteOrder;
import java.util.Collections;
/* loaded from: classes.dex */
public final class zzafs {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;
    public final zzafr zzk;
    private final zzap zzl;

    public zzafs(int i, int i4, int i5, int i6, int i7, int i8, int i9, long j5, zzafr zzafrVar, zzap zzapVar) {
        this.zza = i;
        this.zzb = i4;
        this.zzc = i5;
        this.zzd = i6;
        this.zze = i7;
        this.zzf = zzf(i7);
        this.zzg = i8;
        this.zzh = i9;
        this.zzi = zzg(i9);
        this.zzj = j5;
        this.zzk = zzafrVar;
        this.zzl = zzapVar;
    }

    private static int zzf(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    private static int zzg(int i) {
        if (i != 8) {
            if (i != 12) {
                if (i != 16) {
                    if (i != 20) {
                        if (i != 24) {
                            return i != 32 ? -1 : 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    public final long zza() {
        long j5 = this.zzj;
        if (j5 == 0) {
            return -9223372036854775807L;
        }
        return (j5 * 1000000) / this.zze;
    }

    public final long zzb(long j5) {
        String str = zzfk.zza;
        return Math.max(0L, Math.min((j5 * this.zze) / 1000000, this.zzj - 1));
    }

    public final zzv zzc(byte[] bArr, zzap zzapVar) {
        bArr[4] = Byte.MIN_VALUE;
        zzap zzd = zzd(zzapVar);
        zzt zztVar = new zzt();
        zztVar.zzn("audio/flac");
        int i = this.zzd;
        if (i <= 0) {
            i = -1;
        }
        zztVar.zzo(i);
        zztVar.zzF(this.zzg);
        zztVar.zzG(this.zze);
        zztVar.zzH(zzfk.zzz(this.zzh, ByteOrder.LITTLE_ENDIAN));
        zztVar.zzq(Collections.singletonList(bArr));
        zztVar.zzl(zzd);
        return zztVar.zzN();
    }

    public final zzap zzd(zzap zzapVar) {
        zzap zzapVar2 = this.zzl;
        return zzapVar2 == null ? zzapVar : zzapVar2.zzf(zzapVar);
    }

    public final zzafs zze(zzafr zzafrVar) {
        return new zzafs(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzafrVar, this.zzl);
    }

    public zzafs(byte[] bArr, int i) {
        zzer zzerVar = new zzer(bArr, bArr.length);
        zzerVar.zzf(i * 8);
        this.zza = zzerVar.zzj(16);
        this.zzb = zzerVar.zzj(16);
        this.zzc = zzerVar.zzj(24);
        this.zzd = zzerVar.zzj(24);
        int zzj = zzerVar.zzj(20);
        this.zze = zzj;
        this.zzf = zzf(zzj);
        this.zzg = zzerVar.zzj(3) + 1;
        int zzj2 = zzerVar.zzj(5) + 1;
        this.zzh = zzj2;
        this.zzi = zzg(zzj2);
        this.zzj = zzerVar.zzk(36);
        this.zzk = null;
        this.zzl = null;
    }
}
