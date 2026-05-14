package com.google.android.gms.internal.ads;

import com.google.firebase.firestore.util.ExponentialBackoff;
/* loaded from: classes.dex */
public final class zzbjk {
    public static final zzbjf zza = zzbjf.zzb("gads:app_permissions_caching_expiry_ms:expiry", ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS);
    public static final zzbjf zzb = zzbjf.zzb("gads:audio_caching_expiry_ms:expiry", 5000);
    public static final zzbjf zzc = zzbjf.zzb("gads:battery_caching_expiry_ms:expiry", 10000);
    public static final zzbjf zzd = zzbjf.zzb("gads:device_info_caching_expiry_ms:expiry", 300000);
    public static final zzbjf zze = zzbjf.zzb("gads:hsdp_caching_expiry_ms:expiry", 600000);
    public static final zzbjf zzf = zzbjf.zzb("gads:memory_caching_expiry_ms:expiry", 5000);
    public static final zzbjf zzg = zzbjf.zzb("gads:sdk_environment_caching_expiry_ms:expiry", 600000);
    public static final zzbjf zzh = zzbjf.zzb("gads:telephony_caching_expiry_ms:expiry", 5000);
}
