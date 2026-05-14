package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
final class zzjq {
    public static /* bridge */ /* synthetic */ void zza(byte b5, byte b6, byte b7, byte b8, char[] cArr, int i) {
        if (!zze(b6)) {
            if ((((b6 + 112) + (b5 << 28)) >> 30) == 0 && !zze(b7) && !zze(b8)) {
                int i4 = ((b5 & 7) << 18) | ((b6 & 63) << 12) | ((b7 & 63) << 6) | (b8 & 63);
                cArr[i] = (char) ((i4 >>> 10) + 55232);
                cArr[i + 1] = (char) ((i4 & 1023) + 56320);
                return;
            }
        }
        throw zzgy.zzd();
    }

    public static /* bridge */ /* synthetic */ void zzb(byte b5, byte b6, byte b7, char[] cArr, int i) {
        if (!zze(b6)) {
            if (b5 == -32) {
                if (b6 >= -96) {
                    b5 = -32;
                }
            }
            if (b5 == -19) {
                if (b6 < -96) {
                    b5 = -19;
                }
            }
            if (!zze(b7)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b6 & 63) << 6) | (b7 & 63));
                return;
            }
        }
        throw zzgy.zzd();
    }

    public static /* bridge */ /* synthetic */ void zzc(byte b5, byte b6, char[] cArr, int i) {
        if (b5 < -62 || zze(b6)) {
            throw zzgy.zzd();
        }
        cArr[i] = (char) (((b5 & 31) << 6) | (b6 & 63));
    }

    public static /* bridge */ /* synthetic */ boolean zzd(byte b5) {
        return b5 >= 0;
    }

    private static boolean zze(byte b5) {
        return b5 > -65;
    }
}
