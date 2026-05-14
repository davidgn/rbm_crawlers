package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
final /* synthetic */ class zzbko implements com.google.android.gms.ads.internal.util.client.zzq {
    static final /* synthetic */ zzbko zza = new zzbko();

    private /* synthetic */ zzbko() {
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzq
    public final /* synthetic */ Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
        return queryLocalInterface instanceof zzbkq ? (zzbkq) queryLocalInterface : new zzbkq(iBinder);
    }
}
