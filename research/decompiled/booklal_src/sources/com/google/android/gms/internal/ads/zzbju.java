package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzbju {
    public static final zzbjf zza = new zzbjf("gads:gma_attestation:click:macro_string", "@click_attok@", 4);
    public static final zzbjf zzb = new zzbjf("gads:gma_attestation:click:query_param", "attok", 4);
    public static final zzbjf zzc = zzbjf.zzb("gads:gma_attestation:click:timeout", 2000);
    public static final zzbjf zzd = zzbjf.zza("gads:gma_attestation:click:enable", false);
    public static final zzbjf zze = zzbjf.zzb("gads:gma_attestation:click:enable_dynamite_version", Long.MAX_VALUE);
    public static final zzbjf zzf = zzbjf.zza("gads:gma_attestation:click:qualification:enable", true);
    public static final zzbjf zzg = zzbjf.zza("gads:gma_attestation:image_hash", false);
    public static final zzbjf zzh = zzbjf.zza("gads:gma_attestation:impression:enable", false);
    public static final zzbjf zzi;

    static {
        zzbjf.zza("gads:gma_attestation:request:enable_javascript", false);
        zzbjf.zza("gads:gma_attestation:request:enable", true);
        zzi = zzbjf.zza("gads:gma_attestation:click:report_error", true);
    }
}
