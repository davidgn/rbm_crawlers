package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhzi {
    public static byte[] zza(String str) {
        if ((str.length() & 1) == 0) {
            int length = str.length() >> 1;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i4 = i + i;
                int digit = Character.digit(str.charAt(i4), 16);
                int digit2 = Character.digit(str.charAt(i4 + 1), 16);
                if (digit == -1 || digit2 == -1) {
                    throw new IllegalArgumentException("input is not hexadecimal");
                }
                bArr[i] = (byte) ((digit * 16) + digit2);
            }
            return bArr;
        }
        throw new IllegalArgumentException("Expected a string of even length");
    }
}
