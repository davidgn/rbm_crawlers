package G2;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f965a = 0;

    static {
        l.class.getClassLoader();
    }

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail > 0) {
            throw new BadParcelableException(e1.i.a(dataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }
}
