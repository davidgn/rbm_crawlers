package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhwb {
    public static final zzhwb zza = new zzhwb("SHA256");
    public static final zzhwb zzb = new zzhwb("SHA384");
    public static final zzhwb zzc = new zzhwb("SHA512");
    private final String zzd;

    private zzhwb(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
