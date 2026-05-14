.class public final Lcom/google/android/gms/internal/ads/zzcio;
.super Lcom/google/android/gms/internal/ads/zzcif;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgi;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzcgj;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzchx;

.field private zzj:J

.field private zzk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgs;Lcom/google/android/gms/internal/ads/zzcgr;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcif;-><init>(Lcom/google/android/gms/internal/ads/zzcgs;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgs;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgs;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgr;Lcom/google/android/gms/internal/ads/zzcgs;Ljava/lang/Integer;)V

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "ExoPlayerAdapter initialized."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzs(Lcom/google/android/gms/internal/ads/zzcgi;)V

    return-void
.end method

.method public static final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cache:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzd(J)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcim;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcim;-><init>(Lcom/google/android/gms/internal/ads/zzcio;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "/"

    const-string v2, ":"

    invoke-static {v4, p0, v1, v0, v2}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzs(Lcom/google/android/gms/internal/ads/zzcgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzt()V

    :cond_0
    return-void
.end method

.method public final zzD()V
    .locals 1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Precache onRenderedFirstFrame"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzcgj;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzh:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzs(Lcom/google/android/gms/internal/ads/zzcgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic zzb()V
    .locals 31

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcio;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "error"

    const-string v0, " ms"

    const-string v1, "Timeout reached. Limit: "

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzam:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhv;->zzw:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v11, v4

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhv;->zzcB:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzj:J

    sub-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-gtz v5, :cond_b

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzg:Z

    if-nez v0, :cond_a

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzh:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    move-object v4, v15

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v5, v13

    move-object v4, v15

    goto/16 :goto_6

    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzB()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzH()J

    move-result-wide v9

    const-wide/16 v18, 0x0

    cmp-long v0, v9, v18

    if-lez v0, :cond_7

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzN()J

    move-result-wide v6

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzk:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_5

    cmp-long v0, v6, v18

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    :try_start_2
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-wide/16 v0, -0x1

    if-eqz v4, :cond_2

    :try_start_3
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzI()J

    move-result-wide v20

    goto :goto_2

    :cond_2
    move-wide/from16 v20, v0

    :goto_2
    if-eqz v4, :cond_3

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzJ()J

    move-result-wide v22

    goto :goto_3

    :cond_3
    move-wide/from16 v22, v0

    :goto_3
    if-eqz v4, :cond_4

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzK()J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move-wide/from16 v24, v0

    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzP()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzQ()I

    move-result v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v1, p0

    move-object v3, v13

    move-wide v4, v6

    move-wide/from16 v26, v6

    move-wide v6, v9

    move-wide/from16 v28, v9

    move-wide/from16 v9, v20

    move-wide/from16 v20, v11

    move-wide/from16 v11, v22

    move-object/from16 v30, v13

    move-wide/from16 v13, v24

    move v15, v0

    :try_start_5
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcif;->zzm(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v4, p0

    move-wide/from16 v0, v26

    :try_start_6
    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/zzcio;->zzk:J

    move-wide/from16 v2, v28

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    move-object/from16 v5, v30

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v30, v13

    move-object v4, v15

    goto :goto_4

    :cond_5
    move-wide v0, v6

    move-wide/from16 v20, v11

    move-object/from16 v30, v13

    move-object v4, v15

    move-wide v2, v9

    :goto_5
    cmp-long v5, v0, v2

    if-ltz v5, :cond_6

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v5, v30

    :try_start_7
    invoke-virtual {v4, v0, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzcif;->zzp(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto/16 :goto_9

    :cond_6
    move-object/from16 v5, v30

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzO()J

    move-result-wide v2

    cmp-long v2, v2, v20

    if-ltz v2, :cond_8

    cmp-long v0, v0, v18

    if-lez v0, :cond_8

    monitor-exit p0

    goto/16 :goto_9

    :cond_7
    move-object v5, v13

    move-object v4, v15

    :cond_8
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzan:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzcio;->zzd(J)V

    return-void

    :cond_9
    move-object v5, v13

    move-object v4, v15

    :try_start_8
    const-string v17, "exoPlayerReleased"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExoPlayer was released during preloading."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_6

    :cond_a
    move-object v5, v13

    move-object v4, v15

    const-string v17, "externalAbort"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Abort requested before buffering finished. "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v5, v13

    move-object v4, v15

    const-string v17, "downloadTimeout"

    new-instance v6, Ljava/io/IOException;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :goto_6
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    :goto_7
    move-object/from16 v1, v17

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v5, v13

    move-object v4, v15

    goto :goto_7

    :goto_8
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x22

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Failed to preload url "

    const-string v7, " Exception: "

    invoke-static {v8, v6, v2, v7, v3}, LC/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v2, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcio;->release()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcio;->zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;

    invoke-virtual {v4, v2, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzcif;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/internal/ads/zzchy;

    move-result-object v0

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzcio;->zzi:Lcom/google/android/gms/internal/ads/zzchx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchy;->zzd(Lcom/google/android/gms/internal/ads/zzchx;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;)Z
    .locals 1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcio;->zzf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 47

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    const/16 v17, 0x1

    iput-object v13, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;

    const-string v18, "error"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcio;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v11, " ms"

    const-string v12, "Timeout reached. Limit: "

    const/16 v19, 0x0

    :try_start_0
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    move/from16 v2, v19

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    goto/16 :goto_b

    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzcif;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzq([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcif;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgs;

    if-eqz v0, :cond_1

    invoke-interface {v0, v14, v15}, Lcom/google/android/gms/internal/ads/zzcgs;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcif;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzan:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzam:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v6, v1, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzw:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzcB:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const-wide/16 v23, -0x1

    move-wide/from16 v1, v23

    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    cmp-long v3, v25, v6

    if-gtz v3, :cond_d

    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzg:Z

    if-nez v3, :cond_c

    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzcio;->zzh:Z

    if-eqz v3, :cond_2

    monitor-exit p0

    move-object v5, v15

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    goto/16 :goto_a

    :cond_2
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzB()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    move-object/from16 v16, v11

    move-object/from16 v25, v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzH()J

    move-result-wide v11

    const-wide/16 v26, 0x0

    cmp-long v3, v11, v26

    if-lez v3, :cond_a

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzN()J

    move-result-wide v28

    cmp-long v3, v28, v1

    if-eqz v3, :cond_7

    cmp-long v1, v28, v26

    if-lez v1, :cond_3

    move/from16 v8, v17

    goto :goto_2

    :cond_3
    move/from16 v8, v19

    :goto_2
    if-eqz v22, :cond_4

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzI()J

    move-result-wide v1

    move-wide/from16 v30, v1

    goto :goto_3

    :cond_4
    move-wide/from16 v30, v23

    :goto_3
    if-eqz v22, :cond_5

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzJ()J

    move-result-wide v1

    move-wide/from16 v32, v1

    goto :goto_4

    :cond_5
    move-wide/from16 v32, v23

    :goto_4
    if-eqz v22, :cond_6

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzK()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v34, v1

    goto :goto_5

    :cond_6
    move-wide/from16 v34, v23

    :goto_5
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzP()I

    move-result v36

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzQ()I

    move-result v37
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v38, v4

    move-wide/from16 v4, v28

    move-wide/from16 v40, v6

    move-wide v6, v11

    move-wide/from16 v42, v9

    move-wide/from16 v9, v30

    move-object/from16 p2, v0

    move-wide/from16 v44, v11

    move-object/from16 v0, v25

    move-object/from16 v25, v16

    move-wide/from16 v11, v32

    move-object/from16 v46, v14

    move-wide/from16 v13, v34

    move/from16 v15, v36

    move/from16 v16, v37

    :try_start_3
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcif;->zzm(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v1, v28

    move-wide/from16 v3, v44

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v46

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v46, v14

    goto :goto_6

    :cond_7
    move-object/from16 p2, v0

    move-wide/from16 v38, v4

    move-wide/from16 v40, v6

    move-wide/from16 v42, v9

    move-object/from16 v46, v14

    move-object/from16 v0, v25

    move-object/from16 v25, v16

    move-wide v3, v11

    :goto_7
    cmp-long v5, v28, v3

    if-ltz v5, :cond_8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v46

    :try_start_4
    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzcif;->zzp(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto :goto_8

    :cond_8
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v46

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzO()J

    move-result-wide v3

    cmp-long v3, v3, v38

    if-ltz v3, :cond_9

    cmp-long v3, v28, v26

    if-lez v3, :cond_9

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_8
    return v17

    :cond_9
    move-wide/from16 v3, v42

    goto :goto_9

    :cond_a
    move-object/from16 p2, v0

    move-wide/from16 v38, v4

    move-wide/from16 v40, v6

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    move-object/from16 v0, v25

    move-object/from16 v25, v16

    move-wide v3, v9

    :goto_9
    :try_start_5
    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit p0

    move-object v12, v0

    move-wide v9, v3

    move-object v15, v5

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v11, v25

    move-wide/from16 v4, v38

    move-wide/from16 v6, v40

    move-object/from16 v0, p2

    goto/16 :goto_1

    :catch_1
    const-string v18, "interrupted"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wait interrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_b
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    const-string v18, "exoPlayerReleased"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExoPlayer was released during preloading."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    const-string v18, "externalAbort"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Abort requested before buffering finished. "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-wide/from16 v40, v6

    move-object/from16 v25, v11

    move-object v0, v12

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    const-string v18, "downloadTimeout"

    new-instance v1, Ljava/io/IOException;

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v40

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_a
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    :goto_b
    move-object/from16 v1, v18

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x22

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to preload url "

    const-string v4, " Exception: "

    invoke-static {v8, v3, v6, v4, v2}, LC/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v2, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcio;->release()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcio;->zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v1, v0}, Lcom/google/android/gms/internal/ads/zzcif;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v19
.end method

.method public final zzg(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzchx;)Z
    .locals 5

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzi:Lcom/google/android/gms/internal/ads/zzchx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcio;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p2

    new-array v2, v2, [Landroid/net/Uri;

    move v3, v1

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, p2, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/2addr v3, v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzb:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzq([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgs;

    if-eqz p2, :cond_1

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzcgs;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcif;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzj:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzk:J

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcio;->zzd(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to preload url "

    const-string v3, " Exception: "

    invoke-static {v4, v2, p1, v3, v0}, LC/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v0, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcio;->release()V

    const-string v0, "error"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzcio;->zzx(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzcif;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final zzh(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzG(I)V

    return-void
.end method

.method public final zzi(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzF(I)V

    return-void
.end method

.method public final zzj(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzy(I)V

    return-void
.end method

.method public final zzk(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzz(I)V

    return-void
.end method

.method public final zzl()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzg:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcio;->release()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcio;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Ljava/lang/String;

    const-string v2, "externalAbort"

    const-string v3, "Programmatic precache abort."

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcif;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzr(ZJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgs;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcew;->zzf:Lcom/google/android/gms/internal/ads/zzhbf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcin;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcin;-><init>(Lcom/google/android/gms/internal/ads/zzcgs;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzs(I)V
    .locals 0

    return-void
.end method

.method public final zzt(II)V
    .locals 0

    return-void
.end method

.method public final zzu(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Precache error"

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "VideoStreamExoPlayerCache.onError"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Precache exception"

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "VideoStreamExoPlayerCache.onException"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
