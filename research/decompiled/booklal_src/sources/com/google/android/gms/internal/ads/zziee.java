package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zziee implements zziem {
    private final zziem[] zza;

    public zziee(zziem... zziemVarArr) {
        this.zza = zziemVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zziem
    public final boolean zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zziem
    public final zziel zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            zziem zziemVar = this.zza[i];
            if (zziemVar.zzb(cls)) {
                return zziemVar.zzc(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
