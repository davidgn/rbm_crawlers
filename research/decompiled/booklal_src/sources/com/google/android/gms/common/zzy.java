package com.google.android.gms.common;

import android.util.Log;
/* loaded from: classes.dex */
public class zzy {
    private static final zzy zze = new zzy(true, 3, 1, null, null, -1);
    final boolean zza;
    final String zzb;
    final Throwable zzc;
    final int zzd;

    private zzy(boolean z4, int i, int i4, String str, Throwable th, long j5) {
        this.zza = z4;
        this.zzd = i;
        this.zzb = str;
        this.zzc = th;
    }

    @Deprecated
    public static zzy zzb() {
        return zze;
    }

    public static zzy zzc(String str) {
        return new zzy(false, 1, 5, str, null, -1L);
    }

    public static zzy zzd(String str, Throwable th) {
        return new zzy(false, 1, 5, str, th, -1L);
    }

    public static zzy zzf(int i, long j5) {
        return new zzy(true, i, 1, null, null, j5);
    }

    public static zzy zzg(int i, int i4, String str, Throwable th) {
        return new zzy(false, i, i4, str, th, -1L);
    }

    public String zza() {
        return this.zzb;
    }

    public final void zze() {
        if (this.zza || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        Throwable th = this.zzc;
        if (th != null) {
            Log.d("GoogleCertificatesRslt", zza(), th);
        } else {
            Log.d("GoogleCertificatesRslt", zza());
        }
    }

    public /* synthetic */ zzy(boolean z4, int i, int i4, String str, Throwable th, long j5, byte[] bArr) {
        this(false, 1, 5, null, null, -1L);
    }
}
