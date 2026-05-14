package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public abstract class zzhmj {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzhmj(Class cls, Class cls2, byte[] bArr) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzhmj zzd(zzhmi zzhmiVar, Class cls, Class cls2) {
        return new zzhmh(cls, cls2, zzhmiVar);
    }

    public abstract Object zza(zzhco zzhcoVar);

    public final Class zzb() {
        return this.zza;
    }

    public final Class zzc() {
        return this.zzb;
    }
}
