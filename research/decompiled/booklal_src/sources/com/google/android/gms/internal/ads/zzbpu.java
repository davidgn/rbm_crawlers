package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzbpu extends zzbdk implements zzbpv {
    public zzbpu() {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
    }

    public static zzbpv zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
        return queryLocalInterface instanceof zzbpv ? (zzbpv) queryLocalInterface : new zzbpt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 1) {
            String readString = parcel.readString();
            zzbdl.zzh(parcel);
            zzb(readString);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
