.class Lcom/google/android/gms/internal/ads/zzhjy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:[J

.field final zzb:[J

.field final zzc:[J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    .line 2
    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjy;-><init>([J[J[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhjy;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    .line 5
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    return-void
.end method

.method public constructor <init>([J[J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    return-void
.end method


# virtual methods
.method public zza([J[J)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhjy;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhjy;->zza:[J

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhjx;->zza([J[JI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhjy;->zzb:[J

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhjx;->zza([J[JI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhjy;->zzc:[J

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhjx;->zza([J[JI)V

    return-void
.end method
