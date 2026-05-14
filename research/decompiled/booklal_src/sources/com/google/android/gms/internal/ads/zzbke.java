package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzbke {
    public static final zzbjf zza = zzbjf.zzb("gads:dynamite_load:fail:sample_rate", 10000);
    public static final zzbjf zzb = zzbjf.zza("gads:report_dynamite_crash_in_background_thread", false);
    public static final zzbjf zzc = new zzbjf("gads:public_beta:traffic_multiplier", "1.0", 4);
    public static final zzbjf zzd = new zzbjf("gads:sdk_crash_report_class_prefix", "com.google.", 4);
    public static final zzbjf zze;
    public static final zzbjf zzf;

    static {
        zzbjf.zza("gads:sdk_crash_report_enabled", false);
        zze = zzbjf.zza("gads:sdk_crash_report_full_stacktrace", false);
        zzf = zzbjf.zzc("gads:trapped_exception_sample_rate", 0.01d);
    }
}
