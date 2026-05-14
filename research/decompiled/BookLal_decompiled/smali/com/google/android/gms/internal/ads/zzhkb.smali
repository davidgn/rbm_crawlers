.class final Lcom/google/android/gms/internal/ads/zzhkb;
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

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>([J[J[J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhka;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhkb;-><init>()V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhkb;->zza(Lcom/google/android/gms/internal/ads/zzhkb;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkb;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhkb;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    .line 7
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    return-void
.end method

.method public constructor <init>([J[J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhkb;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzhkb;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhka;->zza:Lcom/google/android/gms/internal/ads/zzhkb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhka;->zzb:[J

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    return-object p0
.end method


# virtual methods
.method public final zzb()[B
    .locals 15

    const/16 v0, 0xa

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v4, v0, [J

    new-array v5, v0, [J

    new-array v6, v0, [J

    new-array v7, v0, [J

    new-array v8, v0, [J

    new-array v9, v0, [J

    new-array v10, v0, [J

    new-array v11, v0, [J

    new-array v12, v0, [J

    new-array v13, v0, [J

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzc:[J

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v5, v12, v14}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v12, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v7, v12, v5}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v8, v12, v7}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    const/4 v4, 0x2

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v9, v13, v8}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v12, v9}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    move v5, v4

    :goto_1
    const/16 v7, 0x14

    if-ge v5, v7, :cond_1

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v12, v13, v9}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    move v5, v4

    :goto_2
    if-ge v5, v0, :cond_2

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_2
    invoke-static {v10, v12, v8}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    move v0, v4

    :goto_3
    const/16 v5, 0x32

    if-ge v0, v5, :cond_3

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    invoke-static {v11, v13, v10}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    move v0, v4

    :goto_4
    const/16 v7, 0x64

    if-ge v0, v7, :cond_4

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_4
    invoke-static {v13, v12, v11}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    :goto_5
    if-ge v4, v5, :cond_5

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    :cond_5
    invoke-static {v12, v13, v10}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzhkk;->zzf([J[J)V

    invoke-static {v1, v13, v6}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zza:[J

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkb;->zzb:[J

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhkk;->zze([J[J[J)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzh([J)[B

    move-result-object v0

    const/16 v1, 0x1f

    aget-byte v3, v0, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhkd;->zzf([J)I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
