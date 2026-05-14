package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzftz {
    private final String zza;
    private final String zzb;

    private zzftz(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public static zzftz zza(String str, String str2) {
        zzfvj.zzc(str, "Name is null or empty");
        zzfvj.zzc(str2, "Version is null or empty");
        return new zzftz(str, str2);
    }

    public final String zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzb;
    }
}
