package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
public final /* synthetic */ class zzbh {
    public static String zza(zzbi zzbiVar, String str, byte b5) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append((char) (str.charAt(i) ^ b5));
        }
        return sb.toString();
    }
}
