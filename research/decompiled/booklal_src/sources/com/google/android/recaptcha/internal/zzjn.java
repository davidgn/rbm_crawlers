package com.google.android.recaptcha.internal;

import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class zzjn extends zzjo {
    public zzjn(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.recaptcha.internal.zzjo
    public final double zza(Object obj, long j5) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j5));
    }

    @Override // com.google.android.recaptcha.internal.zzjo
    public final float zzb(Object obj, long j5) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j5));
    }

    @Override // com.google.android.recaptcha.internal.zzjo
    public final void zzc(Object obj, long j5, boolean z4) {
        if (zzjp.zzb) {
            zzjp.zzD(obj, j5, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzjp.zzE(obj, j5, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzjo
    public final void zzd(Object obj, long j5, byte b5) {
        if (zzjp.zzb) {
            zzjp.zzD(obj, j5, b5);
        } else {
            zzjp.zzE(obj, j5, b5);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzjo
    public final void zze(Object obj, long j5, double d2) {
        this.zza.putLong(obj, j5, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.recaptcha.internal.zzjo
    public final void zzf(Object obj, long j5, float f5) {
        this.zza.putInt(obj, j5, Float.floatToIntBits(f5));
    }

    @Override // com.google.android.recaptcha.internal.zzjo
    public final boolean zzg(Object obj, long j5) {
        return zzjp.zzb ? zzjp.zzt(obj, j5) : zzjp.zzu(obj, j5);
    }
}
