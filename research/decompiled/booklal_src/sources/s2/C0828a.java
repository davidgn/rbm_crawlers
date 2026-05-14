package s2;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: s2.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0828a extends V.b {
    public static final Parcelable.Creator<C0828a> CREATOR = new B2.z(9);

    /* renamed from: c  reason: collision with root package name */
    public boolean f10109c;

    public C0828a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f10109c = parcel.readInt() == 1;
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f10109c ? 1 : 0);
    }
}
