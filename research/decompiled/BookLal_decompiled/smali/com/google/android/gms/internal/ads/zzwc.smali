.class final Lcom/google/android/gms/internal/ads/zzwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzyn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyn;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgvm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    return-object v0
.end method

.method public final zzg(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyn;->zzg(J)V

    return-void
.end method

.method public final zzi()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyn;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyn;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzlt;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzyn;->zzm(Lcom/google/android/gms/internal/ads/zzlt;)Z

    move-result p1

    return p1
.end method

.method public final zzn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyn;->zzn()Z

    move-result v0

    return v0
.end method
