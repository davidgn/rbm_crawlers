package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes.dex */
abstract class zzhit {
    int[] zza;
    private final int zzb;

    public zzhit(byte[] bArr, int i) {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.zza = zzhir.zzd(bArr);
        this.zzb = i;
    }

    public abstract int[] zza(int[] iArr, int i);

    public abstract int zzb();

    public final byte[] zzc(byte[] bArr, ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        if (bArr.length != zzb()) {
            int zzb = zzb();
            throw new GeneralSecurityException(C.a.i(zzb, "The nonce length (in bytes) must be ", new StringBuilder(String.valueOf(zzb).length() + 36)));
        }
        int remaining = byteBuffer.remaining();
        int i = remaining / 64;
        for (int i4 = 0; i4 < i + 1; i4++) {
            ByteBuffer zzd = zzd(bArr, this.zzb + i4);
            if (i4 == i) {
                zzhyk.zzc(allocate, byteBuffer, zzd, remaining % 64);
            } else {
                zzhyk.zzc(allocate, byteBuffer, zzd, 64);
            }
        }
        return allocate.array();
    }

    public final ByteBuffer zzd(byte[] bArr, int i) {
        int[] zza = zza(zzhir.zzd(bArr), i);
        int[] iArr = (int[]) zza.clone();
        zzhir.zzb(iArr);
        for (int i4 = 0; i4 < 16; i4++) {
            zza[i4] = zza[i4] + iArr[i4];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(zza, 0, 16);
        return order;
    }
}
