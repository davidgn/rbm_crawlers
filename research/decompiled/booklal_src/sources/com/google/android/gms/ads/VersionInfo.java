package com.google.android.gms.ads;

import java.util.Locale;
/* loaded from: classes.dex */
public class VersionInfo {
    protected final int zza;
    protected final int zzb;
    protected final int zzc;

    public VersionInfo(int i, int i4, int i5) {
        this.zza = i;
        this.zzb = i4;
        this.zzc = i5;
    }

    public int getMajorVersion() {
        return this.zza;
    }

    public int getMicroVersion() {
        return this.zzc;
    }

    public int getMinorVersion() {
        return this.zzb;
    }

    public String toString() {
        Locale locale = Locale.US;
        int i = this.zza;
        int i4 = this.zzb;
        int i5 = this.zzc;
        return i + "." + i4 + "." + i5;
    }
}
