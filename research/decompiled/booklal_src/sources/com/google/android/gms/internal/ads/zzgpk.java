package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzgpk extends zzbdj implements zzgpm {
    public zzgpk(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void zze(String str, Bundle bundle, zzgpo zzgpoVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbdl.zzc(zza, bundle);
        zzbdl.zze(zza, zzgpoVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void zzf(Bundle bundle, zzgpo zzgpoVar) {
        Parcel zza = zza();
        zzbdl.zzc(zza, bundle);
        zzbdl.zze(zza, zzgpoVar);
        zzdb(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgpm
    public final void zzg(Bundle bundle, zzgpo zzgpoVar) {
        Parcel zza = zza();
        zzbdl.zzc(zza, bundle);
        zzbdl.zze(zza, zzgpoVar);
        zzdb(3, zza);
    }
}
