.class public interface abstract Lcom/google/android/gms/internal/ads/zzlr;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPrepared not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzlq;Lcom/google/android/gms/internal/ads/zzyw;[Lcom/google/android/gms/internal/ads/zzaal;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onTracksSelected not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onStopped not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzd(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onReleased not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract zze(Lcom/google/android/gms/internal/ads/zzpy;)Lcom/google/android/gms/internal/ads/zzaaw;
.end method

.method public zzf(Lcom/google/android/gms/internal/ads/zzpy;)J
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getBackBufferDurationUs not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzg(Lcom/google/android/gms/internal/ads/zzpy;)Z
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "retainBackBufferFromKeyframe not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzh(Lcom/google/android/gms/internal/ads/zzlq;)Z
    .locals 2

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzd:J

    const/4 p1, 0x0

    throw p1
.end method

.method public zzi(Lcom/google/android/gms/internal/ads/zzlq;)Z
    .locals 0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    const/4 p1, 0x0

    throw p1
.end method

.method public zzj(Lcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwt;J)Z
    .locals 0

    const-string p1, "LoadControl"

    const-string p2, "shouldContinuePreloading needs to be implemented when playlist preloading is enabled"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
