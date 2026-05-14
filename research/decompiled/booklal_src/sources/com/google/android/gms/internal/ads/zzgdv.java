package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public final class zzgdv implements zzgea {
    private final byte[] zza;

    public zzgdv(byte[] bArr) {
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgea
    public final /* synthetic */ void zza(Object obj, OutputStream outputStream) {
        outputStream.write((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgea
    public final /* bridge */ /* synthetic */ Object zzb(InputStream inputStream) {
        try {
            return zzgym.zza(inputStream);
        } catch (IOException e5) {
            throw new zzgdw("Cannot read bytes.", e5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgea
    public final /* synthetic */ Object zzc() {
        return this.zza;
    }
}
