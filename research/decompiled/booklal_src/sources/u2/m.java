package u2;

import B2.z;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class m extends V.b {
    public static final Parcelable.Creator<m> CREATOR = new z(13);

    /* renamed from: c  reason: collision with root package name */
    public Bundle f11046c;

    public m(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f11046c = parcel.readBundle(classLoader);
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeBundle(this.f11046c);
    }
}
