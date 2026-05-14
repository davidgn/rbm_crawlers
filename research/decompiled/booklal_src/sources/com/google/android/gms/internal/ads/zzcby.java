package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
final /* synthetic */ class zzcby implements com.google.android.gms.ads.internal.util.client.zzq {
    static final /* synthetic */ zzcby zza = new zzcby();

    private /* synthetic */ zzcby() {
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final /* synthetic */ Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return queryLocalInterface instanceof zzcbr ? (zzcbr) queryLocalInterface : new zzcbr(iBinder);
    }
}
