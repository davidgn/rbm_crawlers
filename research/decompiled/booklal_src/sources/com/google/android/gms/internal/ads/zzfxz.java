package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzfxz extends Exception {
    private final int zza;

    public zzfxz(int i, String str) {
        super(str);
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }

    public zzfxz(int i, Throwable th) {
        super(th);
        this.zza = i;
    }
}
