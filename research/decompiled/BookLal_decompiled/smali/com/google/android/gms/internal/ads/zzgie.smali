.class final Lcom/google/android/gms/internal/ads/zzgie;
.super Lcom/google/android/gms/internal/ads/zzgib;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzggx;

.field private final zzc:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Ljava/util/Map;Landroid/util/DisplayMetrics;Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 7

    const/16 v0, 0x7b

    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zza(I)Lcom/google/android/gms/internal/ads/zzgpf;

    move-result-object v6

    const-string v2, "NA8MUX6rAUjCGKx9rUTFgjSSf1DpiINd+YP0doYNDEALs4TN457k8C363dzqTadK"

    const-string v3, "PCTMQTCazx8vfwOeADWxex3OghCCVOE2mHUnvo6dfs0="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgib;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzgpf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgie;->zzb:Lcom/google/android/gms/internal/ads/zzggx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgie;->zza:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgie;->zzc:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private static zzb(DLandroid/util/DisplayMetrics;)J
    .locals 2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzc(Landroid/util/DisplayMetrics;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgie;->zza:Ljava/util/Map;

    const-string v1, "nv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgie;->zzc:Landroid/util/DisplayMetrics;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {p1, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxt;->zza()Lcom/google/android/gms/internal/ads/zzaxs;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v4, p1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    aget-object v6, p1, v5

    if-eqz v6, :cond_0

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzaxs;->zza(J)Lcom/google/android/gms/internal/ads/zzaxs;

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzaxs;->zzb(J)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_0
    const/4 v4, 0x2

    aget-object v6, p1, v4

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzaxs;->zzh(J)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_1
    const/4 v6, 0x3

    aget-object v7, p1, v6

    if-eqz v7, :cond_2

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzaxs;->zzf(J)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_2
    const/4 v7, 0x4

    aget-object v8, p1, v7

    if-eqz v8, :cond_3

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzaxs;->zzc(J)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_3
    const/4 v8, 0x5

    aget-object v8, p1, v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_5

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_0

    :cond_4
    move v8, v5

    :goto_0
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzaxs;->zzs(I)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_5
    const/4 v8, 0x6

    aget-object v8, p1, v8

    if-eqz v8, :cond_6

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzaxs;->zzj(J)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_6
    const/4 v8, 0x7

    aget-object v8, p1, v8

    if-eqz v8, :cond_7

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzaxs;->zzi(J)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_7
    const/16 v8, 0x8

    aget-object p1, p1, v8

    if-eqz p1, :cond_9

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long p1, v11, v9

    if-eqz p1, :cond_8

    move p1, v4

    goto :goto_1

    :cond_8
    move p1, v5

    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxs;->zzt(I)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_9
    monitor-enter p2

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgie;->zzb:Lcom/google/android/gms/internal/ads/zzggx;

    const-string v8, "SaLZ3PI3KLapk3KjH7eYd5dku98p0WUh1tO4AoGsvQWwGEzdQ/QHR0bfanvgjofQ"

    const-string v11, "8QFXbwj4inrmnmsgVXbyBGfJiwZrfjD5+4f07YDIg1Y="

    invoke-interface {p1, v8, v11}, Lcom/google/android/gms/internal/ads/zzggx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v8, 0x0

    if-eqz p1, :cond_1b

    const-string v11, "nv"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MotionEvent;

    const-string v12, ""

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p1, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1a

    aget-object v11, p1, v3

    if-eqz v11, :cond_a

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Lcom/google/android/gms/internal/ads/zzaww;->zzh(J)Lcom/google/android/gms/internal/ads/zzaww;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_a
    :goto_2
    aget-object v5, p1, v5

    if-eqz v5, :cond_b

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Lcom/google/android/gms/internal/ads/zzaww;->zzi(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_b
    aget-object v4, p1, v4

    if-eqz v4, :cond_c

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzj(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_c
    aget-object v4, p1, v6

    if-eqz v4, :cond_d

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzv(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_d
    aget-object p1, p1, v7

    if-eqz p1, :cond_e

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzw(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_e
    const-string p1, "oe"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfr;

    if-nez p1, :cond_f

    goto :goto_3

    :cond_f
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zza:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_10

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzz(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_10
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzb:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_11

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzy(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_11
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzc:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_12

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzx(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_12
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzd:J

    cmp-long p1, v4, v9

    if-lez p1, :cond_13

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaww;->zzA(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_13
    :goto_3
    const-string p1, "oe"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfr;

    if-nez p1, :cond_14

    goto/16 :goto_4

    :cond_14
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zza:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_17

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zze:D

    if-eqz v2, :cond_16

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zzl(J)Lcom/google/android/gms/internal/ads/zzaxs;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzh:F

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzf:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zzm(J)Lcom/google/android/gms/internal/ads/zzaxs;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzi:F

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzg:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zzn(J)Lcom/google/android/gms/internal/ads/zzaxs;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzf:F

    float-to-double v4, v4

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zzq(J)Lcom/google/android/gms/internal/ads/zzaxs;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzg:F

    float-to-double v4, v4

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zzr(J)Lcom/google/android/gms/internal/ads/zzaxs;

    const-string v4, "nv"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    if-eqz v4, :cond_17

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzf:F

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzh:F

    sub-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    cmp-long v7, v5, v9

    if-eqz v7, :cond_15

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxs;->zzo(J)Lcom/google/android/gms/internal/ads/zzaxs;

    :cond_15
    iget v5, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzg:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgfr;->zzi:F

    sub-float/2addr v5, p1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    add-float/2addr v5, p1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v5, p1

    float-to-double v4, v5

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    cmp-long p1, v4, v9

    if-eqz p1, :cond_17

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zzp(J)Lcom/google/android/gms/internal/ads/zzaxs;

    goto :goto_4

    :cond_16
    throw v8

    :cond_17
    :goto_4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzaww;->zzJ(Lcom/google/android/gms/internal/ads/zzaxs;)Lcom/google/android/gms/internal/ads/zzaww;

    const-string p1, "ro"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzgfs;

    if-eqz p1, :cond_19

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_5
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    if-gt v3, v0, :cond_19

    aget-object v0, p1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxt;->zza()Lcom/google/android/gms/internal/ads/zzaxs;

    move-result-object v1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzgfs;->zza:F

    float-to-double v4, v4

    if-eqz v2, :cond_18

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zza(J)Lcom/google/android/gms/internal/ads/zzaxs;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgfs;->zzb:F

    float-to-double v4, v0

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzgie;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaxs;->zzb(J)Lcom/google/android/gms/internal/ads/zzaxs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzK(Lcom/google/android/gms/internal/ads/zzaxt;)Lcom/google/android/gms/internal/ads/zzaww;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    throw v8

    :cond_19
    monitor-exit p2

    return-void

    :cond_1a
    throw v8

    :cond_1b
    throw v8

    :goto_6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
