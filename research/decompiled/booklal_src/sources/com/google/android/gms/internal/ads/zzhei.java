package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhei {
    public static final zzhei zza = new zzhei("SHA1");
    public static final zzhei zzb = new zzhei("SHA224");
    public static final zzhei zzc = new zzhei("SHA256");
    public static final zzhei zzd = new zzhei("SHA384");
    public static final zzhei zze = new zzhei("SHA512");
    private final String zzf;

    private zzhei(String str) {
        this.zzf = str;
    }

    public final String toString() {
        return this.zzf;
    }
}
