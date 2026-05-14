package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.interfaces.ECPublicKey;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzuq  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzuq implements zzbk {
    private final zzus zza;
    private final String zzb;
    private final byte[] zzc;
    private final zzuo zzd;

    public zzuq(ECPublicKey eCPublicKey, byte[] bArr, String str, int i, zzuo zzuoVar) {
        zzjx.zzb(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.zza = new zzus(eCPublicKey);
        this.zzc = bArr;
        this.zzb = str;
        this.zzd = zzuoVar;
    }
}
