package l;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class d1 extends V.b {
    public static final Parcelable.Creator<d1> CREATOR = new B2.z(6);

    /* renamed from: c  reason: collision with root package name */
    public int f8520c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f8521d;

    public d1(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f8520c = parcel.readInt();
        this.f8521d = parcel.readInt() != 0;
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f8520c);
        parcel.writeInt(this.f8521d ? 1 : 0);
    }
}
