package com.google.android.gms.internal.p002firebaseauthapi;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvl  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzvl {
    public static String zza(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b5 : bArr) {
            sb.append("0123456789abcdef".charAt((b5 & 255) >> 4));
            sb.append("0123456789abcdef".charAt(b5 & 15));
        }
        return sb.toString();
    }
}
