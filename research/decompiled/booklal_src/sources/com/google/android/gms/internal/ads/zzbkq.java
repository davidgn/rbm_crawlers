package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzbkq extends zzbdj implements IInterface {
    public zzbkq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
    }

    public final void zze(zzbzj zzbzjVar) {
        Parcel zza = zza();
        zzbdl.zze(zza, zzbzjVar);
        zzda(1, zza);
    }
}
