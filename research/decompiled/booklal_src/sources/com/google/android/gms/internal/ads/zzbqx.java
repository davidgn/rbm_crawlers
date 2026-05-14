package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzbqx extends zzbdk implements zzbqy {
    public zzbqx() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    public static zzbqy zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        return queryLocalInterface instanceof zzbqy ? (zzbqy) queryLocalInterface : new zzbqw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 2) {
            zze();
        } else if (i != 3) {
            return false;
        } else {
            String readString = parcel.readString();
            zzbdl.zzh(parcel);
            zzf(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
