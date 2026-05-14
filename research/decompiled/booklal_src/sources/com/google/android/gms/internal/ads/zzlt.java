package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
public final class zzlt {
    public final long zza;
    public final float zzb;
    public final long zzc;

    public /* synthetic */ zzlt(zzls zzlsVar, byte[] bArr) {
        this.zza = zzlsVar.zze();
        this.zzb = zzlsVar.zzf();
        this.zzc = zzlsVar.zzg();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzlt) {
            zzlt zzltVar = (zzlt) obj;
            return this.zza == zzltVar.zza && this.zzb == zzltVar.zzb && this.zzc == zzltVar.zzc;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), Float.valueOf(this.zzb), Long.valueOf(this.zzc));
    }

    public final zzls zza() {
        return new zzls(this, null);
    }
}
