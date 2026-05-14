package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
abstract class zzigc {
    public static final int zzb(String str, byte[] bArr, int i, int i4) {
        byte[] bytes = str.getBytes(zzidq.zza);
        int length = bytes.length;
        if (length - i <= i4) {
            System.arraycopy(bytes, 0, bArr, i, length);
            return i + length;
        }
        throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
    }

    public abstract boolean zza(byte[] bArr, int i, int i4);
}
