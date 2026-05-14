package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes.dex */
final class zzidt extends InputStream {
    private Iterator zza;
    private ByteBuffer zzb;
    private int zzc = 0;
    private int zzd;
    private int zze;
    private boolean zzf;
    private byte[] zzg;
    private int zzh;
    private long zzi;

    public zzidt(Iterable iterable) {
        this.zza = iterable.iterator();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            ByteBuffer byteBuffer = (ByteBuffer) it.next();
            this.zzc++;
        }
        this.zzd = -1;
        if (zza()) {
            return;
        }
        this.zzb = zzidq.zzc;
        this.zze = 0;
        this.zzi = 0L;
    }

    private final boolean zza() {
        ByteBuffer byteBuffer;
        do {
            this.zzd++;
            if (!this.zza.hasNext()) {
                return false;
            }
            byteBuffer = (ByteBuffer) this.zza.next();
            this.zzb = byteBuffer;
        } while (!byteBuffer.hasRemaining());
        this.zze = this.zzb.position();
        if (this.zzb.hasArray()) {
            this.zzf = true;
            this.zzg = this.zzb.array();
            this.zzh = this.zzb.arrayOffset();
        } else {
            this.zzf = false;
            this.zzi = zziga.zzr(this.zzb);
            this.zzg = null;
        }
        return true;
    }

    private final void zzb(int i) {
        int i4 = this.zze + i;
        this.zze = i4;
        if (i4 == this.zzb.limit()) {
            zza();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.zzd == this.zzc) {
            return -1;
        }
        if (this.zzf) {
            int i = this.zzg[this.zze + this.zzh] & 255;
            zzb(1);
            return i;
        }
        int zzq = zziga.zzq(this.zze + this.zzi) & 255;
        zzb(1);
        return zzq;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i4) {
        if (this.zzd == this.zzc) {
            return -1;
        }
        int limit = this.zzb.limit();
        int i5 = this.zze;
        int i6 = limit - i5;
        if (i4 > i6) {
            i4 = i6;
        }
        if (this.zzf) {
            System.arraycopy(this.zzg, i5 + this.zzh, bArr, i, i4);
            zzb(i4);
        } else {
            int position = this.zzb.position();
            this.zzb.position(this.zze);
            this.zzb.get(bArr, i, i4);
            this.zzb.position(position);
            zzb(i4);
        }
        return i4;
    }
}
