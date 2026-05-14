package B2;

import a0.C0203e;
import android.os.Parcel;
import android.os.Parcelable;
import l.R0;
import l.d1;
import l2.C0624c;
import s2.C0828a;
import u0.C0889O;
/* loaded from: classes2.dex */
public final class z implements Parcelable.ClassLoaderCreator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f289a;

    public /* synthetic */ z(int i) {
        this.f289a = i;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f289a) {
            case 0:
                return new A(parcel, classLoader);
            case 1:
                return new I0.j(parcel, classLoader);
            case 2:
                if (parcel.readParcelable(classLoader) == null) {
                    return V.b.f2765b;
                }
                throw new IllegalStateException("superState must be null");
            case 3:
                return new C0203e(parcel, classLoader);
            case 4:
                return new androidx.fragment.app.A(parcel, classLoader);
            case 5:
                return new R0(parcel, classLoader);
            case 6:
                return new d1(parcel, classLoader);
            case 7:
                return new C0624c(parcel, classLoader);
            case 8:
                return new m2.b(parcel, classLoader);
            case 9:
                return new C0828a(parcel, classLoader);
            case 10:
                return new s2.r(parcel, classLoader);
            case 11:
                return new C0889O(parcel, classLoader);
            case 12:
                return new u2.j(parcel, classLoader);
            case 13:
                return new u2.m(parcel, classLoader);
            default:
                return new z.f(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f289a) {
            case 0:
                return new A[i];
            case 1:
                return new I0.j[i];
            case 2:
                return new V.b[i];
            case 3:
                return new C0203e[i];
            case 4:
                return new androidx.fragment.app.A[i];
            case 5:
                return new R0[i];
            case 6:
                return new d1[i];
            case 7:
                return new C0624c[i];
            case 8:
                return new m2.b[i];
            case 9:
                return new C0828a[i];
            case 10:
                return new s2.r[i];
            case 11:
                return new C0889O[i];
            case 12:
                return new u2.j[i];
            case 13:
                return new u2.m[i];
            default:
                return new z.f[i];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f289a) {
            case 0:
                return new A(parcel, null);
            case 1:
                return new I0.j(parcel, null);
            case 2:
                if (parcel.readParcelable(null) == null) {
                    return V.b.f2765b;
                }
                throw new IllegalStateException("superState must be null");
            case 3:
                return new C0203e(parcel, null);
            case 4:
                return new androidx.fragment.app.A(parcel, null);
            case 5:
                return new R0(parcel, null);
            case 6:
                return new d1(parcel, null);
            case 7:
                return new C0624c(parcel, (ClassLoader) null);
            case 8:
                return new m2.b(parcel, null);
            case 9:
                return new C0828a(parcel, null);
            case 10:
                return new s2.r(parcel, null);
            case 11:
                return new C0889O(parcel, null);
            case 12:
                return new u2.j(parcel, null);
            case 13:
                return new u2.m(parcel, null);
            default:
                return new z.f(parcel, null);
        }
    }
}
