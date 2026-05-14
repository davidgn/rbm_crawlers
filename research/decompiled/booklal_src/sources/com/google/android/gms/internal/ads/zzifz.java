package com.google.android.gms.internal.ads;

import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzifz {
    final Unsafe zza;

    public zzifz(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract void zza(Object obj, long j5, byte b5);

    public abstract boolean zzb(Object obj, long j5);

    public abstract void zzc(Object obj, long j5, boolean z4);

    public abstract float zzd(Object obj, long j5);

    public abstract void zze(Object obj, long j5, float f5);

    public abstract double zzf(Object obj, long j5);

    public abstract void zzg(Object obj, long j5, double d2);

    public abstract byte zzh(long j5);
}
