.class final Lcom/google/android/gms/internal/ads/zzwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhi;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzwi;

.field private final zzd:[B

.field private zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhi;ILcom/google/android/gms/internal/ads/zzwi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzhi;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwi;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:I

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzj;->zza([BII)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    new-array v3, v2, [B

    move v5, v2

    :goto_0
    if-lez v5, :cond_3

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzj;->zza([BII)I

    move-result v6

    if-eq v6, v1, :cond_2

    add-int/2addr v4, v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    :goto_2
    if-lez v2, :cond_4

    add-int/lit8 v0, v2, -0x1

    aget-byte v4, v3, v0

    if-nez v4, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwi;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzes;-><init>([BI)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzwi;->zza(Lcom/google/android/gms/internal/ads/zzes;)V

    :cond_5
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:I

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzhi;

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzj;->zza([BII)I

    move-result p1

    if-eq p1, v1, :cond_7

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:I

    :cond_7
    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhm;)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhi;->zzc()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzig;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzhi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhi;->zze(Lcom/google/android/gms/internal/ads/zzig;)V

    return-void
.end method

.method public final zzj()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzhi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhi;->zzj()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
