package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzgdp implements Comparable {
    final Runnable zza;
    final long zzb;

    public zzgdp(Runnable runnable, long j5) {
        this.zza = runnable;
        this.zzb = j5;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Long.compare(this.zzb, ((zzgdp) obj).zzb);
    }
}
