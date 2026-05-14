package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: c.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class BinderC0298c extends Binder implements InterfaceC0297b {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f4811b = 0;

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0299d f4812a;

    public BinderC0298c(C0299d c0299d) {
        this.f4812a = c0299d;
        attachInterface(this, InterfaceC0297b.f4810k);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i4) {
        String str = InterfaceC0297b.f4810k;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        } else if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i4);
        } else {
            int readInt = parcel.readInt();
            Object createFromParcel = parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null;
            C0299d c0299d = this.f4812a;
            c0299d.getClass();
            c0299d.a(readInt, (Bundle) createFromParcel);
            return true;
        }
    }
}
