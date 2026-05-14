package com.google.android.gms.internal.p002firebaseauthapi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.AEADBadTagException;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzhd  reason: invalid package */
/* loaded from: classes2.dex */
abstract class zzhd {
    private final zzhb zza;
    private final zzhb zzb;

    public zzhd(byte[] bArr) {
        if (!zzhj.zza(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        this.zza = zza(bArr, 1);
        this.zzb = zza(bArr, 0);
    }

    public abstract zzhb zza(byte[] bArr, int i);

    public final byte[] zzb(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) {
        if (byteBuffer.remaining() >= 16) {
            int position = byteBuffer.position();
            byte[] bArr3 = new byte[16];
            byteBuffer.position(byteBuffer.limit() - 16);
            byteBuffer.get(bArr3);
            byteBuffer.position(position);
            byteBuffer.limit(byteBuffer.limit() - 16);
            try {
                byte[] bArr4 = new byte[32];
                this.zzb.zzc(bArr, 0).get(bArr4);
                int remaining = byteBuffer.remaining();
                int i = remaining % 16;
                int i4 = i == 0 ? remaining : (remaining + 16) - i;
                ByteBuffer order = ByteBuffer.allocate(i4 + 16).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr2);
                order.position(0);
                order.put(byteBuffer);
                order.position(i4);
                order.putLong(0L);
                order.putLong(remaining);
                if (!MessageDigest.isEqual(zzhg.zza(bArr4, order.array()), bArr3)) {
                    throw new GeneralSecurityException("invalid MAC");
                }
                byteBuffer.position(position);
                return this.zza.zzd(bArr, byteBuffer);
            } catch (GeneralSecurityException e5) {
                throw new AEADBadTagException(e5.toString());
            }
        }
        throw new GeneralSecurityException("ciphertext too short");
    }

    public final byte[] zzc(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return zzb(ByteBuffer.wrap(bArr2), bArr, bArr3);
    }
}
