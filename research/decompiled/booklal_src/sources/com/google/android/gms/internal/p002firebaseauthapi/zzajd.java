package com.google.android.gms.internal.p002firebaseauthapi;

import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajd  reason: invalid package */
/* loaded from: classes2.dex */
final class zzajd extends zzaje {
    public zzajd(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaje
    public final double zza(Object obj, long j5) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j5));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaje
    public final float zzb(Object obj, long j5) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j5));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaje
    public final void zzc(Object obj, long j5, boolean z4) {
        if (zzajf.zzb) {
            zzajf.zzD(obj, j5, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzajf.zzE(obj, j5, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaje
    public final void zzd(Object obj, long j5, byte b5) {
        if (zzajf.zzb) {
            zzajf.zzD(obj, j5, b5);
        } else {
            zzajf.zzE(obj, j5, b5);
        }
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaje
    public final void zze(Object obj, long j5, double d2) {
        this.zza.putLong(obj, j5, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaje
    public final void zzf(Object obj, long j5, float f5) {
        this.zza.putInt(obj, j5, Float.floatToIntBits(f5));
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaje
    public final boolean zzg(Object obj, long j5) {
        return zzajf.zzb ? zzajf.zzt(obj, j5) : zzajf.zzu(obj, j5);
    }
}
