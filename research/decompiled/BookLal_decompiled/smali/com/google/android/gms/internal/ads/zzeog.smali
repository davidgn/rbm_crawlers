.class final Lcom/google/android/gms/internal/ads/zzeog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjn;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjk;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfrb;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfjv;

.field final synthetic zzg:Lcom/google/android/gms/internal/ads/zzeoi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeoi;JLcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfrb;Lcom/google/android/gms/internal/ads/zzfjv;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeog;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeog;->zze:Lcom/google/android/gms/internal/ads/zzfrb;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzf:Lcom/google/android/gms/internal/ads/zzfjv;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzg:Lcom/google/android/gms/internal/ads/zzeoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeog;->zzg:Lcom/google/android/gms/internal/ads/zzeoi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzeog;->zza:J

    sub-long/2addr v3, v5

    instance-of v5, v0, Ljava/util/concurrent/TimeoutException;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    :goto_0
    move-object v14, v7

    goto :goto_2

    :cond_0
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzenq;

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzfkk;

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    goto :goto_0

    :cond_3
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v8, 0x6

    if-eqz v5, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v5

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-ne v5, v6, :cond_4

    const/4 v8, 0x1

    :cond_4
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhv;->zzcn:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzelb;

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzelb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzelb;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v14, v5

    :goto_1
    move v5, v8

    goto :goto_2

    :cond_5
    move-object v14, v7

    goto :goto_1

    :goto_2
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzn()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzk()Lcom/google/android/gms/internal/ads/zzeok;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzeog;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    instance-of v11, v0, Lcom/google/android/gms/internal/ads/zzelb;

    if-eqz v11, :cond_6

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzelb;

    :cond_6
    move-object v11, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :goto_3
    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v5

    move-wide v12, v3

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzeok;->zza(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzfjk;ILcom/google/android/gms/internal/ads/zzelb;J)V

    :cond_7
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbhv;->zzjC:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzl()Lcom/google/android/gms/internal/ads/zzfrf;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzeog;->zze:Lcom/google/android/gms/internal/ads/zzfrb;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzeog;->zzf:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfjk;->zzn:Ljava/util/List;

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzfrb;->zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzfjk;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzfrf;->zza(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzp()Z

    move-result v7

    if-eqz v7, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzm()Ljava/util/LinkedHashMap;

    move-result-object v15

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzeoh;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzeog;->zzd:Ljava/lang/String;

    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzfjk;->zzaf:Ljava/lang/String;

    move-object v7, v11

    move v10, v5

    move-object v5, v11

    move-wide v11, v3

    move-object v6, v13

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzeoh;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v15, v6, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    if-nez v5, :cond_b

    :cond_a
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v5, :cond_b

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v7, "com.google.android.gms.ads"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Lcom/google/android/gms/internal/ads/zzelb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    const/16 v7, 0xd

    invoke-direct {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzo()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v5

    invoke-virtual {v5, v6, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzelc;->zze(Lcom/google/android/gms/internal/ads/zzfjk;JLcom/google/android/gms/ads/internal/client/zze;)V

    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzg:Lcom/google/android/gms/internal/ads/zzeoi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoi;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeog;->zza:J

    sub-long/2addr v0, v2

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoi;->zzn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoi;->zzk()Lcom/google/android/gms/internal/ads/zzeok;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeok;->zza(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzfjk;ILcom/google/android/gms/internal/ads/zzelb;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoi;->zzp()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzeoi;->zzi(Lcom/google/android/gms/internal/ads/zzfjk;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoi;->zzm()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeoh;

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zzeoh;->zzd:J

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoi;->zzm()Ljava/util/LinkedHashMap;

    move-result-object v3

    new-instance v11, Lcom/google/android/gms/internal/ads/zzeoh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzd:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzaf:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move-wide v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeoh;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v3, v2, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeoi;->zzo()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzelc;->zzd(Lcom/google/android/gms/internal/ads/zzfjk;JLcom/google/android/gms/ads/internal/client/zze;)V

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
