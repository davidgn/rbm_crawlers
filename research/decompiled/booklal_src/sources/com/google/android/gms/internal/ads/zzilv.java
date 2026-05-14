package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzilv implements zzilu, zzilo {
    private static final zzilv zza = new zzilv(null);
    private final Object zzb;

    private zzilv(Object obj) {
        this.zzb = obj;
    }

    public static zzilu zza(Object obj) {
        zzimc.zza(obj, "instance cannot be null");
        return new zzilv(obj);
    }

    public static zzilu zzc(Object obj) {
        return obj == null ? zza : new zzilv(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzimj, com.google.android.gms.internal.ads.zzimi
    public final Object zzb() {
        return this.zzb;
    }
}
