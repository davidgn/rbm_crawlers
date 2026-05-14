package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzfc extends IllegalStateException {
    public final int zza;
    public final int zzb;

    public zzfc(int i, int i4) {
        super(i != 0 ? i != 1 ? i != 2 ? i != 3 ? com.google.android.gms.ads.internal.util.client.a.g(new StringBuilder(String.valueOf(i4).length() + 31), "Player stuck suppressed for ", i4, " ms") : com.google.android.gms.ads.internal.util.client.a.g(new StringBuilder(String.valueOf(i4).length() + 43), "Player stuck playing without ending for ", i4, " ms") : com.google.android.gms.ads.internal.util.client.a.g(new StringBuilder(String.valueOf(i4).length() + 45), "Player stuck playing with no progress for ", i4, " ms") : com.google.android.gms.ads.internal.util.client.a.g(new StringBuilder(String.valueOf(i4).length() + 47), "Player stuck buffering with no progress for ", i4, " ms") : com.google.android.gms.ads.internal.util.client.a.g(new StringBuilder(String.valueOf(i4).length() + 46), "Player stuck buffering and not loading for ", i4, " ms"));
        this.zza = i;
        this.zzb = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzfc.class == obj.getClass()) {
            zzfc zzfcVar = (zzfc) obj;
            if (this.zza == zzfcVar.zza && this.zzb == zzfcVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza + 527) * 31) + this.zzb;
    }
}
