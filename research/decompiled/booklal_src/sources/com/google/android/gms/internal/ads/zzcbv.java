package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzcbv extends zzbdj implements IInterface {
    public zzcbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    public final void zze(zzcbk zzcbkVar, String str, String str2) {
        Parcel zza = zza();
        zzbdl.zze(zza, zzcbkVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzda(2, zza);
    }
}
