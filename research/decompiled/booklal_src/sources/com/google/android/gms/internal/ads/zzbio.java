package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzbio extends zzbdj implements zzbiq {
    public zzbio(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    public final void zze(zzbin zzbinVar) {
        Parcel zza = zza();
        zzbdl.zze(zza, zzbinVar);
        zzda(1, zza);
    }
}
