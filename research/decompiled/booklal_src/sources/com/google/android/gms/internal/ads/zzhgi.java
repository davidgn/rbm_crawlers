package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzhgi {
    public static final zzhgi zza = new zzhgi("ASSUME_AES_GCM");
    public static final zzhgi zzb = new zzhgi("ASSUME_XCHACHA20POLY1305");
    public static final zzhgi zzc = new zzhgi("ASSUME_CHACHA20POLY1305");
    public static final zzhgi zzd = new zzhgi("ASSUME_AES_CTR_HMAC");
    public static final zzhgi zze = new zzhgi("ASSUME_AES_EAX");
    public static final zzhgi zzf = new zzhgi("ASSUME_AES_GCM_SIV");
    private final String zzg;

    private zzhgi(String str) {
        this.zzg = str;
    }

    public final String toString() {
        return this.zzg;
    }
}
