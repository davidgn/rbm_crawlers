package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzhl {
    private Uri zza;
    private Map zzb;
    private long zzc;
    private final long zzd;
    private int zze;

    public /* synthetic */ zzhl(zzhm zzhmVar, byte[] bArr) {
        this.zza = zzhmVar.zza;
        this.zzb = zzhmVar.zzd;
        this.zzc = zzhmVar.zze;
        this.zzd = zzhmVar.zzf;
        this.zze = zzhmVar.zzg;
    }

    public final zzhl zza(Uri uri) {
        this.zza = uri;
        return this;
    }

    public final zzhl zzb(Map map) {
        this.zzb = map;
        return this;
    }

    public final zzhl zzc(long j5) {
        this.zzc = j5;
        return this;
    }

    public final zzhl zzd(int i) {
        this.zze = 6;
        return this;
    }

    public final zzhm zze() {
        zzgsj.zzk(this.zza, "The uri must be set.");
        return new zzhm(this.zza, 0L, 1, null, this.zzb, this.zzc, this.zzd, null, this.zze, null, null);
    }

    public zzhl() {
        this.zzb = Collections.emptyMap();
        this.zzd = -1L;
    }
}
