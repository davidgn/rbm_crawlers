package z;

import B2.z;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
/* loaded from: classes.dex */
public final class f extends V.b {
    public static final Parcelable.Creator<f> CREATOR = new z(14);

    /* renamed from: c  reason: collision with root package name */
    public SparseArray f11634c;

    public f(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        this.f11634c = new SparseArray(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f11634c.append(iArr[i], readParcelableArray[i]);
        }
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SparseArray sparseArray = this.f11634c;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr[i4] = this.f11634c.keyAt(i4);
            parcelableArr[i4] = (Parcelable) this.f11634c.valueAt(i4);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i);
    }
}
