package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class zzidq {
    static final Charset zza = Charset.forName("UTF-8");
    public static final byte[] zzb;
    public static final ByteBuffer zzc;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzc = ByteBuffer.wrap(bArr);
        zzicd.zzI(bArr, 0, 0, false);
    }

    public static Object zza(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public static int zzb(boolean z4) {
        return z4 ? 1231 : 1237;
    }

    public static int zzc(int i, byte[] bArr, int i4, int i5) {
        for (int i6 = i4; i6 < i4 + i5; i6++) {
            i = (i * 31) + bArr[i6];
        }
        return i;
    }
}
