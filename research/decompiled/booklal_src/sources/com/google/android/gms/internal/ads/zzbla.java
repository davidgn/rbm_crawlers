package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzbla extends zzbdj implements zzblc {
    public zzbla(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzblc
    public final String zzb() {
        Parcel zzcZ = zzcZ(2, zza());
        String readString = zzcZ.readString();
        zzcZ.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzblc
    public final List zzc() {
        Parcel zzcZ = zzcZ(3, zza());
        ArrayList zzf = zzbdl.zzf(zzcZ);
        zzcZ.recycle();
        return zzf;
    }
}
