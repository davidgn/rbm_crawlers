package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class zzbfc extends zzbex {
    private MessageDigest zzb;

    @Override // com.google.android.gms.internal.ads.zzbex
    public final byte[] zza(String str) {
        byte[] bArr;
        byte[] bArr2;
        String[] split = str.split(" ");
        int length = split.length;
        int i = 4;
        if (length == 1) {
            int zza = zzbfb.zza(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zza);
            bArr2 = allocate.array();
        } else {
            if (length < 5) {
                bArr = new byte[length + length];
                for (int i4 = 0; i4 < split.length; i4++) {
                    int zza2 = zzbfb.zza(split[i4]);
                    int i5 = (zza2 >> 16) ^ ((char) zza2);
                    byte b5 = (byte) i5;
                    byte b6 = (byte) (i5 >> 8);
                    int i6 = i4 + i4;
                    bArr[i6] = new byte[]{b5, b6}[0];
                    bArr[i6 + 1] = b6;
                }
            } else {
                bArr = new byte[length];
                for (int i7 = 0; i7 < split.length; i7++) {
                    int zza3 = zzbfb.zza(split[i7]);
                    bArr[i7] = (byte) ((zza3 >> 24) ^ (((zza3 & 255) ^ ((zza3 >> 8) & 255)) ^ ((zza3 >> 16) & 255)));
                }
            }
            bArr2 = bArr;
        }
        this.zzb = zzb();
        synchronized (this.zza) {
            try {
                MessageDigest messageDigest = this.zzb;
                if (messageDigest == null) {
                    return new byte[0];
                }
                messageDigest.reset();
                this.zzb.update(bArr2);
                byte[] digest = this.zzb.digest();
                int length2 = digest.length;
                if (length2 <= 4) {
                    i = length2;
                }
                byte[] bArr3 = new byte[i];
                System.arraycopy(digest, 0, bArr3, 0, i);
                return bArr3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
