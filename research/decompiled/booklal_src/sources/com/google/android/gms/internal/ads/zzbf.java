package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes.dex */
public abstract class zzbf {
    public static final zzbf zza = new zzbc();

    static {
        String str = zzfk.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
    }

    public final boolean equals(Object obj) {
        int zzj;
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbf) {
            zzbf zzbfVar = (zzbf) obj;
            if (zzbfVar.zza() == zza() && zzbfVar.zzc() == zzc()) {
                zzbe zzbeVar = new zzbe();
                zzbd zzbdVar = new zzbd();
                zzbe zzbeVar2 = new zzbe();
                zzbd zzbdVar2 = new zzbd();
                for (int i = 0; i < zza(); i++) {
                    if (!zzb(i, zzbeVar, 0L).equals(zzbfVar.zzb(i, zzbeVar2, 0L))) {
                        return false;
                    }
                }
                for (int i4 = 0; i4 < zzc(); i4++) {
                    if (!zzd(i4, zzbdVar, true).equals(zzbfVar.zzd(i4, zzbdVar2, true))) {
                        return false;
                    }
                }
                int zzk = zzk(true);
                if (zzk == zzbfVar.zzk(true) && (zzj = zzj(true)) == zzbfVar.zzj(true)) {
                    while (zzk != zzj) {
                        int zzh = zzh(zzk, 0, true);
                        if (zzh != zzbfVar.zzh(zzk, 0, true)) {
                            return false;
                        }
                        zzk = zzh;
                    }
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        zzbe zzbeVar = new zzbe();
        zzbd zzbdVar = new zzbd();
        int zza2 = zza() + 217;
        int i4 = 0;
        while (true) {
            i = zza2 * 31;
            if (i4 >= zza()) {
                break;
            }
            zza2 = i + zzb(i4, zzbeVar, 0L).hashCode();
            i4++;
        }
        int zzc = zzc() + i;
        for (int i5 = 0; i5 < zzc(); i5++) {
            zzc = (zzc * 31) + zzd(i5, zzbdVar, true).hashCode();
        }
        int zzk = zzk(true);
        while (zzk != -1) {
            zzc = (zzc * 31) + zzk;
            zzk = zzh(zzk, 0, true);
        }
        return zzc;
    }

    public abstract int zza();

    public abstract zzbe zzb(int i, zzbe zzbeVar, long j5);

    public abstract int zzc();

    public abstract zzbd zzd(int i, zzbd zzbdVar, boolean z4);

    public abstract int zze(Object obj);

    public abstract Object zzf(int i);

    public final boolean zzg() {
        return zza() == 0;
    }

    public int zzh(int i, int i4, boolean z4) {
        if (i4 == 0) {
            if (i == zzj(z4)) {
                return -1;
            }
            return i + 1;
        } else if (i4 != 1) {
            if (i4 == 2) {
                return i == zzj(z4) ? zzk(z4) : i + 1;
            }
            throw new IllegalStateException();
        } else {
            return i;
        }
    }

    public int zzi(int i, int i4, boolean z4) {
        if (i == zzk(false)) {
            return -1;
        }
        return i - 1;
    }

    public int zzj(boolean z4) {
        if (zzg()) {
            return -1;
        }
        return zza() - 1;
    }

    public int zzk(boolean z4) {
        return zzg() ? -1 : 0;
    }

    public final int zzl(int i, zzbd zzbdVar, zzbe zzbeVar, int i4, boolean z4) {
        int i5 = zzd(i, zzbdVar, false).zzc;
        if (zzb(i5, zzbeVar, 0L).zzo == i) {
            int zzh = zzh(i5, i4, z4);
            if (zzh == -1) {
                return -1;
            }
            return zzb(zzh, zzbeVar, 0L).zzn;
        }
        return i + 1;
    }

    public final Pair zzm(zzbe zzbeVar, zzbd zzbdVar, int i, long j5) {
        Pair zzn = zzn(zzbeVar, zzbdVar, i, j5, 0L);
        zzn.getClass();
        return zzn;
    }

    public final Pair zzn(zzbe zzbeVar, zzbd zzbdVar, int i, long j5, long j6) {
        zzgsj.zzm(i, zza(), FirebaseAnalytics.Param.INDEX);
        zzb(i, zzbeVar, j6);
        if (j5 == -9223372036854775807L) {
            long j7 = zzbeVar.zzl;
            j5 = 0;
        }
        int i4 = zzbeVar.zzn;
        zzd(i4, zzbdVar, false);
        while (i4 < zzbeVar.zzo) {
            long j8 = zzbdVar.zze;
            int i5 = (j5 > 0L ? 1 : (j5 == 0L ? 0 : -1));
            if (i5 == 0) {
                break;
            }
            int i6 = i4 + 1;
            long j9 = zzd(i6, zzbdVar, false).zze;
            if (i5 < 0) {
                break;
            }
            i4 = i6;
        }
        zzd(i4, zzbdVar, true);
        long j10 = zzbdVar.zze;
        long j11 = zzbdVar.zzd;
        if (j11 != -9223372036854775807L) {
            j5 = Math.min(j5, j11 - 1);
        }
        long max = Math.max(0L, j5);
        Object obj = zzbdVar.zzb;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(max));
    }

    public zzbd zzo(Object obj, zzbd zzbdVar) {
        return zzd(zze(obj), zzbdVar, true);
    }
}
