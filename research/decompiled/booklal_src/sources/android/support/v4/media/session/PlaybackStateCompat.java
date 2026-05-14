package android.support.v4.media.session;

import D0.k;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new k(12);

    /* renamed from: a  reason: collision with root package name */
    public final int f3606a;

    /* renamed from: b  reason: collision with root package name */
    public final long f3607b;

    /* renamed from: c  reason: collision with root package name */
    public final long f3608c;

    /* renamed from: d  reason: collision with root package name */
    public final float f3609d;

    /* renamed from: e  reason: collision with root package name */
    public final long f3610e;

    /* renamed from: f  reason: collision with root package name */
    public final int f3611f;

    /* renamed from: l  reason: collision with root package name */
    public final CharSequence f3612l;

    /* renamed from: m  reason: collision with root package name */
    public final long f3613m;

    /* renamed from: n  reason: collision with root package name */
    public final ArrayList f3614n;
    public final long o;

    /* renamed from: p  reason: collision with root package name */
    public final Bundle f3615p;

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Object();

        /* renamed from: a  reason: collision with root package name */
        public final String f3616a;

        /* renamed from: b  reason: collision with root package name */
        public final CharSequence f3617b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3618c;

        /* renamed from: d  reason: collision with root package name */
        public final Bundle f3619d;

        public CustomAction(Parcel parcel) {
            this.f3616a = parcel.readString();
            this.f3617b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f3618c = parcel.readInt();
            this.f3619d = parcel.readBundle(a.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f3617b) + ", mIcon=" + this.f3618c + ", mExtras=" + this.f3619d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f3616a);
            TextUtils.writeToParcel(this.f3617b, parcel, i);
            parcel.writeInt(this.f3618c);
            parcel.writeBundle(this.f3619d);
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f3606a = parcel.readInt();
        this.f3607b = parcel.readLong();
        this.f3609d = parcel.readFloat();
        this.f3613m = parcel.readLong();
        this.f3608c = parcel.readLong();
        this.f3610e = parcel.readLong();
        this.f3612l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3614n = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.o = parcel.readLong();
        this.f3615p = parcel.readBundle(a.class.getClassLoader());
        this.f3611f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.f3606a);
        sb.append(", position=");
        sb.append(this.f3607b);
        sb.append(", buffered position=");
        sb.append(this.f3608c);
        sb.append(", speed=");
        sb.append(this.f3609d);
        sb.append(", updated=");
        sb.append(this.f3613m);
        sb.append(", actions=");
        sb.append(this.f3610e);
        sb.append(", error code=");
        sb.append(this.f3611f);
        sb.append(", error message=");
        sb.append(this.f3612l);
        sb.append(", custom actions=");
        sb.append(this.f3614n);
        sb.append(", active item id=");
        return C.a.n(sb, this.o, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3606a);
        parcel.writeLong(this.f3607b);
        parcel.writeFloat(this.f3609d);
        parcel.writeLong(this.f3613m);
        parcel.writeLong(this.f3608c);
        parcel.writeLong(this.f3610e);
        TextUtils.writeToParcel(this.f3612l, parcel, i);
        parcel.writeTypedList(this.f3614n);
        parcel.writeLong(this.o);
        parcel.writeBundle(this.f3615p);
        parcel.writeInt(this.f3611f);
    }
}
