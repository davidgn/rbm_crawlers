package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhnx {
    public static final zzhnx zza = new zzhnx("SHA1");
    public static final zzhnx zzb = new zzhnx("SHA224");
    public static final zzhnx zzc = new zzhnx("SHA256");
    public static final zzhnx zzd = new zzhnx("SHA384");
    public static final zzhnx zze = new zzhnx("SHA512");
    private final String zzf;

    private zzhnx(String str) {
        this.zzf = str;
    }

    public final String toString() {
        return this.zzf;
    }
}
