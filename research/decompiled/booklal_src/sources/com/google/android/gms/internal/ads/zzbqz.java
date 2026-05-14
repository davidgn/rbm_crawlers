package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes.dex */
public final class zzbqz extends zzbdj implements zzbrb {
    public zzbqz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbrb
    public final void zzb(List list) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzda(1, zza);
    }
}
