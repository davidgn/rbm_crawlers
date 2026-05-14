package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class zzbgz {
    zzbdr zza;
    boolean zzb;
    private final ExecutorService zzc;

    public zzbgz() {
        this.zzc = com.google.android.gms.ads.internal.util.client.zzb.zzb;
    }

    public final /* synthetic */ ExecutorService zza() {
        return this.zzc;
    }

    public zzbgz(final Context context) {
        ExecutorService executorService = com.google.android.gms.ads.internal.util.client.zzb.zzb;
        this.zzc = executorService;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbgv
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbhv.zzge)).booleanValue();
                Context context2 = context;
                zzbgz zzbgzVar = zzbgz.this;
                if (booleanValue) {
                    try {
                        zzbgzVar.zza = (zzbdr) com.google.android.gms.ads.internal.util.client.zzs.zza(context2, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", zzbgw.zza);
                        zzbgzVar.zza.zze(ObjectWrapper.wrap(context2), "GMA_SDK");
                        zzbgzVar.zzb = true;
                    } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException unused) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzd("Cannot dynamite load clearcut");
                    }
                }
            }
        });
    }
}
