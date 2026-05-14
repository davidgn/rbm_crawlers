package u0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: u0.r  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0912r implements Parcelable {
    public static final Parcelable.Creator<C0912r> CREATOR = new C0911q(0);

    /* renamed from: a  reason: collision with root package name */
    public int f10903a;

    /* renamed from: b  reason: collision with root package name */
    public int f10904b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10905c;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10903a);
        parcel.writeInt(this.f10904b);
        parcel.writeInt(this.f10905c ? 1 : 0);
    }
}
