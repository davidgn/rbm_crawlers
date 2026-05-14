package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class zzilc extends zzilf implements zzatz {
    protected final String zza = "moov";

    public zzilc(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final void zzb(zzilg zzilgVar, ByteBuffer byteBuffer, long j5, zzatw zzatwVar) {
        zzilgVar.zzc();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.zzc = zzilgVar;
        this.zze = zzilgVar.zzc();
        zzilgVar.zzd(zzilgVar.zzc() + j5);
        this.zzf = zzilgVar.zzc();
        this.zzb = zzatwVar;
    }
}
