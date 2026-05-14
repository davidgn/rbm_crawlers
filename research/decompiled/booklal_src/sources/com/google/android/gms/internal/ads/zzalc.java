package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzalc implements zzagn {
    public static final zzalc zza = new zzalc(true);
    public static final zzalc zzb = new zzalc(false);
    public final boolean zzc;

    private zzalc(boolean z4) {
        this.zzc = z4;
    }

    public final String toString() {
        boolean z4 = !this.zzc;
        StringBuilder sb = new StringBuilder(String.valueOf(z4).length() + 33);
        sb.append("IncorrectFragmentation{expected=");
        sb.append(z4);
        sb.append("}");
        return sb.toString();
    }
}
