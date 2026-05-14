package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class zzbwv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbwv> CREATOR = new zzbww();
    public final int zza;
    public final int zzb;
    public final int zzc;

    public zzbwv(int i, int i4, int i5) {
        this.zza = i;
        this.zzb = i4;
        this.zzc = i5;
    }

    public static zzbwv zza(VersionInfo versionInfo) {
        return new zzbwv(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbwv)) {
            zzbwv zzbwvVar = (zzbwv) obj;
            if (zzbwvVar.zzc == this.zzc && zzbwvVar.zzb == this.zzb && zzbwvVar.zza == this.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.zza, this.zzb, this.zzc});
    }

    public final String toString() {
        int i = this.zza;
        int length = String.valueOf(i).length();
        int i4 = this.zzb;
        int length2 = String.valueOf(i4).length();
        int i5 = this.zzc;
        StringBuilder sb = new StringBuilder(length + 1 + length2 + 1 + String.valueOf(i5).length());
        sb.append(i);
        sb.append(".");
        sb.append(i4);
        sb.append(".");
        sb.append(i5);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i4 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i4);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
