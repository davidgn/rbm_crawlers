package D2;

import D0.k;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public abstract class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new k(1);

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        c cVar = (c) this;
        parcel.writeParcelable(cVar.f675a, 0);
        parcel.writeInt(cVar.f676b ? 1 : 0);
    }
}
