.class final Lcom/google/android/gms/internal/ads/zzss;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zzA:Z

.field private zzB:J

.field private final zza:Lcom/google/android/gms/internal/ads/zzsr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdo;

.field private final zzc:[J

.field private final zzd:Landroid/media/AudioTrack;

.field private final zze:I

.field private final zzf:J

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzrt;

.field private zzi:F

.field private zzj:J

.field private zzk:J

.field private zzl:J

.field private zzm:Ljava/lang/reflect/Method;

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J

.field private zzr:J

.field private zzs:I

.field private zzt:I

.field private zzu:J

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsr;Lcom/google/android/gms/internal/ads/zzdo;Landroid/media/AudioTrack;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzsr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Landroid/media/AudioTrack;

    :try_start_0
    const-class p2, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p2, 0xa

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzc:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzrt;

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzrt;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzsr;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-virtual {p3}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zze:I

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzfk;->zzA(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Z

    if-eqz p2, :cond_0

    div-int/2addr p6, p5

    int-to-long p2, p6

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfk;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzf:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzr:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzA:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzB:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzv:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzo:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzn:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzj:J

    return-void
.end method

.method private final zzg(J)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzj:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    sub-long/2addr p1, v0

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzfk;->zzw(JF)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide p1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zza()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzj:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzsr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzsr;->zzb(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final zzh(J)J
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzl()J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zze:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzj()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:J

    add-long/2addr p1, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzv(JF)J

    move-result-wide p1

    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzn:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzx:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zze:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzr(JI)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method private final zzi()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzk:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzt:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzs:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzl:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzz:J

    return-void
.end method

.method private final zzj()J
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzk()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zze:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzr(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzk()J
    .locals 12

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzl()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzx:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x1d

    if-gt v4, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    cmp-long v4, v10, v8

    if-lez v4, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzss;->zzv:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_5

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzv:J

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzv:J

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzr:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzr:J

    :cond_4
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    :cond_5
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzp:J

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzB:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzr:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzl()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzw:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzv(JF)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zze:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzs(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zzw:J

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final zza()J
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x0

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdo;->zzc()J

    move-result-wide v9

    div-long v12, v9, v5

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzss;->zzl:J

    sub-long v9, v12, v9

    const-wide/16 v14, 0x7530

    cmp-long v3, v9, v14

    const/4 v9, 0x0

    if-ltz v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzss;->zzj()J

    move-result-wide v10

    cmp-long v3, v10, v7

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v18, v2

    goto/16 :goto_4

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzss;->zzc:[J

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzss;->zzs:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    invoke-static {v10, v11, v15}, Lcom/google/android/gms/internal/ads/zzfk;->zzw(JF)J

    move-result-wide v10

    sub-long/2addr v10, v12

    aput-wide v10, v3, v14

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzss;->zzs:I

    add-int/2addr v10, v1

    const/16 v11, 0xa

    rem-int/2addr v10, v11

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzss;->zzs:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzss;->zzt:I

    if-ge v10, v11, :cond_2

    add-int/2addr v10, v1

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzss;->zzt:I

    :cond_2
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzss;->zzl:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzss;->zzk:J

    move v10, v9

    :goto_0
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzss;->zzt:I

    if-ge v10, v11, :cond_3

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzss;->zzk:J

    aget-wide v16, v3, v10

    int-to-long v7, v11

    div-long v16, v16, v7

    add-long v7, v16, v14

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzss;->zzk:J

    add-int/2addr v10, v1

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_3
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzss;->zzn:J

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzss;->zzg:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_5

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzss;->zzo:J

    sub-long v10, v12, v10

    const-wide/32 v14, 0x7a120

    cmp-long v10, v10, v14

    if-ltz v10, :cond_5

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v14, v3

    mul-long/2addr v14, v5

    move-object/from16 v18, v2

    :try_start_1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzf:J

    sub-long/2addr v14, v1

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzss;->zzn:J

    const-wide/16 v1, 0x0

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzss;->zzn:J

    const-wide/32 v16, 0x989680

    cmp-long v11, v14, v16

    if-lez v11, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzsr;

    invoke-interface {v11, v14, v15}, Lcom/google/android/gms/internal/ads/zzsr;->zza(J)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzn:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object/from16 v18, v2

    :catch_1
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzss;->zzm:Ljava/lang/reflect/Method;

    :cond_4
    :goto_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzss;->zzo:J

    goto :goto_2

    :cond_5
    move-object/from16 v18, v2

    :goto_2
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzn:J

    cmp-long v1, v7, v1

    if-eqz v1, :cond_6

    const/16 v17, 0x1

    goto :goto_3

    :cond_6
    move/from16 v17, v9

    :goto_3
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzrt;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    invoke-direct {v0, v12, v13}, Lcom/google/android/gms/internal/ads/zzss;->zzh(J)J

    move-result-wide v15

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzrt;->zza(JFJZ)V

    :goto_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdo;->zzc()J

    move-result-wide v1

    div-long/2addr v1, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzrt;->zzb()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    invoke-virtual {v5, v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzrt;->zze(JF)J

    move-result-wide v7

    goto :goto_5

    :cond_7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzss;->zzh(J)J

    move-result-wide v7

    :goto_5
    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v9

    if-ne v9, v4, :cond_b

    if-nez v6, :cond_8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzrt;->zzc()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzss;->zzg(J)V

    :cond_9
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzss;->zzz:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_a

    sub-long v3, v1, v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzss;->zzy:J

    sub-long v5, v7, v5

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzss;->zzi:F

    invoke-static {v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzfk;->zzv(JF)J

    move-result-wide v3

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzss;->zzy:J

    add-long/2addr v9, v3

    sub-long v11, v9, v7

    const-wide/16 v13, 0x0

    cmp-long v5, v5, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    if-eqz v5, :cond_a

    const-wide/32 v5, 0xf4240

    cmp-long v5, v11, v5

    if-gez v5, :cond_a

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    sub-long v5, v9, v3

    add-long/2addr v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :cond_a
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzss;->zzz:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzss;->zzy:J

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    if-eq v9, v1, :cond_c

    :goto_6
    return-wide v7

    :cond_c
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzss;->zzg(J)V

    return-wide v7
.end method

.method public final zzb()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrt;->zzd()V

    return-void
.end method

.method public final zzc()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzv:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzk()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzw:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzb:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zzx:J

    return-void
.end method

.method public final zzf()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzi()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzh:Lcom/google/android/gms/internal/ads/zzrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrt;->zzd()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzk()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzss;->zzw:J

    return-void
.end method
