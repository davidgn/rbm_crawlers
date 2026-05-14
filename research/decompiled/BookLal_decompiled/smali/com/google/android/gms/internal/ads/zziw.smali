.class public final Lcom/google/android/gms/internal/ads/zziw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method public synthetic constructor <init>(FFJFJJF[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zziw;->zza:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zziw;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzg:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziw;->zzj:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziw;->zzi:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziw;->zzk:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzn:J

    return-void
.end method

.method private final zzf()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziw;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzd:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzf:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziw;->zze:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zze:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziw;->zzm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziw;->zzn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziw;->zzl:J

    return-void
.end method

.method private static zzg(JJF)J
    .locals 0

    long-to-float p0, p0

    long-to-float p1, p2

    const p2, 0x3f7fbe77    # 0.999f

    mul-float/2addr p0, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 4

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->zza:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziw;->zzc:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziw;->zzf:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziw;->zzg:J

    const p1, 0x3f7851ec    # 0.97f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzj:F

    const p1, 0x3f83d70a    # 1.03f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzi:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziw;->zzf()V

    return-void
.end method

.method public final zzb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziw;->zzf()V

    return-void
.end method

.method public final zzc()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzb:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziw;->zzl:J

    return-void
.end method

.method public final zzd(JJ)F
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziw;->zzc:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_7

    sub-long v8, p1, p3

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zziw;->zzm:J

    cmp-long v4, v10, v6

    if-nez v4, :cond_0

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zziw;->zzm:J

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zziw;->zzn:J

    goto :goto_0

    :cond_0
    const v4, 0x3f7fbe77    # 0.999f

    invoke-static {v10, v11, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziw;->zzg(JJF)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zziw;->zzm:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zziw;->zzn:J

    invoke-static {v10, v11, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zziw;->zzg(JJF)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zziw;->zzn:J

    :goto_0
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zziw;->zzl:J

    cmp-long v4, v8, v6

    const-wide/16 v8, 0x3e8

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zziw;->zzl:J

    sub-long/2addr v10, v12

    cmp-long v4, v10, v8

    if-gez v4, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zzk:F

    return v1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zziw;->zzl:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zziw;->zzm:J

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zziw;->zzn:J

    const-wide/16 v14, 0x3

    mul-long/2addr v12, v14

    add-long/2addr v12, v10

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    cmp-long v4, v10, v12

    const/high16 v11, -0x40800000    # -1.0f

    if-lez v4, :cond_4

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v6

    iget v4, v0, Lcom/google/android/gms/internal/ads/zziw;->zzk:F

    add-float/2addr v4, v11

    iget v8, v0, Lcom/google/android/gms/internal/ads/zziw;->zzi:F

    add-float/2addr v8, v11

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zziw;->zze:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    long-to-float v6, v6

    mul-float/2addr v8, v6

    mul-float/2addr v4, v6

    float-to-long v6, v4

    float-to-long v8, v8

    add-long/2addr v6, v8

    sub-long/2addr v10, v6

    new-array v4, v2, [J

    aput-wide v12, v4, v1

    aput-wide v14, v4, v3

    const/4 v6, 0x2

    aput-wide v10, v4, v6

    aget-wide v6, v4, v1

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_3

    aget-wide v8, v4, v1

    cmp-long v10, v8, v6

    if-gtz v10, :cond_2

    goto :goto_2

    :cond_2
    move-wide v6, v8

    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    :cond_3
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    goto :goto_3

    :cond_4
    iget v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zzk:F

    add-float/2addr v1, v11

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x33d6bf95    # 1.0E-7f

    div-float/2addr v1, v2

    float-to-long v1, v1

    sub-long v1, p1, v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzg:J

    cmp-long v6, v3, v6

    if-eqz v6, :cond_5

    cmp-long v6, v1, v3

    if-lez v6, :cond_5

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    move-wide v6, v3

    goto :goto_3

    :cond_5
    move-wide v6, v1

    :goto_3
    sub-long v1, p1, v6

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-gez v3, :cond_6

    iput v5, v0, Lcom/google/android/gms/internal/ads/zziw;->zzk:F

    goto :goto_4

    :cond_6
    long-to-float v1, v1

    const v2, 0x33d6bf95    # 1.0E-7f

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    iget v2, v0, Lcom/google/android/gms/internal/ads/zziw;->zzj:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzi:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zziw;->zzk:F

    :cond_7
    :goto_4
    return v5
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziw;->zzh:J

    return-wide v0
.end method
