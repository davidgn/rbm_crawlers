package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* loaded from: classes.dex */
public abstract class zzbql extends zzbdk implements zzbqm {
    public zzbql() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final boolean zzdd(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 1) {
            zzbdl.zzh(parcel);
            zzb((ParcelFileDescriptor) zzbdl.zzb(parcel, ParcelFileDescriptor.CREATOR));
            return true;
        }
        return false;
    }
}
