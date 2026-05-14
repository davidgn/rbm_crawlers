package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
/* loaded from: classes.dex */
public final class zzup {
    public final zzuv zza;
    public final MediaFormat zzb;
    public final zzv zzc;
    public final Surface zzd;
    public final MediaCrypto zze = null;
    public final zzuo zzf;

    private zzup(zzuv zzuvVar, MediaFormat mediaFormat, zzv zzvVar, Surface surface, MediaCrypto mediaCrypto, zzuo zzuoVar) {
        this.zza = zzuvVar;
        this.zzb = mediaFormat;
        this.zzc = zzvVar;
        this.zzd = surface;
        this.zzf = zzuoVar;
    }

    public static zzup zza(zzuv zzuvVar, MediaFormat mediaFormat, zzv zzvVar, MediaCrypto mediaCrypto, zzuo zzuoVar) {
        return new zzup(zzuvVar, mediaFormat, zzvVar, null, null, zzuoVar);
    }

    public static zzup zzb(zzuv zzuvVar, MediaFormat mediaFormat, zzv zzvVar, Surface surface, MediaCrypto mediaCrypto) {
        return new zzup(zzuvVar, mediaFormat, zzvVar, surface, null, null);
    }
}
