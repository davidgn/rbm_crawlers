package u0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class b0 implements Parcelable {
    public static final Parcelable.Creator<b0> CREATOR = new C0911q(1);

    /* renamed from: a  reason: collision with root package name */
    public int f10767a;

    /* renamed from: b  reason: collision with root package name */
    public int f10768b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f10769c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10770d;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f10767a + ", mGapDir=" + this.f10768b + ", mHasUnwantedGapAfter=" + this.f10770d + ", mGapPerSpan=" + Arrays.toString(this.f10769c) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10767a);
        parcel.writeInt(this.f10768b);
        parcel.writeInt(this.f10770d ? 1 : 0);
        int[] iArr = this.f10769c;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(iArr.length);
        parcel.writeIntArray(this.f10769c);
    }
}
