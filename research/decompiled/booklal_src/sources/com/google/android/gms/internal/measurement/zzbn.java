package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2.dex */
public class zzbn extends Binder implements IInterface {
    public zzbn(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i4)) {
            return true;
        }
        return zza(i, parcel, parcel2, i4);
    }

    public boolean zza(int i, Parcel parcel, Parcel parcel2, int i4) {
        throw null;
    }
}
