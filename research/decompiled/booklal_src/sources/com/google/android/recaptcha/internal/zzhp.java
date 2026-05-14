package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
final class zzhp implements zzhw {
    private final zzhw[] zza;

    public zzhp(zzhw... zzhwVarArr) {
        this.zza = zzhwVarArr;
    }

    @Override // com.google.android.recaptcha.internal.zzhw
    public final zzhv zzb(Class cls) {
        zzhw[] zzhwVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzhw zzhwVar = zzhwVarArr[i];
            if (zzhwVar.zzc(cls)) {
                return zzhwVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.recaptcha.internal.zzhw
    public final boolean zzc(Class cls) {
        zzhw[] zzhwVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzhwVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
