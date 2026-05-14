package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzhw  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzhw extends zzie {
    private final int zza;
    private final zzhu zzb;

    public /* synthetic */ zzhw(int i, zzhu zzhuVar, zzhv zzhvVar) {
        this.zza = i;
        this.zzb = zzhuVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhw) {
            zzhw zzhwVar = (zzhw) obj;
            return zzhwVar.zza == this.zza && zzhwVar.zzb == this.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{zzhw.class, Integer.valueOf(this.zza), this.zzb});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        int i = this.zza;
        return "AesSiv Parameters (variant: " + valueOf + ", " + i + "-byte key)";
    }

    public final int zza() {
        return this.zza;
    }

    public final zzhu zzb() {
        return this.zzb;
    }

    public final boolean zzc() {
        return this.zzb != zzhu.zzc;
    }
}
