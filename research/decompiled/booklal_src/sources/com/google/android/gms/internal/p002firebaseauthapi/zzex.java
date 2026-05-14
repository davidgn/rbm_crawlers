package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzex  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzex extends zzcw {
    private final int zza;
    private final int zzb = 12;
    private final int zzc = 16;
    private final zzev zzd;

    public /* synthetic */ zzex(int i, int i4, int i5, zzev zzevVar, zzew zzewVar) {
        this.zza = i;
        this.zzd = zzevVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzex) {
            zzex zzexVar = (zzex) obj;
            return zzexVar.zza == this.zza && zzexVar.zzd == this.zzd;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{zzex.class, Integer.valueOf(this.zza), 12, 16, this.zzd});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        int i = this.zza;
        return "AesGcm Parameters (variant: " + valueOf + ", 12-byte IV, 16-byte tag, and " + i + "-byte key)";
    }

    public final int zza() {
        return this.zza;
    }

    public final zzev zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        return this.zzd != zzev.zzc;
    }
}
