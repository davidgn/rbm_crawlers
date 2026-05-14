package com.google.android.gms.internal.p002firebaseauthapi;

import e1.i;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzhb  reason: invalid package */
/* loaded from: classes2.dex */
abstract class zzhb {
    int[] zza;
    private final int zzb;

    public zzhb(byte[] bArr, int i) {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.zza = zzgx.zzd(bArr);
        this.zzb = i;
    }

    public abstract int zza();

    public abstract int[] zzb(int[] iArr, int i);

    public final ByteBuffer zzc(byte[] bArr, int i) {
        int[] zzb = zzb(zzgx.zzd(bArr), i);
        int[] iArr = (int[]) zzb.clone();
        zzgx.zzc(iArr);
        for (int i4 = 0; i4 < 16; i4++) {
            zzb[i4] = zzb[i4] + iArr[i4];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(zzb, 0, 16);
        return order;
    }

    public final byte[] zzd(byte[] bArr, ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        if (bArr.length == zza()) {
            int remaining = byteBuffer.remaining();
            int i = remaining / 64;
            for (int i4 = 0; i4 < i + 1; i4++) {
                ByteBuffer zzc = zzc(bArr, this.zzb + i4);
                if (i4 == i) {
                    zzum.zza(allocate, byteBuffer, zzc, remaining % 64);
                } else {
                    zzum.zza(allocate, byteBuffer, zzc, 64);
                }
            }
            return allocate.array();
        }
        throw new GeneralSecurityException(i.a(zza(), "The nonce length (in bytes) must be "));
    }
}
