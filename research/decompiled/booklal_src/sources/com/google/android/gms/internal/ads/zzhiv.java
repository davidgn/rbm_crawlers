package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.AEADBadTagException;
/* loaded from: classes.dex */
abstract class zzhiv {
    private final zzhit zza;
    private final zzhit zzb;

    public zzhiv(byte[] bArr) {
        if (!zzhjs.zza(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        this.zza = zza(bArr, 1);
        this.zzb = zza(bArr, 0);
    }

    public abstract zzhit zza(byte[] bArr, int i);

    public final byte[] zzb(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) {
        if (byteBuffer.remaining() >= 16) {
            int position = byteBuffer.position();
            byte[] bArr3 = new byte[16];
            byteBuffer.position(byteBuffer.limit() - 16);
            byteBuffer.get(bArr3);
            byteBuffer.position(position);
            byteBuffer.limit(byteBuffer.limit() - 16);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            try {
                byte[] bArr4 = new byte[32];
                this.zzb.zzd(bArr, 0).get(bArr4);
                int length = bArr2.length;
                int i = length & 15;
                int i4 = i == 0 ? length : (length + 16) - i;
                int remaining = byteBuffer.remaining();
                int i5 = remaining % 16;
                int i6 = (i5 == 0 ? remaining : (remaining + 16) - i5) + i4;
                ByteBuffer order = ByteBuffer.allocate(i6 + 16).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr2);
                order.position(i4);
                order.put(byteBuffer);
                order.position(i6);
                order.putLong(length);
                order.putLong(remaining);
                if (!MessageDigest.isEqual(zzhiz.zza(bArr4, order.array()), bArr3)) {
                    throw new GeneralSecurityException("invalid MAC");
                }
                byteBuffer.position(position);
                return this.zza.zzc(bArr, byteBuffer);
            } catch (GeneralSecurityException e5) {
                throw new AEADBadTagException(e5.toString());
            }
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
