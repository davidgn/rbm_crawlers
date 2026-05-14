package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public final class zzatq extends ByteArrayOutputStream {
    private final zzatf zza;

    public zzatq(zzatf zzatfVar, int i) {
        this.zza = zzatfVar;
        ((ByteArrayOutputStream) this).buf = zzatfVar.zza(Math.max(i, (int) UserVerificationMethods.USER_VERIFY_HANDPRINT));
    }

    private final void zza(int i) {
        int i4 = ((ByteArrayOutputStream) this).count;
        if (i4 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        zzatf zzatfVar = this.zza;
        int i5 = i4 + i;
        byte[] zza = zzatfVar.zza(i5 + i5);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, zza, 0, ((ByteArrayOutputStream) this).count);
        zzatfVar.zzb(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = zza;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zza.zzb(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.zza.zzb(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        zza(1);
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i4) {
        zza(i4);
        super.write(bArr, i, i4);
    }
}
