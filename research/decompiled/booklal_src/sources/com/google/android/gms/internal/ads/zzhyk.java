package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class zzhyk {
    public static byte[] zza(byte[]... bArr) {
        int i = 0;
        int i4 = 0;
        while (true) {
            if (i >= bArr.length) {
                byte[] bArr2 = new byte[i4];
                int i5 = 0;
                for (byte[] bArr3 : bArr) {
                    int length = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i5, length);
                    i5 += length;
                }
                return bArr2;
            }
            int length2 = bArr[i].length;
            if (i4 > Integer.MAX_VALUE - length2) {
                throw new GeneralSecurityException("exceeded size limit");
            }
            i4 += length2;
            i++;
        }
    }

    public static final byte[] zzb(byte[] bArr, int i, byte[] bArr2, int i4, int i5) {
        if (bArr.length - 16 >= i) {
            byte[] bArr3 = new byte[16];
            for (int i6 = 0; i6 < 16; i6++) {
                bArr3[i6] = (byte) (bArr[i6 + i] ^ bArr2[i6]);
            }
            return bArr3;
        }
        throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
    }

    public static final void zzc(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i) {
        if (i < 0 || byteBuffer2.remaining() < i || byteBuffer3.remaining() < i || byteBuffer.remaining() < i) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        for (int i4 = 0; i4 < i; i4++) {
            byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
        }
    }
}
