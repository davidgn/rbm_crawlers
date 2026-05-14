package com.google.android.gms.internal.auth;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhn {
    public static final /* synthetic */ int zza = 0;
    private static final zzhl zzb;

    static {
        if (zzhj.zzu() && zzhj.zzv()) {
            int i = zzds.zza;
        }
        zzb = new zzhm();
    }

    public static /* bridge */ /* synthetic */ int zza(byte[] bArr, int i, int i4) {
        int i5 = i4 - i;
        byte b5 = bArr[i - 1];
        if (i5 != 0) {
            if (i5 == 1) {
                byte b6 = bArr[i];
                if (b5 <= -12 && b6 <= -65) {
                    return b5 ^ (b6 << 8);
                }
            } else if (i5 != 2) {
                throw new AssertionError();
            } else {
                byte b7 = bArr[i];
                byte b8 = bArr[i + 1];
                if (b5 <= -12 && b7 <= -65 && b8 <= -65) {
                    return ((b7 << 8) ^ b5) ^ (b8 << 16);
                }
            }
        } else if (b5 <= -12) {
            return b5;
        }
        return -1;
    }

    public static boolean zzb(byte[] bArr) {
        return zzb.zzb(bArr, 0, bArr.length);
    }

    public static boolean zzc(byte[] bArr, int i, int i4) {
        return zzb.zzb(bArr, i, i4);
    }
}
