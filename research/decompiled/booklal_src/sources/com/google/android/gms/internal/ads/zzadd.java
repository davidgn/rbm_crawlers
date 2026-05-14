package com.google.android.gms.internal.ads;

import android.util.Range;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzadd {
    private long zza;
    private long zzb;
    private double zzc;
    private Range zzd;

    public zzadd(float f5) {
        Range range = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d));
        this.zzd = range;
        this.zzc = ((Double) range.getUpper()).doubleValue();
        this.zza = -9223372036854775807L;
        this.zzb = -9223372036854775807L;
    }

    public final void zza(long j5, long j6) {
        double doubleValue;
        zzgsj.zza(j5 != -9223372036854775807L);
        zzgsj.zza(j6 != -9223372036854775807L);
        long j7 = this.zza;
        if (j7 != -9223372036854775807L) {
            long j8 = this.zzb;
            if (j8 != -9223372036854775807L && j5 != j7) {
                doubleValue = (j6 - j8) / (j5 - j7);
                this.zzc = (((Double) this.zzd.clamp(Double.valueOf(doubleValue))).doubleValue() * 0.20000000298023224d) + (this.zzc * 0.800000011920929d);
                this.zza = j5;
                this.zzb = j6;
            }
        }
        doubleValue = ((Double) this.zzd.getUpper()).doubleValue();
        this.zzc = (((Double) this.zzd.clamp(Double.valueOf(doubleValue))).doubleValue() * 0.20000000298023224d) + (this.zzc * 0.800000011920929d);
        this.zza = j5;
        this.zzb = j6;
    }

    public final long zzb(long j5) {
        long j6 = this.zza;
        if (j6 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return (long) (((j5 - j6) * this.zzc) + this.zzb);
    }

    public final void zzc(float f5) {
        zzgsj.zza(f5 > 0.0f);
        this.zzd = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d / f5));
        zzd();
    }

    public final void zzd() {
        this.zzc = ((Double) this.zzd.getUpper()).doubleValue();
        this.zza = -9223372036854775807L;
        this.zzb = -9223372036854775807L;
    }
}
