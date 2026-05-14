package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class zznr extends zznt {
    public zznr(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final double zza(Object obj, long j5) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j5));
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final float zzb(Object obj, long j5) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j5));
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzc(Object obj, long j5, boolean z4) {
        if (zznu.zzb) {
            zznu.zzD(obj, j5, r3 ? (byte) 1 : (byte) 0);
        } else {
            zznu.zzE(obj, j5, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzd(Object obj, long j5, byte b5) {
        if (zznu.zzb) {
            zznu.zzD(obj, j5, b5);
        } else {
            zznu.zzE(obj, j5, b5);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zze(Object obj, long j5, double d2) {
        this.zza.putLong(obj, j5, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzf(Object obj, long j5, float f5) {
        this.zza.putInt(obj, j5, Float.floatToIntBits(f5));
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final boolean zzg(Object obj, long j5) {
        return zznu.zzb ? zznu.zzt(obj, j5) : zznu.zzu(obj, j5);
    }
}
