package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzls {
    private long zza;
    private float zzb;
    private long zzc;

    public zzls() {
        this.zza = -9223372036854775807L;
        this.zzb = -3.4028235E38f;
        this.zzc = -9223372036854775807L;
    }

    public final zzls zza(long j5) {
        this.zza = j5;
        return this;
    }

    public final zzls zzb(float f5) {
        boolean z4 = true;
        if (f5 <= 0.0f && f5 != -3.4028235E38f) {
            z4 = false;
        }
        zzgsj.zza(z4);
        this.zzb = f5;
        return this;
    }

    public final zzls zzc(long j5) {
        boolean z4 = true;
        if (j5 < 0) {
            if (j5 == -9223372036854775807L) {
                j5 = -9223372036854775807L;
            } else {
                z4 = false;
            }
        }
        zzgsj.zza(z4);
        this.zzc = j5;
        return this;
    }

    public final zzlt zzd() {
        return new zzlt(this, null);
    }

    public final /* synthetic */ long zze() {
        return this.zza;
    }

    public final /* synthetic */ float zzf() {
        return this.zzb;
    }

    public final /* synthetic */ long zzg() {
        return this.zzc;
    }

    public /* synthetic */ zzls(zzlt zzltVar, byte[] bArr) {
        this.zza = zzltVar.zza;
        this.zzb = zzltVar.zzb;
        this.zzc = zzltVar.zzc;
    }
}
