package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "PhoneAuthCredentialCreator")
/* loaded from: classes2.dex */
public class PhoneAuthCredential extends AuthCredential implements Cloneable {
    public static final Parcelable.Creator<PhoneAuthCredential> CREATOR = new zzap();
    @SafeParcelable.Field(getter = "getSessionInfo", id = 1)
    private final String zza;
    @SafeParcelable.Field(getter = "getSmsCode", id = 2)
    private final String zzb;
    @SafeParcelable.Field(getter = "getPhoneNumber", id = 4)
    private final String zzc;
    @SafeParcelable.Field(getter = "getAutoCreate", id = 5)
    private boolean zzd;
    @SafeParcelable.Field(getter = "getTemporaryProof", id = 6)
    private final String zze;

    @SafeParcelable.Constructor
    public PhoneAuthCredential(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) boolean z4, @SafeParcelable.Param(id = 6) String str4) {
        boolean z5 = true;
        if ((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4))) {
            z5 = false;
        }
        Preconditions.checkArgument(z5, "Cannot create PhoneAuthCredential without either sessionInfo + smsCode or temporary proof + phoneNumber.");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = z4;
        this.zze = str4;
    }

    public static PhoneAuthCredential zzc(String str, String str2) {
        return new PhoneAuthCredential(str, str2, null, true, null);
    }

    public static PhoneAuthCredential zzd(String str, String str2) {
        return new PhoneAuthCredential(null, null, str, true, str2);
    }

    @Override // com.google.firebase.auth.AuthCredential
    public String getProvider() {
        return "phone";
    }

    @Override // com.google.firebase.auth.AuthCredential
    public String getSignInMethod() {
        return "phone";
    }

    public String getSmsCode() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, getSmsCode(), false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.firebase.auth.AuthCredential
    public final AuthCredential zza() {
        return clone();
    }

    /* renamed from: zzb */
    public final PhoneAuthCredential clone() {
        return new PhoneAuthCredential(this.zza, getSmsCode(), this.zzc, this.zzd, this.zze);
    }

    public final PhoneAuthCredential zze(boolean z4) {
        this.zzd = false;
        return this;
    }

    public final String zzf() {
        return this.zzc;
    }

    public final String zzg() {
        return this.zza;
    }

    public final String zzh() {
        return this.zze;
    }

    public final boolean zzi() {
        return this.zzd;
    }
}
