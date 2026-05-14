package G2;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes2.dex */
public abstract class v extends k implements w {
    @Override // G2.k
    public final boolean a(int i, Parcel parcel, Parcel parcel2, int i4) {
        if (i == 2) {
            l.b(parcel);
            b((Bundle) l.a(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
