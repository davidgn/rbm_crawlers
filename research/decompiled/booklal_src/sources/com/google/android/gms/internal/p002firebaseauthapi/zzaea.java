package com.google.android.gms.internal.p002firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "TotpInfoCreator")
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaea  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzaea extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaea> CREATOR = new zzaeb();

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        SafeParcelWriter.finishObjectHeader(parcel, SafeParcelWriter.beginObjectHeader(parcel));
    }
}
