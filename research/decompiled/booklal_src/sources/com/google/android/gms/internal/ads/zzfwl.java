package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzfwl extends zzfwi {
    private String zza;
    private boolean zzb;
    private boolean zzc;
    private long zzd;
    private long zze;
    private byte zzf;

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwi zza(String str) {
        if (str != null) {
            this.zza = str;
            return this;
        }
        throw new NullPointerException("Null clientVersion");
    }

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwi zzb(boolean z4) {
        this.zzb = z4;
        this.zzf = (byte) (this.zzf | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwi zzc(boolean z4) {
        this.zzc = true;
        this.zzf = (byte) (this.zzf | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwi zzd(boolean z4) {
        this.zzf = (byte) (this.zzf | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwi zze(long j5) {
        this.zzd = 100L;
        this.zzf = (byte) (this.zzf | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwi zzf(boolean z4) {
        this.zzf = (byte) (this.zzf | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwi zzg(long j5) {
        this.zze = 300L;
        this.zzf = (byte) (this.zzf | 32);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwi
    public final zzfwj zzh() {
        String str;
        if (this.zzf != 63 || (str = this.zza) == null) {
            StringBuilder sb = new StringBuilder();
            if (this.zza == null) {
                sb.append(" clientVersion");
            }
            if ((this.zzf & 1) == 0) {
                sb.append(" shouldGetAdvertisingId");
            }
            if ((this.zzf & 2) == 0) {
                sb.append(" isGooglePlayServicesAvailable");
            }
            if ((this.zzf & 4) == 0) {
                sb.append(" enableQuerySignalsTimeout");
            }
            if ((this.zzf & 8) == 0) {
                sb.append(" querySignalsTimeoutMs");
            }
            if ((this.zzf & 16) == 0) {
                sb.append(" enableQuerySignalsCache");
            }
            if ((this.zzf & 32) == 0) {
                sb.append(" querySignalsCacheTtlSeconds");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new zzfwm(str, this.zzb, this.zzc, false, this.zzd, false, this.zze, null);
    }
}
