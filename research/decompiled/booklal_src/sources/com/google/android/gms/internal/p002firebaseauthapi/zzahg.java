package com.google.android.gms.internal.p002firebaseauthapi;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahg  reason: invalid package */
/* loaded from: classes2.dex */
final class zzahg implements zzahn {
    private final zzahn[] zza;

    public zzahg(zzahn... zzahnVarArr) {
        this.zza = zzahnVarArr;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzahn
    public final zzahm zzb(Class cls) {
        zzahn[] zzahnVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzahn zzahnVar = zzahnVarArr[i];
            if (zzahnVar.zzc(cls)) {
                return zzahnVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzahn
    public final boolean zzc(Class cls) {
        zzahn[] zzahnVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzahnVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
