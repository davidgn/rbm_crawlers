package G2;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: G2.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0044a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f940a;

    /* renamed from: b  reason: collision with root package name */
    public final String f941b;

    public AbstractC0044a(IBinder iBinder, String str) {
        this.f940a = iBinder;
        this.f941b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f940a;
    }

    public final void b(int i, Parcel parcel) {
        try {
            this.f940a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
