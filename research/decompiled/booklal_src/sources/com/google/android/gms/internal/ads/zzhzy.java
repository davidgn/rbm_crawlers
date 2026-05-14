package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzhzy {
    private final byte[] zza;

    private zzhzy(byte[] bArr, int i, int i4) {
        byte[] bArr2 = new byte[i4];
        this.zza = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i4);
    }

    public static zzhzy zza(byte[] bArr) {
        if (bArr != null) {
            return zzb(bArr, 0, bArr.length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public static zzhzy zzb(byte[] bArr, int i, int i4) {
        if (bArr != null) {
            int length = bArr.length;
            if (i4 > length) {
                i4 = length;
            }
            return new zzhzy(bArr, 0, i4);
        }
        throw new NullPointerException("data must be non-null");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhzy) {
            return Arrays.equals(((zzhzy) obj).zza, this.zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b5 : bArr) {
            sb.append("0123456789abcdef".charAt((b5 & 255) >> 4));
            sb.append("0123456789abcdef".charAt(b5 & 15));
        }
        String sb2 = sb.toString();
        return C.a.q(new StringBuilder(sb2.length() + 7), "Bytes(", sb2, ")");
    }

    public final byte[] zzc() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public final int zzd() {
        return this.zza.length;
    }
}
