package com.google.android.gms.internal.p002firebaseauthapi;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzjo  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzjo {
    private final zzbd zza;
    private final zzbi zzb;

    public zzjo(zzbd zzbdVar) {
        this.zza = zzbdVar;
        this.zzb = null;
    }

    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        zzbd zzbdVar = this.zza;
        return zzbdVar != null ? zzbdVar.zza(bArr, bArr2) : this.zzb.zza(bArr, bArr2);
    }

    public zzjo(zzbi zzbiVar) {
        this.zza = null;
        this.zzb = zzbiVar;
    }
}
