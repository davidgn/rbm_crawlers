package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes.dex */
public final class zzbyt extends zzbdj implements zzbyv {
    public zzbyt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zze(List list) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzda(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzf(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzda(2, zza);
    }
}
