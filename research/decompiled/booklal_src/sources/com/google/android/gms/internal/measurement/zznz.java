package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zznz {
    public static final /* synthetic */ int zza = 0;
    private static final zznw zzb;

    static {
        if (zznu.zzx() && zznu.zzy()) {
            int i = zzjm.zza;
        }
        zzb = new zznx();
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

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00fc, code lost:
        return r9 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzb(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznz.zzb(java.lang.CharSequence, byte[], int, int):int");
    }

    public static int zzc(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (charAt2 >= 55296 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i4) < 65536) {
                                throw new zzny(i4, length2);
                            }
                            i4++;
                        }
                    }
                    i4++;
                }
                i5 += i;
            }
        }
        if (i5 >= length) {
            return i5;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i5 + 4294967296L));
    }

    public static boolean zzd(byte[] bArr) {
        return zzb.zzb(bArr, 0, bArr.length);
    }

    public static boolean zze(byte[] bArr, int i, int i4) {
        return zzb.zzb(bArr, i, i4);
    }
}
