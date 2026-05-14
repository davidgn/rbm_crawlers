package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzbku extends zzbli {
    private final Drawable zza;
    private final Uri zzb;
    private final double zzc;
    private final int zzd;
    private final int zze;
    private final Map zzf;

    public zzbku(Drawable drawable, Uri uri, double d2, int i, int i4, Map map) {
        this.zza = drawable;
        this.zzb = uri;
        this.zzc = d2;
        this.zzd = i;
        this.zze = i4;
        this.zzf = map;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final IObjectWrapper zzb() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final double zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final int zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final int zzf() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final Map zzg() {
        return this.zzf;
    }
}
