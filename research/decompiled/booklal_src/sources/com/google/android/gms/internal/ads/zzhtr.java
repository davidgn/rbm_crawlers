package com.google.android.gms.internal.ads;

import java.security.spec.ECParameterSpec;
/* loaded from: classes.dex */
public final class zzhtr {
    public static final zzhtr zza = new zzhtr("NIST_P256", zzhkh.zza);
    public static final zzhtr zzb = new zzhtr("NIST_P384", zzhkh.zzb);
    public static final zzhtr zzc = new zzhtr("NIST_P521", zzhkh.zzc);
    private final String zzd;
    private final ECParameterSpec zze;

    private zzhtr(String str, ECParameterSpec eCParameterSpec) {
        this.zzd = str;
        this.zze = eCParameterSpec;
    }

    public final String toString() {
        return this.zzd;
    }

    public final ECParameterSpec zza() {
        return this.zze;
    }
}
