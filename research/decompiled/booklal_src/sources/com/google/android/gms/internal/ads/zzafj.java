package com.google.android.gms.internal.ads;

import java.io.EOFException;
/* loaded from: classes.dex */
public final class zzafj {
    public static void zza(boolean z4, String str) {
        if (!z4) {
            throw zzat.zzb(str, null);
        }
    }

    public static int zzb(zzafg zzafgVar, byte[] bArr, int i, int i4) {
        int i5 = 0;
        while (i5 < i4) {
            int zzg = zzafgVar.zzg(bArr, i + i5, i4 - i5);
            if (zzg == -1) {
                break;
            }
            i5 += zzg;
        }
        return i5;
    }

    public static boolean zzc(zzafg zzafgVar, byte[] bArr, int i, int i4) {
        try {
            zzafgVar.zzc(bArr, i, i4);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean zzd(zzafg zzafgVar, int i) {
        try {
            zzafgVar.zzf(i);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean zze(zzafg zzafgVar, byte[] bArr, int i, int i4, boolean z4) {
        try {
            return zzafgVar.zzh(bArr, 0, i4, z4);
        } catch (EOFException e5) {
            if (z4) {
                return false;
            }
            throw e5;
        }
    }

    public static int zzf(int i) {
        if (i != 20) {
            if (i != 30) {
                switch (i) {
                    case 5:
                        return 80000;
                    case 6:
                        return 768000;
                    case 7:
                        return 192000;
                    case 8:
                        return 2250000;
                    case 9:
                        return 40000;
                    case 10:
                        return 100000;
                    case 11:
                        return 16000;
                    case 12:
                        return 7000;
                    default:
                        switch (i) {
                            case 14:
                                return 3062500;
                            case 15:
                                return 8000;
                            case 16:
                                return 256000;
                            case 17:
                                return 336000;
                            case 18:
                                return 768000;
                            default:
                                return -2147483647;
                        }
                }
            }
            return 2250000;
        }
        return 63750;
    }
}
