package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzbqw extends zzbdj implements zzbqy {
    public zzbqw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zze() {
        zzda(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zzf(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(3, zza);
    }
}
