package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class zzhyj {
    private static final Charset zza = Charset.forName("UTF-8");

    public static byte[] zza(String str, int i) {
        byte[] bytes = str.getBytes(zza);
        int length = bytes.length;
        zzhyi zzhyiVar = new zzhyi(2, new byte[(length * 3) / 4]);
        if (zzhyiVar.zza(bytes, 0, length, true)) {
            int i4 = zzhyiVar.zzb;
            byte[] bArr = zzhyiVar.zza;
            if (i4 == bArr.length) {
                return bArr;
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, 0, bArr2, 0, i4);
            return bArr2;
        }
        throw new IllegalArgumentException("bad base-64");
    }
}
