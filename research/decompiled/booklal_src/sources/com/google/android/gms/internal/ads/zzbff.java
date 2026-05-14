package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class zzbff extends zzbex {
    private MessageDigest zzb;
    private final int zzc;
    private final int zzd;

    public zzbff(int i) {
        int i4 = i >> 3;
        this.zzc = (i & 7) > 0 ? i4 + 1 : i4;
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbex
    public final byte[] zza(String str) {
        synchronized (this.zza) {
            try {
                MessageDigest zzb = zzb();
                this.zzb = zzb;
                if (zzb == null) {
                    return new byte[0];
                }
                zzb.reset();
                this.zzb.update(str.getBytes(StandardCharsets.UTF_8));
                byte[] digest = this.zzb.digest();
                int length = digest.length;
                int i = this.zzc;
                if (length > i) {
                    length = i;
                }
                byte[] bArr = new byte[length];
                System.arraycopy(digest, 0, bArr, 0, length);
                int i4 = this.zzd & 7;
                if (i4 > 0) {
                    long j5 = 0;
                    for (int i5 = 0; i5 < length; i5++) {
                        if (i5 > 0) {
                            j5 <<= 8;
                        }
                        j5 += bArr[i5] & 255;
                    }
                    long j6 = j5 >>> (8 - i4);
                    while (true) {
                        i--;
                        if (i < 0) {
                            break;
                        }
                        bArr[i] = (byte) (255 & j6);
                        j6 >>>= 8;
                    }
                }
                return bArr;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
