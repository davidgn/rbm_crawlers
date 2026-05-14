package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.util.Arrays;
/* loaded from: classes.dex */
final class zzgzi {
    private static final byte[] zza;

    static {
        byte[] bArr = new byte[UserVerificationMethods.USER_VERIFY_PATTERN];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < 10; i++) {
            bArr[i + 48] = (byte) i;
        }
        for (int i4 = 0; i4 < 26; i4++) {
            byte b5 = (byte) (i4 + 10);
            bArr[i4 + 65] = b5;
            bArr[i4 + 97] = b5;
        }
        zza = bArr;
    }

    public static int zza(char c5) {
        if (c5 < 128) {
            return zza[c5];
        }
        return -1;
    }
}
