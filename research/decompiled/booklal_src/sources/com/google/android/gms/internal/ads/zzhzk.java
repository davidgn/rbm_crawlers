package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzhzk implements zzhpe {
    final zzhpe zza;
    final zzhpe zzb;

    public /* synthetic */ zzhzk(zzhpe zzhpeVar, zzhpe zzhpeVar2, byte[] bArr) {
        this.zza = zzhpeVar;
        this.zzb = zzhpeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhpe
    public final byte[] zza(byte[] bArr, int i) {
        return bArr.length <= 64 ? this.zza.zza(bArr, i) : this.zzb.zza(bArr, i);
    }
}
