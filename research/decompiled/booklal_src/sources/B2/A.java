package B2;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class A extends V.b {
    public static final Parcelable.Creator<A> CREATOR = new z(0);

    /* renamed from: c  reason: collision with root package name */
    public CharSequence f201c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f202d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f203e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f204f;

    /* renamed from: l  reason: collision with root package name */
    public CharSequence f205l;

    public A(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f201c = (CharSequence) creator.createFromParcel(parcel);
        this.f202d = parcel.readInt() == 1;
        this.f203e = (CharSequence) creator.createFromParcel(parcel);
        this.f204f = (CharSequence) creator.createFromParcel(parcel);
        this.f205l = (CharSequence) creator.createFromParcel(parcel);
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f201c) + " hint=" + ((Object) this.f203e) + " helperText=" + ((Object) this.f204f) + " placeholderText=" + ((Object) this.f205l) + "}";
    }

    @Override // V.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        TextUtils.writeToParcel(this.f201c, parcel, i);
        parcel.writeInt(this.f202d ? 1 : 0);
        TextUtils.writeToParcel(this.f203e, parcel, i);
        TextUtils.writeToParcel(this.f204f, parcel, i);
        TextUtils.writeToParcel(this.f205l, parcel, i);
    }
}
