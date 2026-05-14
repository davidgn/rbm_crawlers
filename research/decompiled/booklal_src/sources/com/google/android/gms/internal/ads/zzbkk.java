package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzbkk {
    public static final zzbjf zza = zzbjf.zza("gads:trustless_token_for_decagon:enabled", true);
    public static final zzbjf zzb;

    static {
        zzbjf.zza("gads:invalidate_token_at_refresh_start", true);
        zzbjf.zza("gms:expose_token_for_gma:enabled", true);
        zzbjf.zza("gads:referesh_rate_limit", false);
        zzb = zzbjf.zzb("gads:timeout_for_trustless_token:millis", 2000L);
        zzbjf.zza("gads:token_anonymization:enabled", true);
        zzbjf.zzb("gads:cached_token:ttl_millis", 10800000L);
    }
}
