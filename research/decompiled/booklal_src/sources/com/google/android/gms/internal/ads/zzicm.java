package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzicm {
    private final Object zza;
    private final int zzb;

    public zzicm(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzicm) {
            zzicm zzicmVar = (zzicm) obj;
            return this.zza == zzicmVar.zza && this.zzb == zzicmVar.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
