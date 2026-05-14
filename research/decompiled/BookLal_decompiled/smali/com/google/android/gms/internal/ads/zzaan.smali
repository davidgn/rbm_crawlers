.class public Lcom/google/android/gms/internal/ads/zzaan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaal;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzaan;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaan;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzbg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaaq;->zza()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    return-object v0
.end method

.method public zzb(I)Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaaq;->zzb(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    return-object p1
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzc()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaal;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    return-object v0
.end method

.method public final zze()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaaq;->zze()I

    move-result v0

    return v0
.end method

.method public final zzf(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaaq;->zzf(I)I

    move-result p1

    return p1
.end method

.method public final zzg(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaaq;->zzg(I)I

    move-result p1

    return p1
.end method

.method public final zzh()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zza:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzh()I

    move-result v0

    return v0
.end method
