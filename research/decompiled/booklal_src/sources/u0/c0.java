package u0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class c0 implements Parcelable {
    public static final Parcelable.Creator<c0> CREATOR = new C0911q(2);

    /* renamed from: a  reason: collision with root package name */
    public int f10776a;

    /* renamed from: b  reason: collision with root package name */
    public int f10777b;

    /* renamed from: c  reason: collision with root package name */
    public int f10778c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f10779d;

    /* renamed from: e  reason: collision with root package name */
    public int f10780e;

    /* renamed from: f  reason: collision with root package name */
    public int[] f10781f;

    /* renamed from: l  reason: collision with root package name */
    public ArrayList f10782l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f10783m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f10784n;
    public boolean o;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10776a);
        parcel.writeInt(this.f10777b);
        parcel.writeInt(this.f10778c);
        if (this.f10778c > 0) {
            parcel.writeIntArray(this.f10779d);
        }
        parcel.writeInt(this.f10780e);
        if (this.f10780e > 0) {
            parcel.writeIntArray(this.f10781f);
        }
        parcel.writeInt(this.f10783m ? 1 : 0);
        parcel.writeInt(this.f10784n ? 1 : 0);
        parcel.writeInt(this.o ? 1 : 0);
        parcel.writeList(this.f10782l);
    }
}
