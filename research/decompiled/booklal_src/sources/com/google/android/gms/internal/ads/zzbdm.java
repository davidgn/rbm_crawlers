package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzbdm extends zzbdj implements zzbdo {
    public zzbdm(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.ads.zzbdo
    public final Bundle zze(Bundle bundle) {
        Parcel zza = zza();
        zzbdl.zzc(zza, bundle);
        Parcel zzcZ = zzcZ(1, zza);
        Bundle bundle2 = (Bundle) zzbdl.zzb(zzcZ, Bundle.CREATOR);
        zzcZ.recycle();
        return bundle2;
    }
}
