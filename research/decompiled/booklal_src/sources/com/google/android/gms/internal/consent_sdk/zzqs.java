package com.google.android.gms.internal.consent_sdk;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class zzqs {
    static final Charset zza = Charset.forName("UTF-8");
    public static final byte[] zzb;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzb = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new zzpn(bArr, 0, 0, false, null).zza(0);
        } catch (zzqu e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    public static int zza(boolean z4) {
        return z4 ? 1231 : 1237;
    }

    public static int zzb(int i, byte[] bArr, int i4, int i5) {
        for (int i6 = 0; i6 < i5; i6++) {
            i = (i * 31) + bArr[i6];
        }
        return i;
    }
}
