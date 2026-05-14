package v0;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: v0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0933a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    public IBinder f11106a;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f11106a;
    }

    public final void b(String[] strArr) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
            obtain.writeStringArray(strArr);
            this.f11106a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
