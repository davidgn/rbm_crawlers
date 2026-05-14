package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhts {
    public static final zzhts zza = new zzhts("SHA256");
    public static final zzhts zzb = new zzhts("SHA384");
    public static final zzhts zzc = new zzhts("SHA512");
    private final String zzd;

    private zzhts(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
