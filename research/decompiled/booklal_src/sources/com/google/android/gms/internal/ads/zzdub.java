package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzdub implements zzbov {
    final /* synthetic */ zzduc zza;
    private final WeakReference zzb;
    private final String zzc;
    private final zzbov zzd;

    public /* synthetic */ zzdub(zzduc zzducVar, WeakReference weakReference, String str, zzbov zzbovVar, byte[] bArr) {
        Objects.requireNonNull(zzducVar);
        this.zza = zzducVar;
        this.zzb = weakReference;
        this.zzc = str;
        this.zzd = zzbovVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void zza(Object obj, Map map) {
        Object obj2 = this.zzb.get();
        if (obj2 == null) {
            this.zza.zze(this.zzc, this);
        } else {
            this.zzd.zza(obj2, map);
        }
    }
}
