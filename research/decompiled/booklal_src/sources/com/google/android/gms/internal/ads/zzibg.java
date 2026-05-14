package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
final class zzibg extends FilterInputStream {
    private int zza;

    public zzibg(InputStream inputStream, int i) {
        super(inputStream);
        this.zza = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return Math.min(super.available(), this.zza);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.zza <= 0) {
            return -1;
        }
        int read = super.read();
        if (read >= 0) {
            this.zza--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j5) {
        int skip = (int) super.skip(Math.min(j5, this.zza));
        if (skip >= 0) {
            this.zza -= skip;
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        int i5 = this.zza;
        if (i5 <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, Math.min(i4, i5));
        if (read >= 0) {
            this.zza -= read;
        }
        return read;
    }
}
