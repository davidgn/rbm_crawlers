package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes.dex */
final class zzajp implements Comparable {
    private final long zza;
    private final long zzb;
    private final long zzc;

    public /* synthetic */ zzajp(long j5, long j6, long j7, byte[] bArr) {
        this.zza = j5;
        this.zzb = j6;
        this.zzc = j7;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Long.compare(this.zza, ((zzajp) obj).zza);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzajp) {
            zzajp zzajpVar = (zzajp) obj;
            return this.zza == zzajpVar.zza && this.zzb == zzajpVar.zzb && this.zzc == zzajpVar.zzc;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), Long.valueOf(this.zzb), Long.valueOf(this.zzc));
    }

    public final /* synthetic */ long zza() {
        return this.zza;
    }

    public final /* synthetic */ long zzb() {
        return this.zzb;
    }

    public final /* synthetic */ long zzc() {
        return this.zzc;
    }
}
