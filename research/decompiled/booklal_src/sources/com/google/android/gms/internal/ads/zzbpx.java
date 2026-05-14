package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzbpx extends zzbdk implements zzbpy {
    public zzbpx() {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    public static zzbpy zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
        return queryLocalInterface instanceof zzbpy ? (zzbpy) queryLocalInterface : new zzbpw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 1) {
            String readString = parcel.readString();
            zzbdl.zzh(parcel);
            zze(readString);
        } else if (i != 2) {
            return false;
        } else {
            zzf();
        }
        parcel2.writeNoException();
        return true;
    }
}
