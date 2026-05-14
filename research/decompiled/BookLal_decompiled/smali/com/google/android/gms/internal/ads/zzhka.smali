.class final Lcom/google/android/gms/internal/ads/zzhka;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhkb;

.field final zzb:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhka;-><init>(Lcom/google/android/gms/internal/ads/zzhkb;[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhka;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>(Lcom/google/android/gms/internal/ads/zzhkb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    const/16 v0, 0xa

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhkb;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    return-void
.end method
