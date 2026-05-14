package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
public final class zzt extends Exception {
    private final Throwable zza;
    private final zzmi zzb;
    private final int zzc;
    private final int zzd;

    public zzt(int i, int i4, Throwable th) {
        this.zzc = i;
        this.zzd = i4;
        this.zza = th;
        zzmi zzf = zzmj.zzf();
        zzf.zze(i4);
        zzf.zzp(i);
        this.zzb = zzf;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.zza;
    }

    public final zzmi zza() {
        return this.zzb;
    }
}
