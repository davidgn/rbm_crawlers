package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzgdj implements zzgdd {
    private final int zza;
    private final byte[] zzb;

    public zzgdj(int i, byte[] bArr) {
        this.zza = i;
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgdd
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgdd
    public final String zzb() {
        return new String(this.zzb);
    }
}
