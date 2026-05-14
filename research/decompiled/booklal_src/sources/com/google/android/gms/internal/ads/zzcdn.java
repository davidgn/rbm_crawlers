package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzcdn extends zzbdk implements zzcdo {
    public zzcdn() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 1) {
            parcel.readString();
            parcel.readString();
            zzbdl.zzh(parcel);
        } else if (i == 2) {
            String readString = parcel.readString();
            zzbdl.zzh(parcel);
            zzb(readString);
        } else if (i != 3) {
            return false;
        } else {
            zzbdl.zzh(parcel);
            zzc(parcel.readString(), parcel.readString(), (Bundle) zzbdl.zzb(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
