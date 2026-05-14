package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzcav extends zzbdj implements IInterface {
    public zzcav(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    public final void zze(zzcau zzcauVar, String str, String str2) {
        Parcel zza = zza();
        zzbdl.zze(zza, zzcauVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzda(2, zza);
    }
}
