package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzbmw extends zzbdk implements zzbmx {
    public zzbmw() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
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
