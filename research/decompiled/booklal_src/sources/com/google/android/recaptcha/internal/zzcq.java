package com.google.android.recaptcha.internal;
/* loaded from: classes2.dex */
public final class zzcq {
    public static final zzcp zza = new zzcp(null);
    private int zzb;

    public zzcq(short s5, short s6) {
        this.zzb = Math.abs((int) s5);
    }

    public final short zza() {
        int i = ((this.zzb * 4391) + 277) % 32779;
        this.zzb = i;
        return (short) (i % 255);
    }
}
