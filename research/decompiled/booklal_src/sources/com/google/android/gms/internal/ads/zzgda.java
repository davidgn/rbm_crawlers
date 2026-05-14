package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzgda {
    public static String zza(byte[] bArr, boolean z4) {
        return zzc(z4).zzj(bArr, 0, bArr.length);
    }

    public static byte[] zzb(String str, boolean z4) {
        byte[] zzk = zzc(z4).zzk(str);
        if (zzk.length != 0 || str.length() <= 0) {
            return zzk;
        }
        throw new IllegalArgumentException("Unable to decode ".concat(str));
    }

    private static zzgyh zzc(boolean z4) {
        return z4 ? zzgyh.zzm().zzh() : zzgyh.zzl();
    }
}
