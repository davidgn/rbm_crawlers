package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhvp {
    public static final zzhvp zza = new zzhvp("SHA256");
    public static final zzhvp zzb = new zzhvp("SHA384");
    public static final zzhvp zzc = new zzhvp("SHA512");
    private final String zzd;

    private zzhvp(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
