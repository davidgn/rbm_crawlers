package l;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class R0 extends V.b {
    public static final Parcelable.Creator<R0> CREATOR = new B2.z(5);

    /* renamed from: c  reason: collision with root package name */
    public boolean f8448c;

    public R0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f8448c = ((Boolean) parcel.readValue(null)).booleanValue();
    }

    public final String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f8448c + "}";
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Boolean.valueOf(this.f8448c));
    }
}
