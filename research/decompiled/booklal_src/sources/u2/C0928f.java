package u2;

import android.os.Parcel;
import android.os.Parcelable;
import s2.r;
import u0.C0911q;
/* renamed from: u2.f  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0928f implements Parcelable {
    public static final Parcelable.Creator<C0928f> CREATOR = new C0911q(3);

    /* renamed from: a  reason: collision with root package name */
    public int f11033a;

    /* renamed from: b  reason: collision with root package name */
    public r f11034b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f11033a);
        parcel.writeParcelable(this.f11034b, 0);
    }
}
