package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class zzchn implements zzilg {
    private final ByteBuffer zza;

    public zzchn(ByteBuffer byteBuffer) {
        this.zza = byteBuffer.duplicate();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzilg
    public final int zza(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2 = this.zza;
        if (byteBuffer2.remaining() != 0 || byteBuffer.remaining() <= 0) {
            int min = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
            byte[] bArr = new byte[min];
            byteBuffer2.get(bArr);
            byteBuffer.put(bArr);
            return min;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzilg
    public final long zzb() {
        return this.zza.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzilg
    public final long zzc() {
        return this.zza.position();
    }

    @Override // com.google.android.gms.internal.ads.zzilg
    public final void zzd(long j5) {
        this.zza.position((int) j5);
    }

    @Override // com.google.android.gms.internal.ads.zzilg
    public final ByteBuffer zze(long j5, long j6) {
        ByteBuffer byteBuffer = this.zza;
        int position = byteBuffer.position();
        byteBuffer.position((int) j5);
        ByteBuffer slice = byteBuffer.slice();
        slice.limit((int) j6);
        byteBuffer.position(position);
        return slice;
    }
}
