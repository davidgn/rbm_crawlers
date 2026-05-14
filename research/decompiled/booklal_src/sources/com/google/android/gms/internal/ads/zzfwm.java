package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzfwm extends zzfwj {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final long zzd;
    private final long zze;

    public /* synthetic */ zzfwm(String str, boolean z4, boolean z5, boolean z6, long j5, boolean z7, long j6, byte[] bArr) {
        this.zza = str;
        this.zzb = z4;
        this.zzc = z5;
        this.zzd = j5;
        this.zze = j6;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfwj) {
            zzfwj zzfwjVar = (zzfwj) obj;
            if (this.zza.equals(zzfwjVar.zza()) && this.zzb == zzfwjVar.zzb() && this.zzc == zzfwjVar.zzc()) {
                zzfwjVar.zzd();
                if (this.zzd == zzfwjVar.zze()) {
                    zzfwjVar.zzf();
                    if (this.zze == zzfwjVar.zzg()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ (true != this.zzb ? 1237 : 1231)) * 1000003) ^ (true != this.zzc ? 1237 : 1231)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.zzd)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.zze);
    }

    public final String toString() {
        boolean z4 = this.zzb;
        int length = String.valueOf(z4).length();
        boolean z5 = this.zzc;
        int length2 = String.valueOf(z5).length();
        long j5 = this.zzd;
        int length3 = String.valueOf(j5).length();
        long j6 = this.zze;
        int length4 = String.valueOf(j6).length();
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 56 + length + 32 + length2 + 57 + length3 + 61 + length4 + 1);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z4);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z5);
        sb.append(", enableQuerySignalsTimeout=false, querySignalsTimeoutMs=");
        sb.append(j5);
        sb.append(", enableQuerySignalsCache=false, querySignalsCacheTtlSeconds=");
        sb.append(j6);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final boolean zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final boolean zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final long zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final long zzg() {
        return this.zze;
    }
}
