package u2;

import B2.z;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class j extends V.b {
    public static final Parcelable.Creator<j> CREATOR = new z(12);

    /* renamed from: c  reason: collision with root package name */
    public Bundle f11038c;

    public j(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f11038c = parcel.readBundle(classLoader == null ? j.class.getClassLoader() : classLoader);
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeBundle(this.f11038c);
    }
}
