package com.google.android.gms.internal.p002firebaseauthapi;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzuu  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzuu implements zzbd {
    private final zzvm zza;
    private final zzcd zzb;
    private final int zzc;

    public zzuu(zzvm zzvmVar, zzcd zzcdVar, int i) {
        this.zza = zzvmVar;
        this.zzb = zzcdVar;
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbd
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.zzc;
        if (length >= i) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, length - i);
            this.zzb.zza(Arrays.copyOfRange(bArr, length - this.zzc, length), zzum.zzb(bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(0L).array(), 8)));
            return this.zza.zza(copyOfRange);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzbd
    public final byte[] zzb(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
