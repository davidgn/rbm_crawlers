package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes.dex */
public class zzhj extends IOException {
    public final int zza;

    public zzhj(int i) {
        this.zza = i;
    }

    public zzhj(String str, int i) {
        super(str);
        this.zza = i;
    }

    public zzhj(String str, Throwable th, int i) {
        super(str, th);
        this.zza = i;
    }

    public zzhj(Throwable th, int i) {
        super(th);
        this.zza = i;
    }
}
