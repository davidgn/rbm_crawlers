package com.google.android.recaptcha.internal;

import C.a;
import s4.e;
/* loaded from: classes2.dex */
public final class zzi implements Comparable {
    private int zza;
    private long zzb;
    private long zzc;

    public final String toString() {
        String W4 = e.W(10, String.valueOf(this.zzb / this.zza));
        String W5 = e.W(10, String.valueOf(this.zzc));
        return a.q(a.s("avgExecutionTime: ", W4, " us| maxExecutionTime: ", W5, " us| totalTime: "), e.W(10, String.valueOf(this.zzb)), " us| #Usages: ", e.W(5, String.valueOf(this.zza)));
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzi zziVar) {
        Long valueOf = Long.valueOf(this.zzb);
        Long valueOf2 = Long.valueOf(zziVar.zzb);
        if (valueOf == valueOf2) {
            return 0;
        }
        return valueOf.compareTo(valueOf2);
    }

    public final int zzb() {
        return this.zza;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final long zzd() {
        return this.zzb;
    }

    public final void zze(long j5) {
        this.zzc = j5;
    }

    public final void zzf(long j5) {
        this.zzb = j5;
    }

    public final void zzg(int i) {
        this.zza = i;
    }
}
