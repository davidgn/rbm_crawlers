package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzaup implements zzauo {
    @Override // com.google.android.gms.internal.ads.zzauo
    public final byte zza(zzava zzavaVar, int i) {
        return zzavaVar.zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final zzava zzb(zzava zzavaVar, int i, int i4) {
        byte[] bArr;
        int length;
        if (i < 0 || i > i4 || i4 > (length = (bArr = zzavaVar.zza).length) || i > i4 || i4 > length) {
            throw new IndexOutOfBoundsException();
        }
        return new zzava(zzava.zzh(bArr, i, i4 - i));
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final zzauo zzc() {
        return new zzaup();
    }
}
