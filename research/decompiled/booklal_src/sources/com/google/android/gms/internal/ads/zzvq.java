package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Bundle;
/* loaded from: classes.dex */
final class zzvq implements zzut {
    private final MediaCodec zza;

    public zzvq(MediaCodec mediaCodec) {
        this.zza = mediaCodec;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzb(int i, int i4, int i5, long j5, int i6) {
        this.zza.queueInputBuffer(i, 0, i5, j5, i6);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzc(int i, int i4, zzil zzilVar, long j5, int i5) {
        this.zza.queueSecureInputBuffer(i, 0, zzilVar.zzb(), j5, i5);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzd(Bundle bundle) {
        this.zza.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzg() {
    }
}
