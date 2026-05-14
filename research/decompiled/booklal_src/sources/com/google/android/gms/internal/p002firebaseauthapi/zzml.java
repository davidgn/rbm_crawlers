package com.google.android.gms.internal.p002firebaseauthapi;

import e1.i;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzml  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzml extends zznq {
    private final int zza;
    private final int zzb;
    private final zzmj zzc;

    public /* synthetic */ zzml(int i, int i4, zzmj zzmjVar, zzmk zzmkVar) {
        this.zza = i;
        this.zzb = i4;
        this.zzc = zzmjVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzml) {
            zzml zzmlVar = (zzml) obj;
            return zzmlVar.zza == this.zza && zzmlVar.zzb() == zzb() && zzmlVar.zzc == this.zzc;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{zzml.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        int i = this.zzb;
        int i4 = this.zza;
        StringBuilder sb = new StringBuilder("AES-CMAC Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(i);
        sb.append("-byte tags, and ");
        return i.b(i4, "-byte key)", sb);
    }

    public final int zza() {
        return this.zza;
    }

    public final int zzb() {
        zzmj zzmjVar = this.zzc;
        if (zzmjVar == zzmj.zzd) {
            return this.zzb;
        }
        if (zzmjVar == zzmj.zza || zzmjVar == zzmj.zzb || zzmjVar == zzmj.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzmj zzc() {
        return this.zzc;
    }

    public final boolean zzd() {
        return this.zzc != zzmj.zzd;
    }
}
