.class final Lcom/google/android/gms/internal/ads/zzxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabk;
.implements Lcom/google/android/gms/internal/ads/zzwi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzxz;

.field private final zzb:J

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzif;

.field private final zze:Lcom/google/android/gms/internal/ads/zzxm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzafi;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdr;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzagg;

.field private volatile zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzhm;

.field private zzm:Lcom/google/android/gms/internal/ads/zzags;

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxz;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzxm;Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzdr;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzc:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzhi;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzd:Lcom/google/android/gms/internal/ads/zzif;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxq;->zze:Lcom/google/android/gms/internal/ads/zzxm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzg:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzagg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzagg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzh:Lcom/google/android/gms/internal/ads/zzagg;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzj:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwk;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzb:J

    const-wide/16 p1, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxq;->zzi(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzl:Lcom/google/android/gms/internal/ads/zzhm;

    return-void
.end method

.method private final zzi(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhm;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxz;->zzJ()Ljava/util/Map;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "W/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgvo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgvo;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgvo;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvo;

    const-string v0, "If-Range"

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgvo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvo;->zzd()Lcom/google/android/gms/internal/ads/zzgvp;

    move-result-object v0

    :cond_0
    new-instance p3, Lcom/google/android/gms/internal/ads/zzhl;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzhl;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzc:Landroid/net/Uri;

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzhl;->zzc(J)Lcom/google/android/gms/internal/ads/zzhl;

    const/4 p1, 0x6

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzhl;->zzd(I)Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzhl;->zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhl;->zze()Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzes;)V
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzk:J

    :goto_0
    move-wide v5, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxz;->zzI(Z)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzk:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzm:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, p1, v8}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzn:Z

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzi:Z

    return-void
.end method

.method public final zzc()V
    .locals 25

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v3, v2

    const/4 v4, 0x0

    :goto_0
    if-nez v3, :cond_16

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzi:Z

    if-nez v3, :cond_16

    const-wide/16 v5, -0x1

    :try_start_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzh:Lcom/google/android/gms/internal/ads/zzagg;

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    invoke-direct {v1, v14, v15, v4}, Lcom/google/android/gms/internal/ads/zzxq;->zzi(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzl:Lcom/google/android/gms/internal/ads/zzhm;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzd:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzhm;)J

    move-result-wide v8

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxq;->zze:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zzd()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzh:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zzd()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzd:Lcom/google/android/gms/internal/ads/zzif;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhk;->zza(Lcom/google/android/gms/internal/ads/zzhi;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzif;->zzj()Ljava/util/Map;

    move-result-object v4

    const-string v10, "ETag"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    move v6, v2

    goto/16 :goto_f

    :cond_2
    const/4 v4, 0x0

    :goto_1
    cmp-long v10, v8, v5

    if-eqz v10, :cond_3

    add-long/2addr v8, v14

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzxq;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxz;->zzH()V

    :cond_3
    move-wide/from16 v16, v8

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzxq;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzif;->zzj()Ljava/util/Map;

    move-result-object v7

    const-string v9, "icy-br"

    const-string v10, "Invalid bitrate header: "

    const-string v11, "Invalid metadata interval: "

    const-string v12, "Invalid bitrate: "

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "IcyHeaders"

    const/4 v0, -0x1

    if-eqz v9, :cond_5

    :try_start_2
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    mul-int/lit16 v5, v5, 0x3e8

    if-lez v5, :cond_4

    move/from16 v19, v5

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    move/from16 v19, v0

    move v3, v2

    goto :goto_2

    :catch_0
    move v5, v0

    :catch_1
    :try_start_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    move/from16 v19, v5

    :goto_2
    const-string v5, "icy-genre"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_6

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v3

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/16 v20, 0x0

    :goto_3
    const-string v5, "icy-name"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v21, v3

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/16 v21, 0x0

    :goto_4
    const-string v5, "icy-url"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_8

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v22, v3

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/16 v22, 0x0

    :goto_5
    const-string v5, "icy-pub"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v23, v3

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    move/from16 v23, v2

    :goto_6
    const-string v5, "icy-metaint"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_b

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v6, :cond_a

    move/from16 v24, v6

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    :try_start_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    move/from16 v24, v0

    goto :goto_7

    :catch_2
    move v6, v0

    :catch_3
    :try_start_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v24, v6

    :goto_7
    if-eqz v3, :cond_c

    new-instance v3, Lcom/google/android/gms/internal/ads/zzain;

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzain;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzxz;->zzP(Lcom/google/android/gms/internal/ads/zzain;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzd:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzxq;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzO()Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzO()Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzain;->zzf:I

    if-eq v6, v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzO()Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzain;->zzf:I

    invoke-direct {v0, v3, v6, v1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Lcom/google/android/gms/internal/ads/zzhi;ILcom/google/android/gms/internal/ads/zzwi;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzx()Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzm:Lcom/google/android/gms/internal/ads/zzags;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxz;->zzK()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    move-object v9, v0

    goto :goto_9

    :cond_d
    move-object v9, v3

    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxq;->zze:Lcom/google/android/gms/internal/ads/zzxm;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzc:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzj()Ljava/util/Map;

    move-result-object v11

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzf:Lcom/google/android/gms/internal/ads/zzafi;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v8, v0

    move-wide v12, v14

    move-object/from16 v18, v3

    move-wide v2, v14

    move-wide/from16 v14, v16

    move-object/from16 v16, v6

    :try_start_9
    invoke-interface/range {v8 .. v16}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Lcom/google/android/gms/internal/ads/zzj;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzafi;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzO()Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zzc()V

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_e
    :goto_a
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzj:Z

    if-eqz v6, :cond_f

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzk:J

    invoke-interface {v0, v2, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzxm;->zze(JJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v6, 0x0

    :try_start_a
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzj:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_b
    move-wide v14, v2

    move v2, v6

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_f

    :cond_f
    const/4 v6, 0x0

    goto :goto_b

    :cond_10
    :goto_c
    if-nez v2, :cond_12

    :try_start_b
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzi:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v3, :cond_11

    :try_start_c
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzg:Lcom/google/android/gms/internal/ads/zzdr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzc()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzh:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzxm;->zzf(Lcom/google/android/gms/internal/ads/zzagg;)I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zzd()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzL()J

    move-result-wide v9

    add-long/2addr v9, v14

    cmp-long v9, v7, v9

    if-lez v9, :cond_10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzb()Z

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzN()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxz;->zzM()Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v14, v7

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_d
    const/4 v3, 0x1

    goto :goto_10

    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_11
    move v2, v6

    :cond_12
    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    move v3, v6

    goto :goto_e

    :cond_13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zzd()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-eqz v3, :cond_14

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzh:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zzd()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    :cond_14
    move v3, v2

    :goto_e
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzhk;->zza(Lcom/google/android/gms/internal/ads/zzhi;)V

    move v2, v6

    goto/16 :goto_0

    :goto_f
    move v2, v6

    goto :goto_d

    :goto_10
    if-eq v2, v3, :cond_15

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxq;->zze:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxm;->zzd()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzh:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxm;->zzd()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    :cond_15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxq;->zzd:Lcom/google/android/gms/internal/ads/zzif;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhk;->zza(Lcom/google/android/gms/internal/ads/zzhi;)V

    throw v0

    :cond_16
    return-void
.end method

.method public final synthetic zzd(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzh:Lcom/google/android/gms/internal/ads/zzagg;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzk:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzj:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzn:Z

    return-void
.end method

.method public final synthetic zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzb:J

    return-wide v0
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/ads/zzif;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzd:Lcom/google/android/gms/internal/ads/zzif;

    return-object v0
.end method

.method public final synthetic zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzk:J

    return-wide v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/ads/zzhm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzl:Lcom/google/android/gms/internal/ads/zzhm;

    return-object v0
.end method
