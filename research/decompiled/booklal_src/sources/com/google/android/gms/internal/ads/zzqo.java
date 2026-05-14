package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzqo {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;
    private int zzd = 0;

    public final zzqo zza(boolean z4) {
        this.zza = z4;
        return this;
    }

    public final zzqo zzb(boolean z4) {
        this.zzb = z4;
        return this;
    }

    public final zzqo zzc(boolean z4) {
        this.zzc = z4;
        return this;
    }

    public final zzqo zzd(int i) {
        this.zzd = i;
        return this;
    }

    public final zzqp zze() {
        if (this.zza || !(this.zzb || this.zzc)) {
            return new zzqp(this, null);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false");
    }

    public final /* synthetic */ boolean zzf() {
        return this.zza;
    }

    public final /* synthetic */ boolean zzg() {
        return this.zzb;
    }

    public final /* synthetic */ boolean zzh() {
        return this.zzc;
    }

    public final /* synthetic */ int zzi() {
        return this.zzd;
    }
}
