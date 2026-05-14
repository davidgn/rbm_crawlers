package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzcj  reason: invalid package */
/* loaded from: classes2.dex */
final class zzcj implements Comparable {
    private final byte[] zza;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzcj zzcjVar = (zzcj) obj;
        int length = this.zza.length;
        int length2 = zzcjVar.zza.length;
        if (length != length2) {
            return length - length2;
        }
        int i = 0;
        while (true) {
            byte[] bArr = this.zza;
            if (i >= bArr.length) {
                return 0;
            }
            byte b5 = bArr[i];
            byte b6 = zzcjVar.zza[i];
            if (b5 != b6) {
                return b5 - b6;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzcj) {
            return Arrays.equals(this.zza, ((zzcj) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        return zzvl.zza(this.zza);
    }
}
