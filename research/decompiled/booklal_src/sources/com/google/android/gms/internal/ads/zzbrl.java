package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzbrl extends zzbdk implements zzbrm {
    public zzbrl() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel.readInt();
            zzbdl.zzh(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
