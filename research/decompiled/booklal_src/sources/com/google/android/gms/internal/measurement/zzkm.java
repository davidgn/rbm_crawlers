package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class zzkm {
    private final Object zza;
    private final int zzb;

    public zzkm(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzkm) {
            zzkm zzkmVar = (zzkm) obj;
            return this.zza == zzkmVar.zza && this.zzb == zzkmVar.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
