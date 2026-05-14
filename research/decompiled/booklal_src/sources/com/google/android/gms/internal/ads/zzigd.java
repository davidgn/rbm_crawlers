package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzigd extends zzigc {
    @Override // com.google.android.gms.internal.ads.zzigc
    public final boolean zza(byte[] bArr, int i, int i4) {
        while (i < i4 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i4) {
            return true;
        }
        while (i < i4) {
            int i5 = i + 1;
            byte b5 = bArr[i];
            if (b5 < 0) {
                if (b5 < -32) {
                    if (i5 < i4 && b5 >= -62) {
                        i += 2;
                        if (bArr[i5] > -65) {
                        }
                    }
                    return false;
                } else if (b5 < -16) {
                    if (i5 < i4 - 1) {
                        int i6 = i + 2;
                        byte b6 = bArr[i5];
                        if (b6 <= -65 && ((b5 != -32 || b6 >= -96) && (b5 != -19 || b6 < -96))) {
                            i += 3;
                            if (bArr[i6] > -65) {
                            }
                        }
                    }
                    return false;
                } else {
                    if (i5 < i4 - 2) {
                        int i7 = i + 2;
                        byte b7 = bArr[i5];
                        if (b7 <= -65) {
                            if ((((b7 + 112) + (b5 << 28)) >> 30) == 0) {
                                int i8 = i + 3;
                                if (bArr[i7] <= -65) {
                                    i += 4;
                                    if (bArr[i8] > -65) {
                                    }
                                }
                            }
                        }
                    }
                    return false;
                }
            }
            i = i5;
        }
        return true;
    }
}
