package u0;

import android.os.Parcel;
import android.os.Parcelable;
import u2.C0928f;
/* renamed from: u0.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0911q implements Parcelable.Creator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f10902a;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, u0.r] */
    /* JADX WARN: Type inference failed for: r0v2, types: [u0.b0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [u0.c0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [u2.f, java.lang.Object] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f10902a) {
            case 0:
                ?? obj = new Object();
                obj.f10903a = parcel.readInt();
                obj.f10904b = parcel.readInt();
                obj.f10905c = parcel.readInt() == 1;
                return obj;
            case 1:
                ?? obj2 = new Object();
                obj2.f10767a = parcel.readInt();
                obj2.f10768b = parcel.readInt();
                obj2.f10770d = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    obj2.f10769c = iArr;
                    parcel.readIntArray(iArr);
                }
                return obj2;
            case 2:
                ?? obj3 = new Object();
                obj3.f10776a = parcel.readInt();
                obj3.f10777b = parcel.readInt();
                int readInt2 = parcel.readInt();
                obj3.f10778c = readInt2;
                if (readInt2 > 0) {
                    int[] iArr2 = new int[readInt2];
                    obj3.f10779d = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int readInt3 = parcel.readInt();
                obj3.f10780e = readInt3;
                if (readInt3 > 0) {
                    int[] iArr3 = new int[readInt3];
                    obj3.f10781f = iArr3;
                    parcel.readIntArray(iArr3);
                }
                obj3.f10783m = parcel.readInt() == 1;
                obj3.f10784n = parcel.readInt() == 1;
                obj3.o = parcel.readInt() == 1;
                obj3.f10782l = parcel.readArrayList(b0.class.getClassLoader());
                return obj3;
            default:
                ?? obj4 = new Object();
                obj4.f11033a = parcel.readInt();
                obj4.f11034b = (s2.r) parcel.readParcelable(C0928f.class.getClassLoader());
                return obj4;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f10902a) {
            case 0:
                return new C0912r[i];
            case 1:
                return new b0[i];
            case 2:
                return new c0[i];
            default:
                return new C0928f[i];
        }
    }
}
