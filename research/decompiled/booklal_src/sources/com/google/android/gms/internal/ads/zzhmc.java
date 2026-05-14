package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public abstract class zzhmc {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzhmc(Class cls, Class cls2, byte[] bArr) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzhmc zzd(zzhmb zzhmbVar, Class cls, Class cls2) {
        return new zzhma(cls, cls2, zzhmbVar);
    }

    public abstract zzhmv zza(zzhde zzhdeVar);

    public final Class zzb() {
        return this.zza;
    }

    public final Class zzc() {
        return this.zzb;
    }
}
