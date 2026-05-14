package com.google.android.gms.internal.p002firebaseauthapi;

import C.a;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvx  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzvx {
    private final byte[] zza;

    private zzvx(byte[] bArr, int i, int i4) {
        byte[] bArr2 = new byte[i4];
        this.zza = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i4);
    }

    public static zzvx zzb(byte[] bArr) {
        if (bArr != null) {
            return new zzvx(bArr, 0, bArr.length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzvx) {
            return Arrays.equals(((zzvx) obj).zza, this.zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        return a.l("Bytes(", zzvl.zza(this.zza), ")");
    }

    public final int zza() {
        return this.zza.length;
    }

    public final byte[] zzc() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
