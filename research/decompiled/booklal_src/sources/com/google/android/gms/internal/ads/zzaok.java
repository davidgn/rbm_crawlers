package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzaok implements Comparable {
    public final int zza;
    public final zzaof zzb;

    public zzaok(int i, zzaof zzaofVar) {
        this.zza = i;
        this.zzb = zzaofVar;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Integer.compare(this.zza, ((zzaok) obj).zza);
    }
}
