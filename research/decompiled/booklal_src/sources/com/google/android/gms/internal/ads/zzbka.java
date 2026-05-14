package com.google.android.gms.internal.ads;

import com.google.firebase.firestore.util.ExponentialBackoff;
/* loaded from: classes.dex */
public final class zzbka {
    public static final zzbjf zza = zzbjf.zza("gads:delegating_web_view_client_recursion_detection:enabled", false);
    public static final zzbjf zzb = zzbjf.zza("gads:paw_app_signals:document_start_js:enabled", false);
    public static final zzbjf zzc = zzbjf.zza("gads:paw_app_signals:enabled", false);
    public static final zzbjf zzd = zzbjf.zza("gads:paw_delegate_web_view_client:enabled", false);
    public static final zzbjf zze = zzbjf.zza("gads:paw_cache:enabled", false);
    public static final zzbjf zzf = zzbjf.zzb("gads:paw_cache:refresh_interval_seconds", 30);
    public static final zzbjf zzg = zzbjf.zzb("gads:paw_cache:retry_delay_seconds", 10);
    public static final zzbjf zzh = zzbjf.zzb("gads:paw_cache:ttl_ms", ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS);
}
