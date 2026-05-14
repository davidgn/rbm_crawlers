package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbdj;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbuh;
/* loaded from: classes.dex */
public final class zzbv extends zzbdj implements IInterface {
    public zzbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbuh zzbuhVar, int i, int i4) {
        Parcel zza = zza();
        zzbdl.zze(zza, iObjectWrapper);
        zzbdl.zzc(zza, zzrVar);
        zza.writeString(str);
        zzbdl.zze(zza, zzbuhVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        zza.writeInt(i4);
        Parcel zzcZ = zzcZ(2, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        zzcZ.recycle();
        return readStrongBinder;
    }
}
