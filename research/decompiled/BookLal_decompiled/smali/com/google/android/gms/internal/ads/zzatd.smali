.class public Lcom/google/android/gms/internal/ads/zzatd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzash;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzatf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatc;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatf;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzatf;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatd;->zzb:Lcom/google/android/gms/internal/ads/zzatc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatd;->zza:Lcom/google/android/gms/internal/ads/zzatf;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzaso;)Lcom/google/android/gms/internal/ads/zzask;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "]"

    const-string v4, "Error occurred when closing InputStream"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaso;->zzk()Lcom/google/android/gms/internal/ads/zzarx;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzb:Ljava/lang/String;

    if-eqz v9, :cond_1

    const-string v10, "If-None-Match"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzd:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzatl;->zzc(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v8

    :goto_1
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzatd;->zzb:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {v8, v2, v0}, Lcom/google/android/gms/internal/ads/zzatc;->zza(Lcom/google/android/gms/internal/ads/zzaso;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzatm;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzatm;->zza()I

    move-result v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzatm;->zzb()Ljava/util/List;

    move-result-object v0

    const/16 v9, 0x130

    if-ne v10, v9, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v15, v9, v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaso;->zzk()Lcom/google/android/gms/internal/ads/zzarx;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v9, Lcom/google/android/gms/internal/ads/zzask;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v12, 0x130

    move-object v11, v9

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzask;-><init>(I[BZJLjava/util/List;)V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :cond_3
    new-instance v10, Ljava/util/TreeSet;

    sget-object v11, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v10, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzasg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzasg;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzarx;->zzh:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzarx;->zzh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzasg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzasg;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzarx;->zzg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzarx;->zzg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    new-instance v12, Lcom/google/android/gms/internal/ads/zzasg;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzasg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzask;

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzarx;->zza:[B

    const/4 v9, 0x1

    const/16 v12, 0x130

    move-object v11, v0

    move-object v10, v14

    move v14, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzask;-><init>(I[BZJLjava/util/List;)V

    move-object v9, v0

    :goto_5
    return-object v9

    :cond_9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzatm;->zzd()Ljava/io/InputStream;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzatm;->zzc()I

    move-result v12

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzatd;->zza:Lcom/google/android/gms/internal/ads/zzatf;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-direct {v14, v13, v12}, Lcom/google/android/gms/internal/ads/zzatq;-><init>(Lcom/google/android/gms/internal/ads/zzatf;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v12, 0x400

    :try_start_2
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzatf;->zza(I)[B

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    :try_start_3
    invoke-virtual {v9, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v7, -0x1

    if-eq v15, v7, :cond_a

    invoke-virtual {v14, v12, v11, v15}, Lcom/google/android/gms/internal/ads/zzatq;->write([BII)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    :try_start_5
    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzata;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzatf;->zzb([B)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzatq;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    :goto_8
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_3
    :try_start_7
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzata;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzatf;->zzb([B)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzatq;->close()V

    throw v0

    :cond_b
    new-array v7, v11, [B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_a
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    sget-boolean v9, Lcom/google/android/gms/internal/ads/zzata;->zzb:Z

    if-nez v9, :cond_c

    const-wide/16 v13, 0xbb8

    cmp-long v9, v11, v13

    if-lez v9, :cond_e

    :cond_c
    const-string v9, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    if-eqz v7, :cond_d

    array-length v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_c

    :cond_d
    const-string v12, "null"

    :goto_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaso;->zzy()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzasc;->zzb()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v2, v11, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/zzata;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/16 v9, 0xc8

    if-lt v10, v9, :cond_f

    const/16 v9, 0x12b

    if-gt v10, v9, :cond_f

    new-instance v16, Lcom/google/android/gms/internal/ads/zzask;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v13, v11, v5

    const/4 v12, 0x0

    move-object/from16 v9, v16

    move-object v11, v7

    move-object v15, v0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzask;-><init>(I[BZJLjava/util/List;)V

    return-object v16

    :cond_f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_c
    move-object v10, v7

    move-object v7, v8

    goto :goto_10

    :goto_d
    move-object v7, v8

    :goto_e
    const/4 v10, 0x0

    goto :goto_10

    :goto_f
    const/4 v7, 0x0

    goto :goto_e

    :goto_10
    instance-of v8, v0, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>()V

    const-string v7, "socket"

    goto :goto_12

    :cond_10
    instance-of v8, v0, Ljava/net/MalformedURLException;

    if-nez v8, :cond_16

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzatm;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaso;->zzh()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Unexpected response code %d for %s"

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzata;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzatm;->zzb()Ljava/util/List;

    move-result-object v14

    new-instance v7, Lcom/google/android/gms/internal/ads/zzask;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v8, v5

    const/4 v11, 0x0

    move-object v8, v7

    move v9, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzask;-><init>(I[BZJLjava/util/List;)V

    const/16 v8, 0x191

    if-eq v0, v8, :cond_13

    const/16 v8, 0x193

    if-ne v0, v8, :cond_11

    goto :goto_11

    :cond_11
    const/16 v2, 0x190

    if-lt v0, v2, :cond_12

    const/16 v2, 0x1f3

    if-gt v0, v2, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasb;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzasb;-><init>(Lcom/google/android/gms/internal/ads/zzask;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasv;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzasv;-><init>(Lcom/google/android/gms/internal/ads/zzask;)V

    throw v0

    :cond_13
    :goto_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarw;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Lcom/google/android/gms/internal/ads/zzask;)V

    const-string v7, "auth"

    goto :goto_12

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasj;-><init>()V

    const-string v7, "network"

    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaso;->zzy()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaso;->zzo()I

    move-result v9

    :try_start_9
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzasc;->zzc(Lcom/google/android/gms/internal/ads/zzasx;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzasx; {:try_start_9 .. :try_end_9} :catch_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-retry [timeout="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaso;->zzc(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-timeout-giveup [timeout="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaso;->zzc(Ljava/lang/String;)V

    throw v4

    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasl;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzasl;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaso;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bad URL "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
