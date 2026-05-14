package m2;

import B2.z;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class b extends V.b {
    public static final Parcelable.Creator<b> CREATOR = new z(8);

    /* renamed from: c  reason: collision with root package name */
    public boolean f9390c;

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            b.class.getClassLoader();
        }
        this.f9390c = parcel.readInt() == 1;
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f9390c ? 1 : 0);
    }
}
