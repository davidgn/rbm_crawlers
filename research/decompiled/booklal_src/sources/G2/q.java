package G2;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes2.dex */
public abstract class q extends k implements r {
    @Override // G2.k
    public final boolean a(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 2) {
            l.b(parcel);
            e((Bundle) l.a(parcel, Bundle.CREATOR));
            return true;
        } else if (i == 3) {
            l.b(parcel);
            c((Bundle) l.a(parcel, Bundle.CREATOR));
            return true;
        } else if (i == 4) {
            l.b(parcel);
            d((Bundle) l.a(parcel, Bundle.CREATOR));
            return true;
        } else if (i != 5) {
            return false;
        } else {
            l.b(parcel);
            b((Bundle) l.a(parcel, Bundle.CREATOR));
            return true;
        }
    }
}
