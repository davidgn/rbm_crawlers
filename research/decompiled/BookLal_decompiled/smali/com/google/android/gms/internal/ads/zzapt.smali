.class final Lcom/google/android/gms/internal/ads/zzapt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzapr;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzapr;->zza:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_d

    const/4 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v8, 0x3f

    const/4 v9, 0x1

    if-gt v6, v8, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    const-wide/16 v10, 0x3

    const-wide/16 v12, 0xff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v14

    const-wide v5, 0x100000000L

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->addExact(JJ)J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v5

    const-wide/16 v14, -0x1

    if-ge v5, v2, :cond_1

    :goto_1
    move-wide v5, v14

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)J

    move-result-wide v5

    cmp-long v16, v5, v10

    if-nez v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v5

    if-ge v5, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)J

    move-result-wide v5

    add-long/2addr v10, v5

    cmp-long v3, v5, v12

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v3

    if-ge v3, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)J

    move-result-wide v5

    add-long/2addr v5, v10

    goto :goto_2

    :cond_4
    move-wide v5, v10

    :cond_5
    :goto_2
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzb:J

    cmp-long v3, v5, v14

    if-nez v3, :cond_6

    return v4

    :cond_6
    const-wide/16 v10, 0x10

    cmp-long v3, v5, v10

    if-gtz v3, :cond_c

    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-nez v3, :cond_a

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zza:I

    const/4 v5, 0x0

    if-eq v3, v9, :cond_9

    if-eq v3, v2, :cond_8

    const/16 v2, 0x11

    if-eq v3, v2, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "AudioTruncation packet with invalid packet label 0"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_8
    const-string v0, "Mpegh3daFrame packet with invalid packet label 0"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_9
    const-string v0, "Mpegh3daConfig packet with invalid packet label 0"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_a
    :goto_3
    const/16 v2, 0xb

    const/16 v3, 0x18

    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    return v9

    :cond_b
    return v4

    :cond_c
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x31

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Contains sub-stream with an invalid packet label "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_d
    return v4
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaps;
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_0

    const/16 v4, 0x18

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v4

    goto/16 :goto_0

    :cond_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported sampling rate index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :pswitch_1
    const/16 v4, 0x2580

    goto/16 :goto_0

    :pswitch_2
    const/16 v4, 0x3200

    goto/16 :goto_0

    :pswitch_3
    const/16 v4, 0x3840

    goto :goto_0

    :pswitch_4
    const/16 v4, 0x42b3

    goto :goto_0

    :pswitch_5
    const/16 v4, 0x4b00

    goto :goto_0

    :pswitch_6
    const/16 v4, 0x4e20

    goto :goto_0

    :pswitch_7
    const/16 v4, 0x6400

    goto :goto_0

    :pswitch_8
    const/16 v4, 0x7080

    goto :goto_0

    :pswitch_9
    const v4, 0x8566

    goto :goto_0

    :pswitch_a
    const v4, 0x9600

    goto :goto_0

    :pswitch_b
    const v4, 0x9c40

    goto :goto_0

    :pswitch_c
    const v4, 0xc800

    goto :goto_0

    :pswitch_d
    const v4, 0xe100

    goto :goto_0

    :pswitch_e
    const/16 v4, 0x1cb6

    goto :goto_0

    :pswitch_f
    const/16 v4, 0x1f40

    goto :goto_0

    :pswitch_10
    const/16 v4, 0x2b11

    goto :goto_0

    :pswitch_11
    const/16 v4, 0x2ee0

    goto :goto_0

    :pswitch_12
    const/16 v4, 0x3e80

    goto :goto_0

    :pswitch_13
    const/16 v4, 0x5622

    goto :goto_0

    :pswitch_14
    const/16 v4, 0x5dc0

    goto :goto_0

    :pswitch_15
    const/16 v4, 0x7d00

    goto :goto_0

    :pswitch_16
    const v4, 0xac44

    goto :goto_0

    :pswitch_17
    const v4, 0xbb80

    goto :goto_0

    :pswitch_18
    const v4, 0xfa00

    goto :goto_0

    :pswitch_19
    const v4, 0x15888

    goto :goto_0

    :pswitch_1a
    const v4, 0x17700

    :goto_0
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    const-string v7, "Unsupported coreSbrFrameLengthIndex "

    const/16 v8, 0x24

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_2

    if-eq v6, v5, :cond_2

    if-ne v6, v9, :cond_1

    const/16 v12, 0x1000

    goto :goto_1

    :cond_1
    invoke-static {v6, v8}, LC/a;->e(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_2
    const/16 v12, 0x800

    goto :goto_1

    :cond_3
    const/16 v12, 0x400

    goto :goto_1

    :cond_4
    const/16 v12, 0x300

    :goto_1
    if-eqz v6, :cond_8

    if-eq v6, v11, :cond_8

    if-eq v6, v10, :cond_7

    if-eq v6, v5, :cond_6

    if-ne v6, v9, :cond_5

    move v6, v11

    goto :goto_2

    :cond_5
    invoke-static {v6, v8}, LC/a;->e(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_6
    move v6, v5

    goto :goto_2

    :cond_7
    move v6, v10

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapt;->zzc(Lcom/google/android/gms/internal/ads/zzer;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_3
    add-int/lit8 v15, v7, 0x1

    const/16 v13, 0x10

    if-ge v8, v15, :cond_b

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v15

    invoke-static {v0, v2, v1, v13}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v13

    add-int/2addr v13, v11

    add-int/2addr v14, v13

    if-eqz v15, :cond_9

    if-ne v15, v10, :cond_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapt;->zzc(Lcom/google/android/gms/internal/ads/zzer;)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    invoke-static {v0, v9, v1, v13}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v7

    add-int/2addr v7, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    const/4 v8, 0x0

    :goto_4
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    if-ge v8, v7, :cond_1a

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v15

    if-eqz v15, :cond_18

    if-eq v15, v11, :cond_f

    if-eq v15, v5, :cond_d

    :cond_c
    :goto_5
    move v13, v3

    goto/16 :goto_7

    :cond_d
    invoke-static {v0, v9, v1, v13}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    invoke-static {v0, v9, v1, v13}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v17

    const/4 v11, 0x0

    if-eqz v17, :cond_e

    invoke-static {v0, v1, v13, v11}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    if-lez v15, :cond_c

    mul-int/lit8 v15, v15, 0x8

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapt;->zzd(Lcom/google/android/gms/internal/ads/zzer;)Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_10
    if-lez v6, :cond_11

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapt;->zze(Lcom/google/android/gms/internal/ads/zzer;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v15

    move/from16 v16, v6

    goto :goto_6

    :cond_11
    move v15, v11

    move/from16 v16, v15

    :goto_6
    if-lez v15, :cond_15

    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v13

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_12
    if-eq v15, v10, :cond_13

    if-ne v15, v5, :cond_14

    :cond_13
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_14
    if-ne v13, v10, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_15
    add-int/lit8 v11, v14, -0x1

    move v13, v3

    int-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    div-double v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    if-lez v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_17
    if-nez v16, :cond_19

    if-nez v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    goto :goto_7

    :cond_18
    move v13, v3

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapt;->zzd(Lcom/google/android/gms/internal/ads/zzer;)Z

    if-lez v6, :cond_19

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapt;->zze(Lcom/google/android/gms/internal/ads/zzer;)V

    :cond_19
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move v3, v13

    const/4 v2, 0x5

    const/4 v11, 0x1

    const/16 v13, 0x10

    goto/16 :goto_4

    :cond_1a
    move v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    invoke-static {v0, v10, v9, v1}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v2, :cond_1d

    const/16 v7, 0x10

    invoke-static {v0, v9, v1, v7}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v8

    invoke-static {v0, v9, v1, v7}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v10

    const/4 v11, 0x7

    if-ne v8, v11, :cond_1c

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    new-array v8, v3, [B

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v3, :cond_1b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_1b
    move-object v3, v8

    goto :goto_a

    :cond_1c
    mul-int/2addr v10, v1

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_1d
    move-object v6, v3

    sparse-switch v4, :sswitch_data_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported sampling rate "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :sswitch_0
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    goto :goto_b

    :sswitch_1
    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    goto :goto_b

    :sswitch_2
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    :goto_b
    :sswitch_3
    int-to-double v0, v4

    int-to-double v2, v12

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaps;

    mul-double v2, v2, v17

    mul-double v0, v0, v17

    double-to-int v4, v0

    double-to-int v5, v2

    const/4 v7, 0x0

    move-object v2, v8

    move v3, v13

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(III[B[B)V

    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return-void

    :cond_0
    const/16 v3, 0x10

    const/4 v4, 0x5

    const/16 v5, 0x8

    invoke-static {p0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzapt;->zzf(Lcom/google/android/gms/internal/ads/zzer;III)I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/4 v7, 0x7

    if-ne v1, v6, :cond_1

    mul-int/2addr v3, v7

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    return-void

    :cond_1
    if-ne v1, v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v1

    if-eq v6, v1, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v6

    :goto_0
    if-eq v6, v1, :cond_3

    goto :goto_1

    :cond_3
    move v4, v7

    :goto_1
    if-eq v6, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    const/4 v1, 0x0

    move v5, v1

    :goto_3
    if-ge v5, v3, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v9

    const/16 v10, 0xb4

    if-eqz v9, :cond_5

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    move v9, v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    const/4 v11, 0x3

    if-ne v9, v11, :cond_6

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    mul-int/2addr v9, v8

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    mul-int/2addr v9, v8

    if-eqz v9, :cond_7

    if-eq v9, v10, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :goto_4
    if-eqz v9, :cond_8

    if-eq v9, v10, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/2addr v5, v6

    goto :goto_3

    :cond_9
    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzer;)Z
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_0
    return v0
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_1
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzer;III)I
    .locals 5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    shl-int v0, v2, p1

    shl-int v1, v2, p2

    const/4 v3, -0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    shl-int/2addr v2, p3

    invoke-static {v4, v2}, Ljava/lang/Math;->addExact(II)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v2

    if-ge v2, p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v0

    if-ge v0, p2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result p2

    add-int/2addr p1, p2

    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result p2

    if-ge p2, p3, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result p0

    add-int/2addr p1, p0

    :cond_4
    return p1
.end method
