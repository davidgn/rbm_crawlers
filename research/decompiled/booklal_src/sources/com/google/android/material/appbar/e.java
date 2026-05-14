package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class e extends V.b {
    public static final Parcelable.Creator<e> CREATOR = new Object();

    /* renamed from: c  reason: collision with root package name */
    public boolean f5736c;

    /* renamed from: d  reason: collision with root package name */
    public int f5737d;

    /* renamed from: e  reason: collision with root package name */
    public float f5738e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f5739f;

    public e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f5736c = parcel.readByte() != 0;
        this.f5737d = parcel.readInt();
        this.f5738e = parcel.readFloat();
        this.f5739f = parcel.readByte() != 0;
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f5736c ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f5737d);
        parcel.writeFloat(this.f5738e);
        parcel.writeByte(this.f5739f ? (byte) 1 : (byte) 0);
    }
}
