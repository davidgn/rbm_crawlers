package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzfme implements zzfmc {
    private final String zza;

    public zzfme(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfmc
    public final boolean equals(Object obj) {
        if (obj instanceof zzfme) {
            return this.zza.equals(((zzfme) obj).zza);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfmc
    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza;
    }
}
