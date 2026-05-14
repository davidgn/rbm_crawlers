package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes.dex */
public final class zzbmb {
    private final zzbma zza;

    public zzbmb(zzbma zzbmaVar) {
        Context context;
        this.zza = zzbmaVar;
        try {
            context = (Context) ObjectWrapper.unwrap(zzbmaVar.zzm());
        } catch (RemoteException | NullPointerException e5) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("", e5);
            context = null;
        }
        if (context != null) {
            try {
                this.zza.zzn(ObjectWrapper.wrap(new MediaView(context)));
            } catch (RemoteException e6) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("", e6);
            }
        }
    }

    public final zzbma zza() {
        return this.zza;
    }

    public final String zzb() {
        try {
            return this.zza.zzh();
        } catch (RemoteException e5) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("", e5);
            return null;
        }
    }
}
