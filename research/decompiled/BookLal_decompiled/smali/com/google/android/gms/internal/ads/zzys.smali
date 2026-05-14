.class final Lcom/google/android/gms/internal/ads/zzys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzyl;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzys;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzc()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyl;->zzd(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzys;->zzb:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    return p3

    :cond_0
    return p1
.end method

.method public final zze(J)I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzys;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzyl;->zze(J)I

    move-result p1

    return p1
.end method
