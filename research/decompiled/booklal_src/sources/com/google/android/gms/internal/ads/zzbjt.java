package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzbjt {
    public static final zzbjf zza = zzbjf.zza("gads:init:init_on_bg_thread", true);
    public static final zzbjf zzb = zzbjf.zza("gads:init:init_on_single_bg_thread", false);
    public static final zzbjf zzc = zzbjf.zza("gads:adloader_load_bg_thread", true);
    public static final zzbjf zzd = zzbjf.zza("gads:appopen_load_on_bg_thread", true);
    public static final zzbjf zze = zzbjf.zza("gads:banner_destroy_bg_thread", false);
    public static final zzbjf zzf = zzbjf.zza("gads:banner_load_bg_thread", true);
    public static final zzbjf zzg = zzbjf.zza("gads:banner_pause_bg_thread", false);
    public static final zzbjf zzh = zzbjf.zza("gads:banner_resume_bg_thread", false);
    public static final zzbjf zzi = zzbjf.zza("gads:interstitial_load_on_bg_thread", true);
    public static final zzbjf zzj;
    public static final zzbjf zzk;

    static {
        zzbjf.zza("gads:persist_flags_on_bg_thread", true);
        zzj = zzbjf.zza("gads:query_info_bg_thread", true);
        zzk = zzbjf.zza("gads:rewarded_load_bg_thread", true);
    }
}
