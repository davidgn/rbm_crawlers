package c;

import D0.k;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: c.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0299d implements Parcelable {
    public static final Parcelable.Creator<C0299d> CREATOR = new k(18);

    /* renamed from: a  reason: collision with root package name */
    public InterfaceC0297b f4813a;

    public void a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            try {
                if (this.f4813a == null) {
                    this.f4813a = new BinderC0298c(this);
                }
                parcel.writeStrongBinder(this.f4813a.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
