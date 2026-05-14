package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
final class zzati extends FilterInputStream {
    private final long zza;
    private long zzb;

    public zzati(InputStream inputStream, long j5) {
        super(inputStream);
        this.zza = j5;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.zzb++;
        }
        return read;
    }

    public final long zza() {
        return this.zza - this.zzb;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        int read = super.read(bArr, i, i4);
        if (read != -1) {
            this.zzb += read;
        }
        return read;
    }
}
