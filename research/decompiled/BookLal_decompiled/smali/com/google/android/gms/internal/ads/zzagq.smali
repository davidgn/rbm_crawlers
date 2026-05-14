.class public final Lcom/google/android/gms/internal/ads/zzagq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafi;


# instance fields
.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzafi;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzafi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:Lcom/google/android/gms/internal/ads/zzafi;

    return-void
.end method


# virtual methods
.method public final synthetic zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    return-wide v0
.end method

.method public final zzu(II)Lcom/google/android/gms/internal/ads/zzags;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object p1

    return-object p1
.end method

.method public final zzv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzagj;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagp;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzagp;-><init>(Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzagj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    return-void
.end method
