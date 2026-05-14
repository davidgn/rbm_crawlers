.class final Lcom/google/android/gms/internal/ads/zzhkc;
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

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>(Lcom/google/android/gms/internal/ads/zzhkb;[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhka;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>()V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzb(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhkb;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zzb:[J

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzb(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzhkc;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkc;
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zzb:[J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    return-object p0
.end method
