package a0;

import B2.z;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: a0.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0203e extends V.b {
    public static final Parcelable.Creator<C0203e> CREATOR = new z(3);

    /* renamed from: c  reason: collision with root package name */
    public int f3529c;

    /* renamed from: d  reason: collision with root package name */
    public int f3530d;

    /* renamed from: e  reason: collision with root package name */
    public int f3531e;

    /* renamed from: f  reason: collision with root package name */
    public int f3532f;

    /* renamed from: l  reason: collision with root package name */
    public int f3533l;

    public C0203e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3529c = 0;
        this.f3529c = parcel.readInt();
        this.f3530d = parcel.readInt();
        this.f3531e = parcel.readInt();
        this.f3532f = parcel.readInt();
        this.f3533l = parcel.readInt();
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f3529c);
        parcel.writeInt(this.f3530d);
        parcel.writeInt(this.f3531e);
        parcel.writeInt(this.f3532f);
        parcel.writeInt(this.f3533l);
    }
}
