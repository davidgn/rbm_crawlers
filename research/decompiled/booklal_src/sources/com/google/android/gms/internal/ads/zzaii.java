package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzaii implements zzao {
    public final long zza;

    public zzaii(long j5) {
        this.zza = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzaii.class == obj.getClass() && this.zza == ((zzaii) obj).zza;
    }

    public final int hashCode() {
        return Long.hashCode(this.zza) + 527;
    }

    public final String toString() {
        long j5 = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(j5).length() + 38);
        sb.append("ThumbnailMetadata: presentationTimeUs=");
        sb.append(j5);
        return sb.toString();
    }
}
