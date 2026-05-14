package com.google.android.gms.internal.p002firebaseauthapi;

import e1.i;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzeg  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzeg extends zzcw {
    private final int zza;
    private final int zzb;
    private final int zzc = 16;
    private final zzee zzd;

    public /* synthetic */ zzeg(int i, int i4, int i5, zzee zzeeVar, zzef zzefVar) {
        this.zza = i;
        this.zzb = i4;
        this.zzd = zzeeVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzeg) {
            zzeg zzegVar = (zzeg) obj;
            return zzegVar.zza == this.zza && zzegVar.zzb == this.zzb && zzegVar.zzd == this.zzd;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{zzeg.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), 16, this.zzd});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        int i = this.zzb;
        int i4 = this.zza;
        StringBuilder sb = new StringBuilder("AesEax Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(i);
        sb.append("-byte IV, 16-byte tag, and ");
        return i.b(i4, "-byte key)", sb);
    }

    public final int zza() {
        return this.zza;
    }

    public final zzee zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        return this.zzd != zzee.zzc;
    }
}
