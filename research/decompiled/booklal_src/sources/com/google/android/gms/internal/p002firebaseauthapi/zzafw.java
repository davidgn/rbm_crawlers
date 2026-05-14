package com.google.android.gms.internal.p002firebaseauthapi;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafw  reason: invalid package */
/* loaded from: classes2.dex */
final class zzafw {
    private final Object zza;
    private final int zzb;

    public zzafw(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzafw) {
            zzafw zzafwVar = (zzafw) obj;
            return this.zza == zzafwVar.zza && this.zzb == zzafwVar.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
