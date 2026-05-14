package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* loaded from: classes.dex */
final class zzify extends zzifz {
    public zzify(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final void zza(Object obj, long j5, byte b5) {
        if (zziga.zzb) {
            zziga.zzF(obj, j5, b5);
        } else {
            zziga.zzG(obj, j5, b5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final boolean zzb(Object obj, long j5) {
        return zziga.zzb ? zziga.zzw(obj, j5) : zziga.zzx(obj, j5);
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final void zzc(Object obj, long j5, boolean z4) {
        if (zziga.zzb) {
            zziga.zzF(obj, j5, r3 ? (byte) 1 : (byte) 0);
        } else {
            zziga.zzG(obj, j5, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final float zzd(Object obj, long j5) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j5));
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final void zze(Object obj, long j5, float f5) {
        this.zza.putInt(obj, j5, Float.floatToIntBits(f5));
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final double zzf(Object obj, long j5) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j5));
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final void zzg(Object obj, long j5, double d2) {
        this.zza.putLong(obj, j5, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.gms.internal.ads.zzifz
    public final byte zzh(long j5) {
        return Memory.peekByte(j5);
    }
}
