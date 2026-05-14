package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;
/* loaded from: classes.dex */
final class zzhh extends zzhi {
    public zzhh(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final double zza(Object obj, long j5) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j5));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final float zzb(Object obj, long j5) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j5));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final void zzc(Object obj, long j5, boolean z4) {
        if (zzhj.zza) {
            zzhj.zzi(obj, j5, z4);
        } else {
            zzhj.zzj(obj, j5, z4);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final void zzd(Object obj, long j5, double d2) {
        this.zza.putLong(obj, j5, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final void zze(Object obj, long j5, float f5) {
        this.zza.putInt(obj, j5, Float.floatToIntBits(f5));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final boolean zzf(Object obj, long j5) {
        return zzhj.zza ? zzhj.zzq(obj, j5) : zzhj.zzr(obj, j5);
    }
}
