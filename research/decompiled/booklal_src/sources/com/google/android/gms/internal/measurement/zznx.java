package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class zznx extends zznw {
    @Override // com.google.android.gms.internal.measurement.zznw
    public final int zza(int i, byte[] bArr, int i4, int i5) {
        while (i4 < i5 && bArr[i4] >= 0) {
            i4++;
        }
        if (i4 >= i5) {
            return 0;
        }
        while (i4 < i5) {
            int i6 = i4 + 1;
            byte b5 = bArr[i4];
            if (b5 < 0) {
                if (b5 < -32) {
                    if (i6 >= i5) {
                        return b5;
                    }
                    if (b5 >= -62) {
                        i4 += 2;
                        if (bArr[i6] > -65) {
                        }
                    }
                    return -1;
                } else if (b5 < -16) {
                    if (i6 >= i5 - 1) {
                        return zznz.zza(bArr, i6, i5);
                    }
                    int i7 = i4 + 2;
                    byte b6 = bArr[i6];
                    if (b6 <= -65 && ((b5 != -32 || b6 >= -96) && (b5 != -19 || b6 < -96))) {
                        i4 += 3;
                        if (bArr[i7] > -65) {
                        }
                    }
                    return -1;
                } else if (i6 >= i5 - 2) {
                    return zznz.zza(bArr, i6, i5);
                } else {
                    int i8 = i4 + 2;
                    byte b7 = bArr[i6];
                    if (b7 <= -65) {
                        if ((((b7 + 112) + (b5 << 28)) >> 30) == 0) {
                            int i9 = i4 + 3;
                            if (bArr[i8] <= -65) {
                                i4 += 4;
                                if (bArr[i9] > -65) {
                                }
                            }
                        }
                    }
                    return -1;
                }
            }
            i4 = i6;
        }
        return 0;
    }
}
