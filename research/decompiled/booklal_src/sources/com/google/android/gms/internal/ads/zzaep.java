package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzaep {
    public static final zzaep zza = new zzaep(-3, -9223372036854775807L, -1);
    private final int zzb;
    private final long zzc;
    private final long zzd;

    private zzaep(int i, long j5, long j6) {
        this.zzb = i;
        this.zzc = j5;
        this.zzd = j6;
    }

    public static zzaep zza(long j5, long j6) {
        return new zzaep(-1, j5, j6);
    }

    public static zzaep zzb(long j5, long j6) {
        return new zzaep(-2, j5, j6);
    }

    public static zzaep zzc(long j5) {
        return new zzaep(0, -9223372036854775807L, j5);
    }

    public final /* synthetic */ int zzd() {
        return this.zzb;
    }

    public final /* synthetic */ long zze() {
        return this.zzc;
    }

    public final /* synthetic */ long zzf() {
        return this.zzd;
    }
}
