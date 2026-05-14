package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes.dex */
final class zzik {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public final /* synthetic */ void zza(int i, int i4) {
        MediaCodec.CryptoInfo.Pattern pattern = this.zzb;
        pattern.set(i, i4);
        this.zza.setPattern(pattern);
    }
}
