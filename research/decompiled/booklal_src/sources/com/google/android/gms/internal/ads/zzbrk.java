package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class zzbrk extends zzbdj implements zzbrm {
    public zzbrk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zze() {
        zzda(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzf(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzda(2, zza);
    }
}
