.class public final Lcom/google/android/gms/internal/ads/zzgeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgeh;
.implements Lcom/google/android/gms/internal/ads/zzged;
.implements Lcom/google/android/gms/internal/ads/zzgew;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzigr;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdl;

.field private final zzd:Ljava/util/concurrent/ExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgde;

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:J

.field private final zzi:J

.field private final zzj:D

.field private final zzk:Ljava/lang/String;

.field private final zzl:J

.field private final zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzn:Ljava/lang/Object;

.field private final zzo:Ljava/lang/Object;

.field private final zzp:Ljava/lang/Object;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzavz;

.field private final zzr:Ljava/util/List;

.field private zzs:Z

.field private final zzt:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzigr;->zzc()Lcom/google/android/gms/internal/ads/zzigq;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzigq;->zza(I)Lcom/google/android/gms/internal/ads/zzigq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzigr;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgeq;->zza:Lcom/google/android/gms/internal/ads/zzigr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgdl;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgde;Ljava/util/Random;Ljava/lang/String;JJDLjava/lang/String;J)V
    .locals 7

    move-object v0, p0

    move-wide/from16 v1, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzn:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzo:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzp:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawa;->zza()Lcom/google/android/gms/internal/ads/zzavz;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzq:Lcom/google/android/gms/internal/ads/zzavz;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzr:Ljava/util/List;

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzs:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzt:Ljava/util/HashMap;

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzb:Landroid/content/Context;

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzc:Lcom/google/android/gms/internal/ads/zzgdl;

    move-object v3, p3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzd:Ljava/util/concurrent/ExecutorService;

    move-object v3, p4

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zze:Lcom/google/android/gms/internal/ads/zzgde;

    move-object v3, p6

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzg:Ljava/lang/String;

    move-wide v5, p7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzh:J

    move-wide/from16 v5, p9

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzi:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzj:D

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzk:Ljava/lang/String;

    move-wide/from16 v5, p14

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzl:J

    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    cmpg-double v1, v5, v1

    if-gez v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzgeq;->zzf:Z

    return-void
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgeo;-><init>(Lcom/google/android/gms/internal/ads/zzgeq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzd:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V
    .locals 12

    move-object v1, p0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzf:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzo:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzr:Ljava/util/List;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzgen;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzp:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v9, v6, v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v11

    move v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    :try_start_2
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzgen;-><init>(IJLjava/lang/Throwable;Ljava/lang/String;J)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzs:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzs:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzc:Lcom/google/android/gms/internal/ads/zzgdl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgep;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzgep;-><init>(Lcom/google/android/gms/internal/ads/zzgeq;)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzgeq;->zzi:J

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/lang/Runnable;J)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgev;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzq:Lcom/google/android/gms/internal/ads/zzavz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgev;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzavz;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavz;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzq:Lcom/google/android/gms/internal/ads/zzavz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbk()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzavz;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzo:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzr:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzs:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzgen;

    int-to-long v7, v5

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzh:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzgeq;->zze(Lcom/google/android/gms/internal/ads/zzawa;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavz;->zzb()Lcom/google/android/gms/internal/ads/zzavz;

    move v5, v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaws;->zza()Lcom/google/android/gms/internal/ads/zzawr;

    move-result-object v7

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzgen;->zza:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzawr;->zza(J)Lcom/google/android/gms/internal/ads/zzawr;

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zzgen;->zzb:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzawr;->zzb(J)Lcom/google/android/gms/internal/ads/zzawr;

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zzgen;->zze:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzawr;->zze(J)Lcom/google/android/gms/internal/ads/zzawr;

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzgen;->zzd:Ljava/lang/String;

    if-eqz v8, :cond_1

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzawr;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawr;

    :cond_1
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzgen;->zzc:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/4 v8, 0x3

    :goto_1
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzawr;->zzg(I)Lcom/google/android/gms/internal/ads/zzawr;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzawr;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawr;

    :try_start_2
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v9

    :try_start_8
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    invoke-virtual {v8}, Ljava/io/StringWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v8

    :try_start_a
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    const-string v6, ""

    :goto_5
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzawr;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawr;

    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzavz;->zza(Lcom/google/android/gms/internal/ads/zzaws;)Lcom/google/android/gms/internal/ads/zzavz;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    if-lez v5, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgeq;->zze(Lcom/google/android/gms/internal/ads/zzawa;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavz;->zzb()Lcom/google/android/gms/internal/ads/zzavz;

    :cond_5
    return-void

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzawa;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgem;->zza()Lcom/google/android/gms/internal/ads/zzgel;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgeq;->zza:Lcom/google/android/gms/internal/ads/zzigr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgel;->zzb(Lcom/google/android/gms/internal/ads/zzigr;)Lcom/google/android/gms/internal/ads/zzgel;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgek;->zza()Lcom/google/android/gms/internal/ads/zzgej;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgej;->zza(Lcom/google/android/gms/internal/ads/zzawa;)Lcom/google/android/gms/internal/ads/zzgej;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgel;->zza(Lcom/google/android/gms/internal/ads/zzgek;)Lcom/google/android/gms/internal/ads/zzgel;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgem;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zze:Lcom/google/android/gms/internal/ads/zzgde;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object p1

    const-string v2, "application/x-protobuf"

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzgde;->zzb(Ljava/lang/String;[BLjava/lang/String;)LN2/o;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final synthetic zzf()V
    .locals 10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzf:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzk:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzj:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzl:J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawa;->zza()Lcom/google/android/gms/internal/ads/zzavz;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzavz;->zzc(J)Lcom/google/android/gms/internal/ads/zzavz;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzavz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavz;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzavz;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavz;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzavz;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavz;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzavz;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavz;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzavz;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavz;

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzavz;->zzl(J)Lcom/google/android/gms/internal/ads/zzavz;

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    double-to-int v1, v4

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzavz;->zzk(J)Lcom/google/android/gms/internal/ads/zzavz;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzavz;->zzh(J)Lcom/google/android/gms/internal/ads/zzavz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v2, "android.hardware.type.pc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    if-ne v0, v3, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzavz;->zzm(I)Lcom/google/android/gms/internal/ads/zzavz;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgeq;->zzq:Lcom/google/android/gms/internal/ads/zzavz;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbo(Lcom/google/android/gms/internal/ads/zzidd;)Lcom/google/android/gms/internal/ads/zzicx;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :goto_1
    return-void
.end method
