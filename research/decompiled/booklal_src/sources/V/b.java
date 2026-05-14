package V;

import B2.z;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public abstract class b implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    public final Parcelable f2766a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f2765b = new b();
    public static final Parcelable.Creator<b> CREATOR = new z(2);

    public b() {
        this.f2766a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2766a, i);
    }

    public b(Parcelable parcelable) {
        if (parcelable != null) {
            this.f2766a = parcelable == f2765b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f2766a = readParcelable == null ? f2765b : readParcelable;
    }
}
