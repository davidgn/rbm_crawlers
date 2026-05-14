package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zziaa {
    private final zzhzy zza;

    private zziaa(zzhzy zzhzyVar) {
        this.zza = zzhzyVar;
    }

    public static zziaa zza(byte[] bArr, zzhdi zzhdiVar) {
        return new zziaa(zzhzy.zza(bArr));
    }

    public static zziaa zzb(int i) {
        return new zziaa(zzhzy.zza(zzhmt.zza(i)));
    }

    public final byte[] zzc(zzhdi zzhdiVar) {
        return this.zza.zzc();
    }

    public final int zzd() {
        return this.zza.zzd();
    }
}
