package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
public final /* synthetic */ class zzbx {
    public static String zza(zzby zzbyVar, String str, byte b5) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append((char) (str.charAt(i) ^ b5));
        }
        return sb.toString();
    }

    public static void zzb(zzby zzbyVar, int i, int i4) {
        if (i != i4) {
            throw new zzt(4, 24, null);
        }
    }
}
