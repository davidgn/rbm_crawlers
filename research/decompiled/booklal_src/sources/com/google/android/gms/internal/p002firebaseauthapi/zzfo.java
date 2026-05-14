package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzfo  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzfo extends zzcw {
    private final int zza;
    private final zzfm zzb;

    public /* synthetic */ zzfo(int i, zzfm zzfmVar, zzfn zzfnVar) {
        this.zza = i;
        this.zzb = zzfmVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfo) {
            zzfo zzfoVar = (zzfo) obj;
            return zzfoVar.zza == this.zza && zzfoVar.zzb == this.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{zzfo.class, Integer.valueOf(this.zza), this.zzb});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        int i = this.zza;
        return "AesGcmSiv Parameters (variant: " + valueOf + ", " + i + "-byte key)";
    }

    public final int zza() {
        return this.zza;
    }

    public final zzfm zzb() {
        return this.zzb;
    }

    public final boolean zzc() {
        return this.zzb != zzfm.zzc;
    }
}
