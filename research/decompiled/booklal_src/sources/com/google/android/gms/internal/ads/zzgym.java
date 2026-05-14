package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;
/* loaded from: classes.dex */
public final class zzgym {
    public static final /* synthetic */ int zza = 0;

    static {
        new zzgyk();
    }

    public static byte[] zza(InputStream inputStream) {
        inputStream.getClass();
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int highestOneBit = Integer.highestOneBit(0);
        int min = Math.min(8192, Math.max((int) UserVerificationMethods.USER_VERIFY_PATTERN, highestOneBit + highestOneBit));
        int i = 0;
        while (i < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i);
            byte[] bArr = new byte[min2];
            arrayDeque.add(bArr);
            int i4 = 0;
            while (i4 < min2) {
                int read = inputStream.read(bArr, i4, min2 - i4);
                if (read == -1) {
                    return zzc(arrayDeque, i);
                }
                i4 += read;
                i += read;
            }
            min = zzgzg.zzb(min * (min < 4096 ? 4 : 2));
        }
        if (inputStream.read() == -1) {
            return zzc(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    public static InputStream zzb(InputStream inputStream, long j5) {
        return new zzgyl(inputStream, j5);
    }

    private static byte[] zzc(Queue queue, int i) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) queue.remove();
        int length = bArr.length;
        if (length == i) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, i);
        int i4 = i - length;
        while (i4 > 0) {
            byte[] bArr2 = (byte[]) queue.remove();
            int min = Math.min(i4, bArr2.length);
            System.arraycopy(bArr2, 0, copyOf, i - i4, min);
            i4 -= min;
        }
        return copyOf;
    }
}
