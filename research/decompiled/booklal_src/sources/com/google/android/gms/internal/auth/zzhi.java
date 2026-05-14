package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzhi {
    final Unsafe zza;

    public zzhi(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract double zza(Object obj, long j5);

    public abstract float zzb(Object obj, long j5);

    public abstract void zzc(Object obj, long j5, boolean z4);

    public abstract void zzd(Object obj, long j5, double d2);

    public abstract void zze(Object obj, long j5, float f5);

    public abstract boolean zzf(Object obj, long j5);
}
