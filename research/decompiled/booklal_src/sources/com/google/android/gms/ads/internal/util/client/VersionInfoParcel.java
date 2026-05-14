package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes.dex */
public final class VersionInfoParcel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VersionInfoParcel> CREATOR = new zzy();
    public String afmaVersion;
    public int buddyApkVersion;
    public int clientJarVersion;
    public boolean isClientJar;
    public boolean isLiteSdk;

    public VersionInfoParcel(int i, int i4, boolean z4) {
        this(i, i4, z4, false, false);
    }

    public static VersionInfoParcel forPackage() {
        return new VersionInfoParcel(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE, true);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.afmaVersion, false);
        SafeParcelWriter.writeInt(parcel, 3, this.buddyApkVersion);
        SafeParcelWriter.writeInt(parcel, 4, this.clientJarVersion);
        SafeParcelWriter.writeBoolean(parcel, 5, this.isClientJar);
        SafeParcelWriter.writeBoolean(parcel, 6, this.isLiteSdk);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public VersionInfoParcel(int i, int i4, boolean z4, boolean z5) {
        this(i, i4, z4, false, z5);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VersionInfoParcel(int r10, int r11, boolean r12, boolean r13, boolean r14) {
        /*
            r9 = this;
            if (r12 == 0) goto L5
            java.lang.String r13 = "0"
            goto Lc
        L5:
            if (r13 == 0) goto La
            java.lang.String r13 = "2"
            goto Lc
        La:
            java.lang.String r13 = "1"
        Lc:
            java.lang.String r0 = java.lang.String.valueOf(r10)
            int r0 = r0.length()
            java.lang.String r1 = java.lang.String.valueOf(r11)
            int r0 = r0 + 13
            int r1 = r1.length()
            int r1 = r1 + r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r1 + 2
            r0.<init>(r1)
            java.lang.String r1 = "afma-sdk-a-v"
            java.lang.String r2 = "."
            C.a.u(r0, r1, r10, r2, r11)
            java.lang.String r4 = C.a.p(r0, r2, r13)
            r3 = r9
            r5 = r10
            r6 = r11
            r7 = r12
            r8 = r14
            r3.<init>(r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.client.VersionInfoParcel.<init>(int, int, boolean, boolean, boolean):void");
    }

    public VersionInfoParcel(String str, int i, int i4, boolean z4, boolean z5) {
        this.afmaVersion = str;
        this.buddyApkVersion = i;
        this.clientJarVersion = i4;
        this.isClientJar = z4;
        this.isLiteSdk = z5;
    }
}
