package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzzr extends zzaab implements Comparable {
    private final int zze;
    private final int zzf;

    public zzzr(int i, zzbg zzbgVar, int i4, zzzu zzzuVar, int i5) {
        super(i, zzbgVar, i4);
        this.zze = zzmv.zzac(i5, zzzuVar.zzV) ? 1 : 0;
        this.zzf = this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final int zza() {
        return this.zze;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzb */
    public final int compareTo(zzzr zzzrVar) {
        return Integer.compare(this.zzf, zzzrVar.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final /* bridge */ /* synthetic */ boolean zzc(zzaab zzaabVar) {
        zzzr zzzrVar = (zzzr) zzaabVar;
        return false;
    }
}
