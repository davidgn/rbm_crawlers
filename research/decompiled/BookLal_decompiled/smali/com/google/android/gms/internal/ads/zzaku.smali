.class public final Lcom/google/android/gms/internal/ads/zzaku;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const-string v0, "OpusHead"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaku;->zzb:[B

    return-void
.end method

.method public static zza(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfw;Lcom/google/android/gms/internal/ads/zzafy;JLcom/google/android/gms/internal/ads/zzq;ZZLcom/google/android/gms/internal/ads/zzgsa;Z)Ljava/util/List;
    .locals 83

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    const-string v12, "application/ttml+xml"

    const-string v6, "BoxParsers"

    const/4 v2, 0x4

    const/16 v16, 0x5

    const v13, 0x6d646961

    const/16 v9, 0x8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfw;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_9d

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfw;

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzfy;->zzd:I

    const v4, 0x7472616b

    if-eq v1, v4, :cond_0

    move-object/from16 v10, p1

    move-object/from16 v0, p7

    move-object v4, v7

    move v7, v9

    move-object/from16 v52, v12

    move v5, v13

    move/from16 v17, v14

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const v8, 0x6d696e66

    const v9, 0x7374626c

    const/4 v11, 0x0

    const v21, 0x54544d4c

    const v25, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    const v49, 0x77767474

    goto/16 :goto_70

    :cond_0
    const v1, 0x6d766864

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v13, 0x68646c72    # 4.3148E24f

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaku;->zzi(Lcom/google/android/gms/internal/ads/zzes;)I

    move-result v13

    const v15, 0x736f756e

    const/4 v10, -0x1

    if-ne v13, v15, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const v15, 0x76696465

    if-ne v13, v15, :cond_2

    const/4 v13, 0x2

    goto :goto_1

    :cond_2
    const v15, 0x74657874

    if-eq v13, v15, :cond_3

    const v15, 0x7362746c

    if-eq v13, v15, :cond_3

    const v15, 0x73756274

    if-eq v13, v15, :cond_3

    const v15, 0x636c6370

    if-eq v13, v15, :cond_3

    const v15, 0x73756270

    if-ne v13, v15, :cond_4

    :cond_3
    const/4 v13, 0x3

    goto :goto_1

    :cond_4
    const v15, 0x6d657461

    if-ne v13, v15, :cond_5

    move/from16 v13, v16

    goto :goto_1

    :cond_5
    move v13, v10

    :goto_1
    if-ne v13, v10, :cond_6

    move-object/from16 v0, p7

    move-object v4, v5

    move-object/from16 v59, v7

    move v7, v9

    move-object/from16 v52, v12

    move/from16 v17, v14

    const/4 v1, 0x2

    const/4 v3, 0x3

    :goto_2
    const/4 v15, 0x0

    const v21, 0x54544d4c

    const v25, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    const v49, 0x77767474

    goto/16 :goto_6e

    :cond_6
    const v15, 0x746b6864

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzaku;->zza(I)I

    move-result v29

    if-nez v29, :cond_7

    goto :goto_3

    :cond_7
    const/16 v9, 0x10

    :goto_3
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v9

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v31

    const/4 v2, 0x0

    :goto_4
    if-nez v29, :cond_8

    const/4 v3, 0x4

    goto :goto_5

    :cond_8
    const/16 v3, 0x8

    :goto_5
    const-wide/16 v34, 0x0

    move/from16 v37, v9

    if-ge v2, v3, :cond_c

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    add-int v38, v31, v2

    aget-byte v3, v3, v38

    if-eq v3, v10, :cond_b

    if-nez v29, :cond_9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v2

    goto :goto_6

    :cond_9
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzJ()J

    move-result-wide v2

    :goto_6
    cmp-long v29, v2, v34

    if-nez v29, :cond_a

    :goto_7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :cond_a
    const/16 v10, 0xa

    goto :goto_8

    :cond_b
    const/4 v3, 0x1

    add-int/2addr v2, v3

    move/from16 v9, v37

    goto :goto_4

    :cond_c
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    goto :goto_7

    :goto_8
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v10

    const/4 v8, 0x4

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v0

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v8

    move-wide/from16 v40, v2

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    const/high16 v3, 0x10000

    move-object/from16 v31, v5

    const/high16 v5, -0x10000

    if-nez v9, :cond_12

    if-ne v0, v3, :cond_f

    if-eq v8, v5, :cond_10

    if-ne v8, v3, :cond_e

    if-nez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    const/4 v0, 0x1

    :goto_9
    move v8, v3

    :goto_a
    const/4 v9, 0x1

    goto :goto_b

    :cond_e
    move v0, v3

    :cond_f
    const/4 v9, 0x0

    goto :goto_d

    :cond_10
    if-nez v2, :cond_11

    const/4 v0, 0x0

    goto :goto_a

    :cond_11
    const/4 v0, 0x1

    goto :goto_a

    :goto_b
    if-eq v9, v0, :cond_e

    const/16 v0, 0x5a

    :goto_c
    const/16 v2, 0x10

    goto :goto_13

    :cond_12
    :goto_d
    if-nez v9, :cond_18

    if-ne v0, v5, :cond_15

    if-eq v8, v3, :cond_16

    if-ne v8, v5, :cond_14

    if-nez v2, :cond_13

    const/4 v0, 0x0

    goto :goto_e

    :cond_13
    const/4 v0, 0x1

    :goto_e
    move v8, v5

    :goto_f
    const/4 v9, 0x1

    goto :goto_10

    :cond_14
    move v0, v5

    :cond_15
    const/4 v9, 0x0

    goto :goto_11

    :cond_16
    if-nez v2, :cond_17

    const/4 v0, 0x0

    goto :goto_f

    :cond_17
    const/4 v0, 0x1

    goto :goto_f

    :goto_10
    if-eq v9, v0, :cond_14

    const/16 v0, 0x10e

    goto :goto_c

    :cond_18
    :goto_11
    if-eq v9, v5, :cond_1a

    if-ne v9, v3, :cond_19

    goto :goto_12

    :cond_19
    const/4 v0, 0x0

    goto :goto_c

    :cond_1a
    :goto_12
    if-nez v0, :cond_19

    if-nez v8, :cond_19

    if-ne v2, v5, :cond_19

    const/16 v0, 0xb4

    goto :goto_c

    :goto_13
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v9

    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v15

    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v38

    if-nez v2, :cond_1b

    move-wide/from16 v42, v40

    goto :goto_14

    :cond_1b
    move-wide/from16 v42, p2

    :goto_14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaku;->zzd(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzga;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzga;->zzc:J

    cmp-long v1, v42, v38

    if-nez v1, :cond_1c

    move-wide/from16 v43, v38

    :goto_15
    const v5, 0x6d696e66

    goto :goto_16

    :cond_1c
    const-wide/32 v44, 0xf4240

    sget-object v48, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v46, v2

    invoke-static/range {v42 .. v48}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v40

    move-wide/from16 v43, v40

    goto :goto_15

    :goto_16
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x7374626c

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d646864

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzaku;->zza(I)I

    move-result v25

    if-nez v25, :cond_1d

    goto :goto_17

    :cond_1d
    const/16 v5, 0x10

    :goto_17
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    move-object/from16 v52, v12

    move/from16 v53, v13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v5

    const/4 v8, 0x0

    :goto_18
    if-nez v25, :cond_1e

    move-wide/from16 v41, v2

    const/4 v2, 0x4

    goto :goto_19

    :cond_1e
    move-wide/from16 v41, v2

    const/16 v2, 0x8

    :goto_19
    if-ge v8, v2, :cond_22

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    add-int v3, v5, v8

    aget-byte v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    if-nez v25, :cond_1f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v45

    goto :goto_1a

    :cond_1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzJ()J

    move-result-wide v45

    :goto_1a
    cmp-long v2, v45, v34

    if-nez v2, :cond_20

    :goto_1b
    move/from16 v25, v10

    move-wide/from16 v10, v38

    goto :goto_1c

    :cond_20
    const-wide/32 v47, 0xf4240

    sget-object v51, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v49, v12

    invoke-static/range {v45 .. v51}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v45

    move/from16 v25, v10

    move-wide/from16 v10, v45

    goto :goto_1c

    :cond_21
    const/4 v2, 0x1

    add-int/2addr v8, v2

    move-wide/from16 v2, v41

    goto :goto_18

    :cond_22
    const/4 v3, -0x1

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    goto :goto_1b

    :goto_1c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v2

    const/16 v4, 0xa

    shr-int/lit8 v5, v2, 0xa

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    shr-int/lit8 v8, v2, 0x5

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    const/4 v3, 0x3

    new-array v4, v3, [C

    const/16 v23, 0x0

    aput-char v5, v4, v23

    const/4 v5, 0x1

    aput-char v8, v4, v5

    const/4 v8, 0x2

    aput-char v2, v4, v8

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_25

    aget-char v8, v4, v2

    const/16 v3, 0x61

    if-lt v8, v3, :cond_23

    const/16 v3, 0x7a

    if-le v8, v3, :cond_24

    :cond_23
    const/4 v8, 0x0

    goto :goto_1e

    :cond_24
    add-int/2addr v2, v5

    const/4 v3, 0x3

    goto :goto_1d

    :cond_25
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    move-object v8, v2

    :goto_1e
    const v2, 0x73747364

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v1

    if-nez v1, :cond_26

    const-string v0, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p7

    move-object/from16 v59, v7

    move/from16 v17, v14

    move-object/from16 v4, v31

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/16 v7, 0x8

    goto/16 :goto_2

    :cond_26
    invoke-static {v12, v13, v10, v11, v8}, Lcom/google/android/gms/internal/ads/zzakn;->zzc(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/16 v1, 0xc

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzakq;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzakq;-><init>(I)V

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v3, :cond_90

    move-wide/from16 v45, v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v11

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v10

    if-lez v10, :cond_27

    move/from16 v47, v1

    move/from16 v48, v3

    const/4 v1, 0x1

    goto :goto_20

    :cond_27
    move/from16 v47, v1

    move/from16 v48, v3

    const/4 v1, 0x0

    :goto_20
    const-string v3, "childAtomSize must be positive"

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v1

    move-object/from16 v49, v6

    const v6, 0x61766331

    move-object/from16 v50, v7

    const v7, 0x656e6376

    if-eq v1, v6, :cond_28

    const v6, 0x61766333

    if-eq v1, v6, :cond_28

    if-eq v1, v7, :cond_28

    const v6, 0x6d317620

    if-eq v1, v6, :cond_28

    const v6, 0x6d703476

    if-eq v1, v6, :cond_28

    const v6, 0x68766331

    if-eq v1, v6, :cond_28

    const v6, 0x68657631

    if-eq v1, v6, :cond_28

    const v6, 0x73323633

    if-eq v1, v6, :cond_28

    const v6, 0x48323633

    if-eq v1, v6, :cond_28

    const v6, 0x68323633

    if-eq v1, v6, :cond_28

    const v6, 0x76703038

    if-eq v1, v6, :cond_28

    const v6, 0x76703039

    if-eq v1, v6, :cond_28

    const v6, 0x61763031

    if-eq v1, v6, :cond_28

    const v6, 0x64766176

    if-eq v1, v6, :cond_28

    const v6, 0x64766131

    if-eq v1, v6, :cond_28

    const v6, 0x64766865

    if-eq v1, v6, :cond_28

    const v6, 0x64766831

    if-eq v1, v6, :cond_28

    const v6, 0x61707631

    if-ne v1, v6, :cond_29

    :cond_28
    move v6, v1

    move-object/from16 v24, v2

    move-object/from16 v18, v5

    move-object/from16 v60, v8

    move/from16 v20, v9

    move/from16 v17, v14

    move/from16 p8, v15

    move/from16 v63, v25

    move-object/from16 v57, v31

    move/from16 v62, v37

    move-wide/from16 v55, v41

    move-wide/from16 v64, v45

    move/from16 v15, v47

    move/from16 v19, v48

    move-object/from16 v58, v49

    move-object/from16 v59, v50

    const v21, 0x54544d4c

    const v25, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    const v49, 0x77767474

    move-object v14, v4

    move-wide/from16 v41, v12

    const/16 v13, 0x10

    move v12, v10

    goto/16 :goto_2b

    :cond_29
    const v3, 0x6d703461

    if-eq v1, v3, :cond_38

    const v3, 0x656e6361

    if-eq v1, v3, :cond_38

    const v3, 0x61632d33

    if-eq v1, v3, :cond_38

    const v3, 0x65632d33

    if-eq v1, v3, :cond_38

    const v3, 0x61632d34

    if-eq v1, v3, :cond_38

    const v3, 0x6d6c7061

    if-eq v1, v3, :cond_38

    const v3, 0x64747363

    if-eq v1, v3, :cond_38

    const v3, 0x64747365

    if-eq v1, v3, :cond_38

    const v3, 0x64747368

    if-eq v1, v3, :cond_38

    const v3, 0x6474736c

    if-eq v1, v3, :cond_38

    const v3, 0x64747378

    if-eq v1, v3, :cond_38

    const v3, 0x73616d72

    if-eq v1, v3, :cond_38

    const v3, 0x73617762

    if-eq v1, v3, :cond_38

    const v3, 0x6c70636d

    if-eq v1, v3, :cond_38

    const v3, 0x736f7774

    if-eq v1, v3, :cond_38

    const v3, 0x74776f73

    if-eq v1, v3, :cond_38

    const v3, 0x2e6d7032

    if-eq v1, v3, :cond_38

    const v3, 0x2e6d7033

    if-eq v1, v3, :cond_38

    const v3, 0x6d686131

    if-eq v1, v3, :cond_38

    const v3, 0x6d686d31

    if-eq v1, v3, :cond_38

    const v3, 0x616c6163

    if-eq v1, v3, :cond_38

    const v3, 0x616c6177

    if-eq v1, v3, :cond_38

    const v3, 0x756c6177

    if-eq v1, v3, :cond_38

    const v3, 0x4f707573

    if-eq v1, v3, :cond_38

    const v3, 0x664c6143

    if-eq v1, v3, :cond_38

    const v3, 0x69616d66

    if-eq v1, v3, :cond_38

    const v3, 0x6970636d

    if-eq v1, v3, :cond_38

    const v3, 0x6670636d

    if-ne v1, v3, :cond_2a

    move v6, v1

    move/from16 v17, v14

    move/from16 p8, v15

    move/from16 v7, v37

    move/from16 v15, v47

    const/4 v3, 0x3

    const/4 v14, 0x1

    const/16 v27, 0x10

    goto/16 :goto_2a

    :cond_2a
    const v3, 0x54544d4c

    if-eq v1, v3, :cond_2b

    const v3, 0x74783367

    if-eq v1, v3, :cond_2b

    const v3, 0x77767474

    if-eq v1, v3, :cond_2b

    const v3, 0x73747070

    if-eq v1, v3, :cond_2b

    const v3, 0x63363038

    if-eq v1, v3, :cond_2b

    const v3, 0x6d703473

    if-ne v1, v3, :cond_2c

    :cond_2b
    move/from16 v7, v37

    const/16 v27, 0x10

    goto/16 :goto_24

    :cond_2c
    const v3, 0x6d657474

    if-ne v1, v3, :cond_2f

    const/16 v3, 0x10

    add-int/lit8 v1, v11, 0x10

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzM(C)Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzM(C)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    move/from16 v7, v37

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :cond_2d
    :goto_21
    move-object/from16 v60, v8

    move/from16 v20, v9

    move/from16 v71, v10

    move/from16 v69, v11

    move/from16 v17, v14

    move/from16 p8, v15

    move/from16 v63, v25

    move-object/from16 v57, v31

    move-wide/from16 v55, v41

    move-wide/from16 v64, v45

    move/from16 v26, v47

    move/from16 v19, v48

    move-object/from16 v6, v49

    move-object/from16 v59, v50

    const/4 v1, 0x0

    const/4 v3, 0x3

    const v21, 0x54544d4c

    const v25, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    const v49, 0x77767474

    move-object v14, v4

    move-object v8, v5

    move v11, v7

    move-wide/from16 v41, v12

    const/4 v4, -0x1

    :goto_22
    move v7, v0

    :goto_23
    move-object v5, v2

    const/16 v2, 0xc

    goto/16 :goto_65

    :cond_2e
    move v7, v0

    move-object/from16 v60, v8

    move/from16 v20, v9

    move/from16 v71, v10

    move/from16 v69, v11

    move/from16 v17, v14

    move/from16 p8, v15

    move/from16 v63, v25

    move-object/from16 v57, v31

    move/from16 v11, v37

    move-wide/from16 v55, v41

    move-wide/from16 v64, v45

    move/from16 v26, v47

    move/from16 v19, v48

    move-object/from16 v6, v49

    move-object/from16 v59, v50

    const/4 v1, 0x0

    const/4 v3, 0x3

    const v21, 0x54544d4c

    const v25, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    const v49, 0x77767474

    move-object v14, v4

    move-object v8, v5

    move-wide/from16 v41, v12

    const/4 v4, -0x1

    goto :goto_23

    :cond_2f
    move/from16 v7, v37

    const v3, 0x63616d6d

    if-ne v1, v3, :cond_2d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    const-string v3, "application/x-camera-motion"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto/16 :goto_21

    :goto_24
    add-int/lit8 v3, v11, 0x10

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const-wide v54, 0x7fffffffffffffffL

    const v6, 0x54544d4c

    if-ne v1, v6, :cond_30

    move/from16 v17, v14

    move/from16 p8, v15

    move-object/from16 v3, v52

    :goto_25
    move-wide/from16 v14, v54

    :goto_26
    const/4 v1, 0x0

    goto/16 :goto_29

    :cond_30
    const v3, 0x74783367

    if-ne v1, v3, :cond_31

    add-int/lit8 v1, v10, -0x10

    new-array v3, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v1

    const-string v3, "application/x-quicktime-tx3g"

    move/from16 v17, v14

    :goto_27
    move/from16 p8, v15

    move-wide/from16 v14, v54

    goto/16 :goto_29

    :cond_31
    const v6, 0x77767474

    if-ne v1, v6, :cond_32

    const-string v3, "application/x-mp4-vtt"

    move/from16 v17, v14

    move/from16 p8, v15

    goto :goto_25

    :cond_32
    const v3, 0x73747070

    move/from16 v17, v14

    if-ne v1, v3, :cond_33

    move/from16 p8, v15

    move-wide/from16 v14, v34

    move-object/from16 v3, v52

    goto :goto_26

    :cond_33
    const v14, 0x63363038

    if-ne v1, v14, :cond_34

    const/4 v1, 0x1

    iput v1, v2, Lcom/google/android/gms/internal/ads/zzakq;->zzd:I

    const-string v18, "application/x-mp4-cea-608"

    move/from16 p8, v15

    move-object/from16 v3, v18

    goto :goto_25

    :cond_34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    const v6, 0x65736473

    if-ne v3, v6, :cond_36

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzaku;->zzo(Lcom/google/android/gms/internal/ads/zzes;I)Lcom/google/android/gms/internal/ads/zzakl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzakl;->zzb()[B

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzakl;->zzb()[B

    move-result-object v3

    array-length v3, v3

    const/16 v6, 0x40

    if-ne v3, v6, :cond_35

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzakl;->zzb()[B

    move-result-object v1

    invoke-static {v1, v9, v15}, Lcom/google/android/gms/internal/ads/zzaku;->zzj([BII)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v1

    const-string v3, "application/vobsub"

    goto :goto_27

    :cond_35
    move-object v14, v4

    move-object/from16 v60, v8

    move/from16 v20, v9

    move/from16 v71, v10

    move/from16 v69, v11

    move/from16 p8, v15

    :goto_28
    move/from16 v63, v25

    move-object/from16 v57, v31

    move-wide/from16 v55, v41

    move-wide/from16 v64, v45

    move/from16 v26, v47

    move/from16 v19, v48

    move-object/from16 v6, v49

    move-object/from16 v59, v50

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, -0x1

    const v21, 0x54544d4c

    const v25, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    const v49, 0x77767474

    move-object v8, v5

    move v11, v7

    move-wide/from16 v41, v12

    goto/16 :goto_22

    :cond_36
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_27

    :goto_29
    if-eqz v3, :cond_37

    new-instance v6, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v14, v15}, Lcom/google/android/gms/internal/ads/zzt;->zzs(J)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :cond_37
    move-object v14, v4

    move-object/from16 v60, v8

    move/from16 v20, v9

    move/from16 v71, v10

    move/from16 v69, v11

    goto :goto_28

    :cond_38
    move/from16 v17, v14

    move/from16 p8, v15

    move/from16 v7, v37

    const/4 v14, 0x1

    const/16 v27, 0x10

    move v6, v1

    move/from16 v15, v47

    const/4 v3, 0x3

    :goto_2a
    move-object v1, v4

    move-object/from16 v24, v2

    move-wide/from16 v55, v41

    const/4 v14, 0x4

    move v2, v6

    move v6, v3

    move/from16 v19, v48

    const/16 v18, -0x1

    const v29, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    move v3, v11

    move-object v14, v4

    move v4, v10

    move-wide/from16 v41, v12

    move-object/from16 v12, v31

    const/16 v26, 0x8

    move-object v13, v5

    move v5, v7

    move-object/from16 v57, v12

    move-object/from16 v58, v49

    const v20, 0x6d317620

    const v21, 0x76703038

    const v22, 0x54544d4c

    const v49, 0x77767474

    move v12, v6

    move-object v6, v13

    move/from16 v12, v20

    move-object/from16 v59, v50

    move/from16 v20, v7

    move/from16 v7, p6

    move-object/from16 v60, v8

    move-object/from16 v8, p4

    move/from16 v62, v20

    move/from16 v21, v22

    move/from16 v20, v9

    move-object/from16 v9, v24

    move v12, v10

    move-object/from16 v18, v13

    move/from16 v63, v25

    move/from16 v13, v27

    move/from16 v25, v29

    move-wide/from16 v64, v45

    move v10, v15

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaku;->zzn(Lcom/google/android/gms/internal/ads/zzes;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzakq;I)V

    move v7, v0

    move/from16 v69, v11

    move/from16 v71, v12

    move/from16 v26, v15

    move-object/from16 v8, v18

    move-object/from16 v5, v24

    move-object/from16 v6, v58

    move/from16 v11, v62

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, -0x1

    goto/16 :goto_65

    :goto_2b
    add-int/lit8 v10, v11, 0x10

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v2

    const/16 v4, 0x32

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v4

    if-ne v6, v7, :cond_3b

    invoke-static {v14, v11, v12}, Lcom/google/android/gms/internal/ads/zzaku;->zzq(Lcom/google/android/gms/internal/ads/zzes;II)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_3a

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v8, p4

    if-nez v8, :cond_39

    move-object/from16 v9, v24

    const/4 v7, 0x0

    goto :goto_2c

    :cond_39
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzalt;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v7

    move-object/from16 v9, v24

    :goto_2c
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzakq;->zza:[Lcom/google/android/gms/internal/ads/zzalt;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzalt;

    aput-object v5, v10, v15

    move-object v5, v7

    move v7, v6

    goto :goto_2d

    :cond_3a
    move-object/from16 v8, p4

    move-object/from16 v9, v24

    move-object v5, v8

    :goto_2d
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :goto_2e
    const v6, 0x6d317620

    goto :goto_2f

    :cond_3b
    move-object/from16 v8, p4

    move-object/from16 v9, v24

    move v7, v6

    move-object v5, v8

    goto :goto_2e

    :goto_2f
    if-ne v7, v6, :cond_3c

    const-string v10, "video/mpeg"

    goto :goto_30

    :cond_3c
    const v10, 0x48323633

    if-ne v7, v10, :cond_3d

    const-string v7, "video/3gpp"

    move/from16 v82, v10

    move-object v10, v7

    move/from16 v7, v82

    goto :goto_30

    :cond_3d
    const/4 v10, 0x0

    :goto_30
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v32, v0

    move/from16 v40, v1

    move/from16 v37, v2

    move-object/from16 v29, v5

    move/from16 v68, v7

    move-object v8, v10

    move/from16 v26, v15

    move/from16 v66, v22

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x8

    const/16 v13, 0x8

    const/4 v15, -0x1

    const/16 v22, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v33, -0x1

    const/16 v36, -0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v51, 0x0

    const/16 v67, 0x0

    move v10, v4

    const/4 v4, -0x1

    :goto_31
    sub-int v7, v10, v11

    if-ge v7, v12, :cond_3e

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v7

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v69

    if-nez v69, :cond_40

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v69

    move/from16 v70, v10

    sub-int v10, v69, v11

    if-ne v10, v12, :cond_3f

    :cond_3e
    move-object/from16 v81, v2

    move/from16 v75, v6

    move-object/from16 v72, v9

    move/from16 v69, v11

    move/from16 v71, v12

    move/from16 v73, v13

    move/from16 v76, v15

    move-object/from16 v6, v58

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    move v9, v4

    const/4 v4, -0x1

    goto/16 :goto_61

    :cond_3f
    const/4 v10, 0x0

    goto :goto_32

    :cond_40
    move/from16 v70, v10

    move/from16 v10, v69

    :goto_32
    if-lez v10, :cond_41

    move/from16 v69, v11

    const/4 v11, 0x1

    goto :goto_33

    :cond_41
    move/from16 v69, v11

    const/4 v11, 0x0

    :goto_33
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v11

    move/from16 v71, v12

    const v12, 0x61766343

    if-ne v11, v12, :cond_44

    const/16 v12, 0x8

    add-int/2addr v7, v12

    if-nez v8, :cond_42

    const/4 v0, 0x0

    const/4 v8, 0x1

    goto :goto_34

    :cond_42
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_34
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzaek;->zza(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzaek;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Ljava/util/List;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    iput v5, v9, Lcom/google/android/gms/internal/ads/zzakq;->zzc:I

    if-nez v22, :cond_43

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:F

    move/from16 v66, v5

    const/4 v8, 0x0

    goto :goto_35

    :cond_43
    const/4 v8, 0x1

    :goto_35
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzh:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:I

    const-string v22, "video/avc"

    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move-object/from16 v74, v3

    move-object/from16 v38, v5

    move/from16 v31, v6

    move-object/from16 v72, v9

    move v5, v13

    move/from16 v75, v15

    move-object/from16 v6, v58

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    move v13, v0

    move v9, v4

    move v0, v7

    move v15, v11

    const/4 v4, -0x1

    move-object/from16 v82, v22

    move/from16 v22, v8

    move-object/from16 v8, v82

    goto/16 :goto_60

    :cond_44
    move/from16 v61, v4

    const/16 v12, 0x8

    const v4, 0x68766343

    if-ne v11, v4, :cond_48

    add-int/2addr v7, v12

    if-nez v8, :cond_45

    const/4 v0, 0x0

    const/4 v8, 0x1

    goto :goto_36

    :cond_45
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_36
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzafz;->zza(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafz;->zza:Ljava/util/List;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzb:I

    iput v1, v9, Lcom/google/android/gms/internal/ads/zzakq;->zzc:I

    if-nez v22, :cond_46

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzl:F

    move/from16 v66, v1

    const/4 v8, 0x0

    goto :goto_37

    :cond_46
    const/4 v8, 0x1

    :goto_37
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzm:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzc:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzn:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzk:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_47

    move/from16 v61, v6

    :cond_47
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzd:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzafz;->zze:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzh:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzi:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzj:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzf:I

    move/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzg:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafz;->zzo:Lcom/google/android/gms/internal/ads/zzgl;

    const-string v30, "video/hevc"

    move-object/from16 v81, v2

    move-object/from16 v74, v3

    move-object/from16 v38, v5

    move/from16 v36, v6

    move v5, v7

    move-object/from16 v72, v9

    move/from16 v33, v11

    move/from16 v75, v12

    move/from16 v31, v22

    move-object/from16 v6, v58

    move/from16 v9, v61

    const/16 v2, 0xc

    const/4 v3, 0x3

    move-object/from16 v61, v0

    move/from16 v22, v8

    move v0, v13

    move-object/from16 v8, v30

    move v13, v1

    move/from16 v30, v4

    const/4 v1, 0x0

    :goto_38
    const/4 v4, -0x1

    goto/16 :goto_60

    :cond_48
    const/4 v4, -0x1

    const v12, 0x6c687643

    if-ne v11, v12, :cond_55

    const/16 v12, 0x8

    add-int/2addr v7, v12

    const-string v11, "video/hevc"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "lhvC must follow hvcC atom"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    if-eqz v1, :cond_4a

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    const/4 v11, 0x2

    if-lt v8, v11, :cond_49

    const/4 v8, 0x1

    goto :goto_3a

    :cond_49
    :goto_39
    const/4 v8, 0x0

    goto :goto_3a

    :cond_4a
    const/4 v1, 0x0

    goto :goto_39

    :goto_3a
    const-string v11, "must have at least two layers"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzafz;->zzb(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzgl;)Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object v7

    iget v8, v9, Lcom/google/android/gms/internal/ads/zzakq;->zzc:I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzafz;->zzb:I

    if-ne v8, v11, :cond_4b

    const/4 v8, 0x1

    goto :goto_3b

    :cond_4b
    const/4 v8, 0x0

    :goto_3b
    const-string v11, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzafz;->zzh:I

    if-eq v8, v4, :cond_4d

    if-ne v0, v8, :cond_4c

    const/4 v8, 0x1

    goto :goto_3c

    :cond_4c
    const/4 v8, 0x0

    :goto_3c
    const-string v11, "colorSpace must be the same for both views"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    :cond_4d
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzafz;->zzi:I

    if-eq v8, v4, :cond_4f

    if-ne v15, v8, :cond_4e

    const/4 v8, 0x1

    goto :goto_3d

    :cond_4e
    const/4 v8, 0x0

    :goto_3d
    const-string v11, "colorRange must be the same for both views"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    :cond_4f
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzafz;->zzj:I

    if-eq v8, v4, :cond_51

    if-ne v5, v8, :cond_50

    const/4 v8, 0x1

    goto :goto_3e

    :cond_50
    const/4 v8, 0x0

    :goto_3e
    const-string v11, "colorTransfer must be the same for both views"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    :cond_51
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzafz;->zzf:I

    if-ne v6, v8, :cond_52

    const/4 v8, 0x1

    goto :goto_3f

    :cond_52
    const/4 v8, 0x0

    :goto_3f
    const-string v11, "bitdepthLuma must be the same for both views"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzafz;->zzg:I

    if-ne v13, v8, :cond_53

    const/4 v8, 0x1

    goto :goto_40

    :cond_53
    const/4 v8, 0x0

    :goto_40
    const-string v11, "bitdepthChroma must be the same for both views"

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    if-eqz v2, :cond_54

    sget v8, Lcom/google/android/gms/internal/ads/zzgvm;->zzd:I

    new-instance v8, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzgvj;-><init>()V

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzgvj;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvj;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzafz;->zza:Ljava/util/List;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzgvj;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgvj;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v2

    goto :goto_41

    :cond_54
    const-string v8, "initializationData must be already set from hvcC atom"

    const/4 v11, 0x0

    invoke-static {v11, v8}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    :goto_41
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzafz;->zzn:Ljava/lang/String;

    const-string v8, "video/mv-hevc"

    move-object/from16 v81, v2

    move-object/from16 v74, v3

    move/from16 v75, v6

    move-object/from16 v38, v7

    move-object/from16 v72, v9

    move-object/from16 v6, v58

    move/from16 v9, v61

    const/16 v2, 0xc

    const/4 v3, 0x3

    move-object/from16 v61, v1

    const/4 v1, 0x0

    goto/16 :goto_60

    :cond_55
    const v12, 0x76657875

    if-ne v11, v12, :cond_65

    const/16 v12, 0x8

    add-int/lit8 v11, v7, 0x8

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v11

    const/4 v12, 0x0

    :goto_42
    sub-int v4, v11, v7

    if-ge v4, v10, :cond_5e

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v4

    if-lez v4, :cond_56

    move-object/from16 v72, v9

    const/4 v9, 0x1

    goto :goto_43

    :cond_56
    move-object/from16 v72, v9

    const/4 v9, 0x0

    :goto_43
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v9

    move/from16 v73, v13

    const v13, 0x65796573

    if-ne v9, v13, :cond_5d

    const/16 v9, 0x8

    add-int/lit8 v12, v11, 0x8

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v9

    :goto_44
    sub-int v12, v9, v11

    if-ge v12, v4, :cond_5c

    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v12

    if-lez v12, :cond_57

    const/4 v13, 0x1

    goto :goto_45

    :cond_57
    const/4 v13, 0x0

    :goto_45
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v13

    move-object/from16 v74, v3

    const v3, 0x73747269

    if-ne v13, v3, :cond_5b

    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v3

    const/4 v13, 0x1

    and-int/lit8 v9, v3, 0x1

    const/4 v12, 0x2

    and-int/lit8 v13, v3, 0x2

    if-ne v13, v12, :cond_58

    const/4 v12, 0x1

    :goto_46
    const/16 v13, 0x8

    goto :goto_47

    :cond_58
    const/4 v12, 0x0

    goto :goto_46

    :goto_47
    and-int/2addr v3, v13

    if-ne v3, v13, :cond_59

    const/4 v3, 0x1

    :goto_48
    const/4 v13, 0x1

    goto :goto_49

    :cond_59
    const/4 v3, 0x0

    goto :goto_48

    :goto_49
    if-eq v13, v9, :cond_5a

    const/4 v9, 0x0

    goto :goto_4a

    :cond_5a
    const/4 v9, 0x1

    :goto_4a
    new-instance v13, Lcom/google/android/gms/internal/ads/zzakm;

    move/from16 v75, v6

    new-instance v6, Lcom/google/android/gms/internal/ads/zzakp;

    invoke-direct {v6, v9, v12, v3}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(ZZZ)V

    invoke-direct {v13, v6}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Lcom/google/android/gms/internal/ads/zzakp;)V

    move-object v12, v13

    goto :goto_4b

    :cond_5b
    move/from16 v75, v6

    add-int/2addr v9, v12

    move-object/from16 v3, v74

    goto :goto_44

    :cond_5c
    move-object/from16 v74, v3

    move/from16 v75, v6

    const/4 v12, 0x0

    goto :goto_4b

    :cond_5d
    move-object/from16 v74, v3

    move/from16 v75, v6

    :goto_4b
    add-int/2addr v11, v4

    move-object/from16 v9, v72

    move/from16 v13, v73

    move-object/from16 v3, v74

    move/from16 v6, v75

    goto/16 :goto_42

    :cond_5e
    move-object/from16 v74, v3

    move/from16 v75, v6

    move-object/from16 v72, v9

    move/from16 v73, v13

    if-nez v12, :cond_5f

    const/4 v3, 0x0

    goto :goto_4c

    :cond_5f
    new-instance v3, Lcom/google/android/gms/internal/ads/zzakt;

    invoke-direct {v3, v12}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Lcom/google/android/gms/internal/ads/zzakm;)V

    :goto_4c
    if-eqz v3, :cond_64

    if-eqz v1, :cond_61

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_60

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zza()Z

    move-result v4

    const-string v6, "both eye views must be marked as available"

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zzb()Lcom/google/android/gms/internal/ads/zzakm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzakm;->zza()Lcom/google/android/gms/internal/ads/zzakp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzakp;->zzc()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v6, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    move-object/from16 v81, v2

    move/from16 v76, v15

    move-object/from16 v6, v58

    move/from16 v9, v61

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, -0x1

    move-object/from16 v61, v1

    const/4 v1, 0x0

    goto/16 :goto_5b

    :cond_60
    const/4 v4, 0x1

    move/from16 v9, v61

    :goto_4d
    const/4 v6, -0x1

    goto :goto_4e

    :cond_61
    const/4 v4, 0x1

    move/from16 v9, v61

    const/4 v1, 0x0

    goto :goto_4d

    :goto_4e
    if-ne v9, v6, :cond_63

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zzb()Lcom/google/android/gms/internal/ads/zzakm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzakm;->zza()Lcom/google/android/gms/internal/ads/zzakp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzakp;->zzc()Z

    move-result v3

    move-object/from16 v61, v1

    move-object/from16 v81, v2

    if-eq v4, v3, :cond_62

    move-object/from16 v6, v58

    move/from16 v13, v73

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v9, 0x4

    goto/16 :goto_60

    :cond_62
    move/from16 v9, v16

    :goto_4f
    move-object/from16 v6, v58

    move/from16 v13, v73

    :goto_50
    const/4 v1, 0x0

    :goto_51
    const/16 v2, 0xc

    const/4 v3, 0x3

    goto/16 :goto_38

    :cond_63
    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move v4, v6

    move-object/from16 v6, v58

    move/from16 v13, v73

    const/4 v1, 0x0

    const/16 v2, 0xc

    :goto_52
    const/4 v3, 0x3

    goto/16 :goto_60

    :cond_64
    move/from16 v9, v61

    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move/from16 v76, v15

    move-object/from16 v6, v58

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    :goto_53
    const/4 v4, -0x1

    goto/16 :goto_5b

    :cond_65
    move-object/from16 v74, v3

    move/from16 v75, v6

    move-object/from16 v72, v9

    move/from16 v73, v13

    move/from16 v9, v61

    const v3, 0x64766343

    if-eq v11, v3, :cond_66

    const v3, 0x64767643

    if-eq v11, v3, :cond_66

    const v3, 0x64767743

    if-ne v11, v3, :cond_67

    :cond_66
    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move/from16 v76, v15

    move-object/from16 v6, v58

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, -0x1

    goto/16 :goto_5f

    :cond_67
    const v3, 0x76706343

    if-ne v11, v3, :cond_6c

    const/16 v3, 0xc

    add-int/2addr v7, v3

    if-nez v8, :cond_68

    const/4 v0, 0x0

    const/4 v8, 0x1

    goto :goto_54

    :cond_68
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_54
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v4

    const/4 v6, 0x4

    shr-int/lit8 v5, v4, 0x4

    const/4 v7, 0x1

    shr-int/lit8 v8, v4, 0x1

    move/from16 v12, v68

    const v13, 0x76703038

    if-ne v12, v13, :cond_69

    const-string v7, "video/x-vnd.on2.vp8"

    goto :goto_55

    :cond_69
    const-string v7, "video/x-vnd.on2.vp9"

    :goto_55
    const-string v11, "video/x-vnd.on2.vp9"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6a

    and-int/lit8 v2, v8, 0x7

    int-to-byte v8, v5

    int-to-byte v2, v2

    invoke-static {v0, v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zza(BBBB)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v2

    :cond_6a
    const/4 v0, 0x1

    and-int/lit8 v3, v4, 0x1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v4

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v4

    if-eq v0, v3, :cond_6b

    const/4 v0, 0x2

    goto :goto_56

    :cond_6b
    const/4 v0, 0x1

    :goto_56
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v3

    move v15, v0

    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move v0, v4

    move v13, v5

    move/from16 v75, v13

    move-object v8, v7

    move/from16 v68, v12

    move-object/from16 v6, v58

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v4, -0x1

    move v5, v3

    goto/16 :goto_52

    :cond_6c
    move/from16 v12, v68

    const/4 v6, 0x4

    const v13, 0x76703038

    const v3, 0x61763143

    if-ne v11, v3, :cond_6d

    const/16 v3, 0x8

    add-int/2addr v7, v3

    add-int/lit8 v0, v10, -0x8

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v2

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzaku;->zzk(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzi;->zzg:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzi;->zzd:I

    const-string v8, "video/av01"

    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move/from16 v75, v3

    move v13, v4

    move v15, v7

    move/from16 v68, v12

    move-object/from16 v6, v58

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, -0x1

    move/from16 v82, v5

    move v5, v0

    move/from16 v0, v82

    goto/16 :goto_60

    :cond_6d
    const v3, 0x636c6c69

    if-ne v11, v3, :cond_6f

    if-nez v39, :cond_6e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaku;->zzm()Ljava/nio/ByteBuffer;

    move-result-object v39

    :cond_6e
    move-object/from16 v3, v39

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move-object/from16 v39, v3

    move/from16 v68, v12

    goto/16 :goto_4f

    :cond_6f
    const v3, 0x6d646376

    if-ne v11, v3, :cond_71

    if-nez v39, :cond_70

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaku;->zzm()Ljava/nio/ByteBuffer;

    move-result-object v39

    :cond_70
    move-object/from16 v3, v39

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v4

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v7

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v11

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v6

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v13

    move-object/from16 v61, v1

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v1

    move/from16 v68, v12

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v12

    move/from16 v76, v15

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v15

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v77

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v79

    move-object/from16 v81, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x2710

    div-long v1, v77, v1

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x2710

    div-long v1, v79, v1

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v39, v3

    move-object/from16 v6, v58

    move/from16 v13, v73

    move/from16 v15, v76

    goto/16 :goto_50

    :cond_71
    move-object/from16 v61, v1

    move-object/from16 v81, v2

    move/from16 v68, v12

    move/from16 v76, v15

    const v1, 0x64323633

    if-ne v11, v1, :cond_74

    if-nez v8, :cond_72

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_57

    :cond_72
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_57
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    const-string v2, "video/3gpp"

    :cond_73
    move-object v8, v2

    :goto_58
    move-object/from16 v6, v58

    move/from16 v13, v73

    move/from16 v15, v76

    goto/16 :goto_51

    :cond_74
    const/4 v1, 0x0

    const v2, 0x65736473

    if-ne v11, v2, :cond_76

    if-nez v8, :cond_75

    const/4 v8, 0x1

    goto :goto_59

    :cond_75
    const/4 v8, 0x0

    :goto_59
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzaku;->zzo(Lcom/google/android/gms/internal/ads/zzes;I)Lcom/google/android/gms/internal/ads/zzakl;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzakl;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzakl;->zzb()[B

    move-result-object v3

    if-eqz v3, :cond_73

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v3

    move-object v8, v2

    move-object/from16 v81, v3

    goto :goto_58

    :cond_76
    const v2, 0x62747274

    if-ne v11, v2, :cond_77

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzaku;->zzp(Lcom/google/android/gms/internal/ads/zzes;I)Lcom/google/android/gms/internal/ads/zzakj;

    move-result-object v45

    goto :goto_58

    :cond_77
    const v2, 0x70617370

    if-ne v11, v2, :cond_78

    const/16 v2, 0x8

    add-int/2addr v7, v2

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v3

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v4

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v66, v3

    move-object/from16 v6, v58

    move/from16 v13, v73

    move/from16 v15, v76

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/16 v22, 0x1

    goto/16 :goto_60

    :cond_78
    const/16 v2, 0x8

    const v3, 0x73763364

    if-ne v11, v3, :cond_7b

    add-int/lit8 v3, v7, 0x8

    :goto_5a
    sub-int v2, v3, v7

    if-ge v2, v10, :cond_7a

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v4

    const v6, 0x70726f6a

    if-ne v4, v6, :cond_79

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v4

    invoke-static {v4, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v67

    goto/16 :goto_58

    :cond_79
    move v3, v2

    goto :goto_5a

    :cond_7a
    move-object/from16 v67, v1

    goto/16 :goto_58

    :cond_7b
    const v2, 0x73743364

    if-ne v11, v2, :cond_81

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    if-nez v2, :cond_7c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v2

    if-eqz v2, :cond_80

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7e

    if-eq v2, v3, :cond_7d

    :cond_7c
    move-object/from16 v6, v58

    const/16 v2, 0xc

    goto/16 :goto_53

    :cond_7d
    move v9, v3

    move-object/from16 v6, v58

    move/from16 v13, v73

    move/from16 v15, v76

    const/16 v2, 0xc

    goto/16 :goto_38

    :cond_7e
    move-object/from16 v6, v58

    move/from16 v13, v73

    move/from16 v15, v76

    const/16 v2, 0xc

    const/4 v4, -0x1

    const/4 v9, 0x2

    goto/16 :goto_60

    :cond_7f
    move-object/from16 v6, v58

    move/from16 v13, v73

    move/from16 v15, v76

    const/16 v2, 0xc

    const/4 v4, -0x1

    const/4 v9, 0x1

    goto/16 :goto_60

    :cond_80
    move-object/from16 v6, v58

    move/from16 v13, v73

    move/from16 v15, v76

    const/16 v2, 0xc

    const/4 v4, -0x1

    const/4 v9, 0x0

    goto/16 :goto_60

    :cond_81
    const/4 v3, 0x3

    const v2, 0x61707643

    if-ne v11, v2, :cond_82

    const/16 v2, 0xc

    add-int/2addr v7, v2

    add-int/lit8 v0, v10, -0xc

    new-array v4, v0, [B

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdp;->zzd([B)Ljava/lang/String;

    move-result-object v38

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaku;->zzl(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzi;->zzg:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzi;->zzd:I

    const-string v11, "video/apv"

    move-object/from16 v81, v0

    move/from16 v75, v5

    move v13, v6

    move v0, v7

    move v15, v8

    move-object v8, v11

    move-object/from16 v6, v58

    move v5, v4

    goto/16 :goto_38

    :cond_82
    const/16 v2, 0xc

    const v4, 0x636f6c72

    if-ne v11, v4, :cond_8a

    const/4 v4, -0x1

    if-ne v0, v4, :cond_89

    if-ne v5, v4, :cond_88

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v0

    const v5, 0x6e636c78

    if-eq v0, v5, :cond_83

    const v5, 0x6e636c63

    if-ne v0, v5, :cond_84

    :cond_83
    move-object/from16 v6, v58

    goto :goto_5c

    :cond_84
    const-string v5, "Unsupported color type: "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfy;->zze(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v58

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    move v5, v0

    :goto_5b
    move/from16 v13, v73

    move/from16 v15, v76

    goto :goto_60

    :goto_5c
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v0

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    const/16 v7, 0x13

    if-ne v10, v7, :cond_86

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v10

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_85

    move v10, v7

    const/4 v7, 0x1

    goto :goto_5d

    :cond_85
    move v10, v7

    :cond_86
    const/4 v7, 0x0

    :goto_5d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v0

    const/4 v11, 0x1

    if-eq v11, v7, :cond_87

    const/4 v7, 0x2

    goto :goto_5e

    :cond_87
    const/4 v7, 0x1

    :goto_5e
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v5

    move v15, v7

    move/from16 v13, v73

    goto :goto_60

    :cond_88
    move-object/from16 v6, v58

    move v0, v4

    goto :goto_5b

    :cond_89
    move-object/from16 v6, v58

    goto :goto_5b

    :cond_8a
    move-object/from16 v6, v58

    goto/16 :goto_53

    :goto_5f
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzft;->zza(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzft;

    move-result-object v7

    move-object/from16 v51, v7

    goto :goto_5b

    :goto_60
    add-int v10, v70, v10

    move-object/from16 v58, v6

    move v4, v9

    move-object/from16 v1, v61

    move/from16 v11, v69

    move/from16 v12, v71

    move-object/from16 v9, v72

    move-object/from16 v3, v74

    move/from16 v6, v75

    move-object/from16 v2, v81

    goto/16 :goto_31

    :goto_61
    if-eqz v51, :cond_8b

    move-object/from16 v7, v51

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzft;->zza:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    goto :goto_62

    :cond_8b
    move-object/from16 v7, v38

    :goto_62
    if-nez v8, :cond_8c

    move-object/from16 v8, v18

    move/from16 v7, v32

    move/from16 v11, v62

    move-object/from16 v5, v72

    goto/16 :goto_65

    :cond_8c
    new-instance v10, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    move/from16 v11, v62

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v7, v40

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v7, v37

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzv(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v7, v36

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzw(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v7, v33

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzx(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v7, v66

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzA(F)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v7, v32

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzz(I)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v8, v67

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzB([B)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzC(I)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v8, v81

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v8, v31

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzp(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v8, v30

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v8, v29

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzr(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v8, v18

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    move/from16 v15, v76

    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    if-eqz v39, :cond_8d

    invoke-virtual/range {v39 .. v39}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_63

    :cond_8d
    move-object v0, v1

    :goto_63
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzh;->zzd([B)Lcom/google/android/gms/internal/ads/zzh;

    move/from16 v0, v75

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    move/from16 v13, v73

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzD(Lcom/google/android/gms/internal/ads/zzi;)Lcom/google/android/gms/internal/ads/zzt;

    if-eqz v45, :cond_8e

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gms/internal/ads/zzakj;->zza()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gms/internal/ads/zzakj;->zzb()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzj(I)Lcom/google/android/gms/internal/ads/zzt;

    goto :goto_64

    :cond_8e
    if-eqz v46, :cond_8f

    invoke-virtual/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzakl;->zzc()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzakl;->zzd()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzj(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_8f
    :goto_64
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    move-object/from16 v5, v72

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :goto_65
    add-int v0, v69, v71

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v0, 0x1

    add-int/lit8 v9, v26, 0x1

    move/from16 v15, p8

    move-object v2, v5

    move v0, v7

    move-object v5, v8

    move v1, v9

    move/from16 v37, v11

    move-object v4, v14

    move/from16 v14, v17

    move/from16 v3, v19

    move/from16 v9, v20

    move-wide/from16 v12, v41

    move-wide/from16 v41, v55

    move-object/from16 v31, v57

    move-object/from16 v7, v59

    move-object/from16 v8, v60

    move/from16 v25, v63

    move-wide/from16 v10, v64

    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_1f

    :cond_90
    move-object v5, v2

    move-object/from16 v59, v7

    move-object/from16 v60, v8

    move-wide/from16 v64, v10

    move/from16 v17, v14

    move/from16 v63, v25

    move-object/from16 v57, v31

    move/from16 v11, v37

    move-wide/from16 v55, v41

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x3

    const v21, 0x54544d4c

    const v25, 0x74783367

    const/16 v47, 0xa

    const v48, 0x73747070

    const v49, 0x77767474

    move-wide/from16 v41, v12

    if-nez p5, :cond_98

    const v0, 0x65647473

    move-object/from16 v4, v57

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v0

    if-eqz v0, :cond_97

    const v7, 0x656c7374

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v0

    if-nez v0, :cond_91

    move-object v0, v1

    const/4 v1, 0x2

    const/16 v7, 0x8

    goto :goto_69

    :cond_91
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaku;->zza(I)I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v9

    new-array v10, v9, [J

    new-array v12, v9, [J

    const/4 v13, 0x0

    :goto_66
    if-ge v13, v9, :cond_95

    const/4 v14, 0x1

    if-ne v8, v14, :cond_92

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzJ()J

    move-result-wide v18

    goto :goto_67

    :cond_92
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v18

    :goto_67
    aput-wide v18, v10, v13

    if-ne v8, v14, :cond_93

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzD()J

    move-result-wide v18

    goto :goto_68

    :cond_93
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v15

    int-to-long v1, v15

    move-wide/from16 v18, v1

    :goto_68
    aput-wide v18, v12, v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v1

    if-ne v1, v14, :cond_94

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/2addr v13, v14

    const/4 v1, 0x0

    const/16 v2, 0xc

    goto :goto_66

    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_95
    const/4 v1, 0x2

    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_69
    if-eqz v0, :cond_96

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    goto :goto_6c

    :cond_96
    :goto_6a
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_6c

    :cond_97
    :goto_6b
    const/4 v1, 0x2

    const/16 v7, 0x8

    goto :goto_6a

    :cond_98
    move-object/from16 v4, v57

    goto :goto_6b

    :goto_6c
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v8, :cond_99

    move-object/from16 v0, p7

    const/4 v15, 0x0

    goto :goto_6e

    :cond_99
    move/from16 v9, v63

    if-eqz v9, :cond_9b

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfv;

    invoke-direct {v10, v9}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    if-eqz v8, :cond_9a

    const/4 v12, 0x1

    new-array v13, v12, [Lcom/google/android/gms/internal/ads/zzao;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v8

    goto :goto_6d

    :cond_9a
    const/4 v12, 0x1

    const/4 v14, 0x0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzap;

    new-array v13, v12, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v10, v13, v14

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v8, v14, v15, v13}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    :goto_6d
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    :cond_9b
    move-object/from16 v39, v8

    move-wide/from16 v8, v41

    move-object/from16 v10, v60

    move-wide/from16 v12, v64

    invoke-static {v8, v9, v12, v13, v10}, Lcom/google/android/gms/internal/ads/zzakn;->zza(JJLjava/lang/String;)J

    move-result-wide v31

    invoke-static {v8, v9, v12, v13, v10}, Lcom/google/android/gms/internal/ads/zzakn;->zzb(JJLjava/lang/String;)J

    move-result-wide v37

    new-instance v15, Lcom/google/android/gms/internal/ads/zzals;

    move-object/from16 v28, v15

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzakq;->zzd:I

    move/from16 v40, v8

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzakq;->zza:[Lcom/google/android/gms/internal/ads/zzalt;

    move-object/from16 v41, v8

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzakq;->zzc:I

    move/from16 v42, v5

    move/from16 v29, v11

    move/from16 v30, v53

    move-wide/from16 v33, v55

    move-wide/from16 v35, v43

    move-object/from16 v43, v2

    move-object/from16 v44, v0

    invoke-direct/range {v28 .. v44}, Lcom/google/android/gms/internal/ads/zzals;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzv;I[Lcom/google/android/gms/internal/ads/zzalt;I[J[J)V

    move-object/from16 v0, p7

    :goto_6e
    invoke-interface {v0, v15}, Lcom/google/android/gms/internal/ads/zzgsa;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzals;

    if-eqz v2, :cond_9c

    const v5, 0x6d646961

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x6d696e66

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, 0x7374626c

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v10, p1

    const/4 v11, 0x0

    invoke-static {v2, v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzaku;->zzg(Lcom/google/android/gms/internal/ads/zzals;Lcom/google/android/gms/internal/ads/zzfw;Lcom/google/android/gms/internal/ads/zzafy;Z)Lcom/google/android/gms/internal/ads/zzalv;

    move-result-object v2

    move-object/from16 v4, v59

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6f
    const/4 v2, 0x1

    goto :goto_70

    :cond_9c
    move-object/from16 v10, p1

    move-object/from16 v4, v59

    const v5, 0x6d646961

    const v8, 0x6d696e66

    const v9, 0x7374626c

    const/4 v11, 0x0

    goto :goto_6f

    :goto_70
    add-int/lit8 v14, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move v13, v5

    move v9, v7

    move-object/from16 v12, v52

    const/4 v2, 0x4

    move-object v7, v4

    goto/16 :goto_0

    :cond_9d
    move-object v4, v7

    return-object v4
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfx;)Lcom/google/android/gms/internal/ads/zzap;
    .locals 14

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzao;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v4

    if-lt v4, v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v8

    const v9, 0x6d657461

    const/4 v10, 0x0

    if-ne v8, v9, :cond_5

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaku;->zzf(Lcom/google/android/gms/internal/ads/zzes;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v4

    if-ge v4, v7, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v9

    const v11, 0x696c7374

    if-ne v9, v11, :cond_3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v9

    if-ge v9, v8, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzald;->zzc(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    new-instance v10, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {v10, v4}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v2

    goto/16 :goto_a

    :cond_5
    const v9, 0x736d7461

    if-ne v8, v9, :cond_13

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v8

    if-ge v8, v7, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v11

    const v12, 0x73617574

    if-ne v11, v12, :cond_11

    const/16 v8, 0x10

    if-ge v9, v8, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    const/4 v8, -0x1

    move v9, v3

    move v11, v9

    :goto_5
    const/4 v12, 0x2

    if-ge v9, v12, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v13

    if-nez v12, :cond_7

    move v8, v13

    goto :goto_6

    :cond_7
    if-ne v12, v0, :cond_8

    move v11, v13

    :cond_8
    :goto_6
    add-int/2addr v9, v0

    goto :goto_5

    :cond_9
    const v9, -0x7fffffff

    if-ne v8, v4, :cond_a

    const/16 v4, 0xf0

    goto :goto_8

    :cond_a
    const/16 v12, 0xd

    if-ne v8, v12, :cond_b

    const/16 v4, 0x78

    goto :goto_8

    :cond_b
    const/16 v12, 0x15

    if-eq v8, v12, :cond_d

    :cond_c
    :goto_7
    move v4, v9

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v8

    if-lt v8, v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v8

    add-int/2addr v8, v1

    if-le v8, v7, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v12

    if-lt v8, v4, :cond_c

    const v4, 0x73726672

    if-eq v12, v4, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzF()I

    move-result v4

    :goto_8
    if-ne v4, v9, :cond_10

    goto :goto_9

    :cond_10
    new-instance v10, Lcom/google/android/gms/internal/ads/zzap;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaji;

    int-to-float v4, v4

    invoke-direct {v8, v4, v11}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(FI)V

    new-array v4, v0, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v8, v4, v3

    invoke-direct {v10, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    goto :goto_9

    :cond_11
    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    goto/16 :goto_4

    :cond_12
    :goto_9
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v2

    goto :goto_a

    :cond_13
    const v4, -0x56878686

    if-ne v8, v4, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaku;->zzh(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v2

    :cond_14
    :goto_a
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    goto/16 :goto_0

    :cond_15
    return-object v2
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzga;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaku;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzD()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzD()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v9

    new-instance p0, Lcom/google/android/gms/internal/ads/zzga;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzga;-><init>(JJJ)V

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfw;)Lcom/google/android/gms/internal/ads/zzap;
    .locals 12

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaku;->zzi(Lcom/google/android/gms/internal/ads/zzes;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/lit8 v6, v6, -0x8

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_4

    if-ge v6, v1, :cond_4

    aget-object v6, v3, v6

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v8

    if-ge v8, v7, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    new-array v11, v9, [B

    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfu;

    invoke-direct {v9, v6, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzfu;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x29

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Skipped metadata with unknown key index: "

    const-string v10, "BoxParsers"

    invoke-static {v9, v8, v6, v10}, Lcom/google/android/gms/ads/internal/util/client/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_4
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzes;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzals;Lcom/google/android/gms/internal/ads/zzfw;Lcom/google/android/gms/internal/ads/zzafy;Z)Lcom/google/android/gms/internal/ads/zzalv;
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, -0x1

    const v5, 0x7374737a

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzakr;

    invoke-direct {v8, v5, v7}, Lcom/google/android/gms/internal/ads/zzakr;-><init>(Lcom/google/android/gms/internal/ads/zzfx;Lcom/google/android/gms/internal/ads/zzv;)V

    goto :goto_0

    :cond_0
    const v5, 0x73747a32

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v5

    if-eqz v5, :cond_49

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaks;

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzaks;-><init>(Lcom/google/android/gms/internal/ads/zzfx;)V

    :goto_0
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzako;->zza()I

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_1

    new-instance v12, Lcom/google/android/gms/internal/ads/zzalv;

    new-array v2, v7, [J

    new-array v3, v7, [I

    new-array v5, v7, [J

    new-array v6, v7, [I

    new-array v7, v7, [I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzalv;-><init>(Lcom/google/android/gms/internal/ads/zzals;[J[II[J[I[IZJI)V

    return-object v12

    :cond_1
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzals;->zzb:I

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    if-ne v9, v10, :cond_2

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzals;->zzf:J

    cmp-long v9, v13, v11

    if-lez v9, :cond_2

    int-to-float v9, v5

    long-to-float v13, v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v13, v15

    div-float/2addr v9, v13

    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzy(F)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzals;->zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v1

    :cond_2
    const v9, 0x7374636f

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v9

    if-nez v9, :cond_3

    const v9, 0x636f3634

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    move v13, v7

    :goto_1
    const v14, 0x73747363

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const v15, 0x73747473

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const v6, 0x73747373

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const v7, 0x63747473

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzakk;

    invoke-direct {v9, v14, v7, v13}, Lcom/google/android/gms/internal/ads/zzakk;-><init>(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzes;Z)V

    const/16 v7, 0xc

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v14

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v10

    if-eqz v0, :cond_6

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v18

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    if-eqz v6, :cond_8

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    :cond_7
    move/from16 v19, v3

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    move/from16 v19, v3

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzako;->zzb()I

    move-result v11

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v11, v3, :cond_9

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "audio/g711-mlaw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "audio/g711-alaw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    goto :goto_8

    :cond_a
    :goto_6
    if-nez v13, :cond_9

    if-nez v18, :cond_b

    if-nez v7, :cond_b

    const/4 v3, 0x1

    :goto_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_c

    const/16 v30, 0x1

    goto :goto_9

    :cond_c
    const/16 v30, 0x0

    :goto_9
    if-eqz v3, :cond_11

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzakk;->zza:I

    new-array v3, v0, [J

    new-array v5, v0, [I

    :goto_a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzakk;->zza()Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzakk;->zzb:I

    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzakk;->zzd:J

    aput-wide v7, v3, v6

    iget v7, v9, Lcom/google/android/gms/internal/ads/zzakk;->zzc:I

    aput v7, v5, v6

    goto :goto_a

    :cond_d
    int-to-long v6, v10

    const/16 v8, 0x2000

    div-int/2addr v8, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_b
    if-ge v9, v0, :cond_e

    aget v13, v5, v9

    sget-object v14, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    add-int/2addr v13, v8

    const/4 v14, -0x1

    add-int/2addr v13, v14

    div-int/2addr v13, v8

    add-int/2addr v10, v13

    const/4 v13, 0x1

    add-int/2addr v9, v13

    goto :goto_b

    :cond_e
    new-array v9, v10, [J

    new-array v13, v10, [I

    new-array v14, v10, [J

    new-array v15, v10, [I

    move/from16 p0, v10

    move-object/from16 v22, v12

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_c
    if-ge v10, v0, :cond_10

    aget v23, v5, v10

    aget-wide v24, v3, v10

    move/from16 v40, v19

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v18, v40

    move/from16 v41, v23

    move-object/from16 v23, v3

    move/from16 v3, v41

    :goto_d
    if-lez v3, :cond_f

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v26

    aput-wide v24, v9, v18

    move-object/from16 v27, v5

    mul-int v5, v11, v26

    aput v5, v13, v18

    add-int/2addr v12, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 p1, v8

    move-object v5, v9

    int-to-long v8, v2

    mul-long/2addr v8, v6

    aput-wide v8, v14, v18

    const/4 v8, 0x1

    aput v8, v15, v18

    aget v9, v13, v18

    int-to-long v8, v9

    add-long v24, v24, v8

    add-int v2, v2, v26

    sub-int v3, v3, v26

    const/4 v8, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v8, p1

    move-object v9, v5

    move-object/from16 v5, v27

    goto :goto_d

    :cond_f
    move-object/from16 v27, v5

    move/from16 p1, v8

    move-object v5, v9

    const/4 v8, 0x1

    add-int/2addr v10, v8

    move/from16 v8, p1

    move-object/from16 v3, v23

    move-object/from16 v5, v27

    move/from16 v40, v18

    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v19, v40

    goto :goto_c

    :cond_10
    move-object v5, v9

    int-to-long v2, v2

    mul-long/2addr v6, v2

    int-to-long v2, v12

    move-wide/from16 v33, v2

    move-object v0, v5

    move-wide/from16 v23, v6

    move-object v12, v15

    move/from16 v26, v18

    move-object v2, v1

    move/from16 v1, p0

    goto/16 :goto_1d

    :cond_11
    move-object/from16 v22, v12

    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v11, v5, [J

    new-array v12, v5, [I

    move-object/from16 v26, v1

    move/from16 v23, v13

    move/from16 v25, v18

    move/from16 v1, v19

    const/16 p0, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    move/from16 v19, v7

    move/from16 v18, v14

    const/4 v7, 0x0

    :goto_e
    const-string v14, "BoxParsers"

    if-ge v7, v5, :cond_1e

    move-wide/from16 v35, v27

    const/16 v28, 0x1

    move/from16 v27, p0

    :goto_f
    if-nez v27, :cond_13

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzakk;->zza()Z

    move-result v28

    move/from16 v37, v5

    move-object/from16 p1, v6

    if-eqz v28, :cond_12

    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/zzakk;->zzd:J

    move-wide/from16 v35, v5

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzakk;->zzc:I

    move-object/from16 v6, p1

    move/from16 v27, v5

    move/from16 v5, v37

    goto :goto_f

    :cond_12
    const/4 v5, 0x0

    goto :goto_10

    :cond_13
    move/from16 v37, v5

    move-object/from16 p1, v6

    move/from16 v5, v27

    :goto_10
    if-nez v28, :cond_14

    const-string v1, "Unexpected end of chunk data"

    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-static {v11, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    move v5, v7

    move/from16 v1, v29

    goto/16 :goto_17

    :cond_14
    move/from16 v14, v29

    if-nez v0, :cond_15

    goto :goto_13

    :cond_15
    :goto_11
    if-nez v24, :cond_17

    if-lez v25, :cond_16

    const/4 v6, -0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v24

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v14

    goto :goto_11

    :cond_16
    const/4 v6, -0x1

    const/16 v24, 0x0

    goto :goto_12

    :cond_17
    const/4 v6, -0x1

    :goto_12
    add-int/lit8 v24, v24, -0x1

    :goto_13
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzako;->zzc()I

    move-result v6

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    int-to-long v8, v6

    add-long v33, v33, v8

    if-le v6, v13, :cond_18

    move v13, v6

    :cond_18
    aput-wide v35, v2, v7

    aput v6, v3, v7

    move-object v6, v2

    move-object/from16 p3, v3

    int-to-long v2, v14

    add-long v2, v31, v2

    aput-wide v2, v11, v7

    aput v30, v12, v7

    if-ne v7, v1, :cond_19

    const/4 v2, 0x1

    aput v2, v12, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    if-eqz p1, :cond_1b

    if-ne v7, v1, :cond_1b

    const/4 v2, -0x1

    add-int/lit8 v19, v19, -0x1

    if-lez v19, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v1

    add-int/2addr v1, v2

    :cond_1a
    :goto_14
    move-object v3, v11

    move-object/from16 v38, v12

    goto :goto_15

    :cond_1b
    const/4 v2, -0x1

    goto :goto_14

    :goto_15
    int-to-long v11, v10

    add-long v31, v31, v11

    add-int/lit8 v11, v18, -0x1

    if-nez v11, :cond_1d

    if-lez v23, :cond_1c

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v10

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v11

    add-int/lit8 v23, v23, -0x1

    move/from16 v18, v10

    move v10, v11

    goto :goto_16

    :cond_1c
    const/16 v18, 0x0

    goto :goto_16

    :cond_1d
    move/from16 v18, v11

    :goto_16
    add-long v8, v35, v8

    add-int/2addr v5, v2

    const/4 v2, 0x1

    add-int/2addr v7, v2

    move-object v11, v3

    move/from16 p0, v5

    move-object v2, v6

    move/from16 v29, v14

    move/from16 v5, v37

    move-object/from16 v12, v38

    move-object/from16 v6, p1

    move-object/from16 v3, p3

    move-wide/from16 v40, v8

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-wide/from16 v27, v40

    goto/16 :goto_e

    :cond_1e
    move-object v6, v2

    move-object/from16 p3, v3

    move/from16 v37, v5

    move-object v3, v11

    move-object/from16 v38, v12

    move/from16 v27, p0

    move/from16 v1, v29

    move-object/from16 v3, p3

    :goto_17
    int-to-long v6, v1

    add-long v6, v31, v6

    if-eqz v0, :cond_20

    :goto_18
    if-lez v25, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    goto :goto_19

    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    const/4 v1, -0x1

    add-int/lit8 v25, v25, -0x1

    goto :goto_18

    :cond_20
    const/4 v0, 0x1

    :goto_19
    if-nez v19, :cond_26

    if-nez v18, :cond_25

    if-nez v27, :cond_24

    if-nez v23, :cond_23

    if-nez v24, :cond_22

    if-nez v0, :cond_21

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move-object/from16 v2, v26

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1a

    :cond_21
    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move/from16 p3, v5

    move-wide/from16 v23, v6

    move-object/from16 v2, v26

    goto/16 :goto_1c

    :cond_22
    move v15, v0

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move/from16 v10, v24

    move-object/from16 v2, v26

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1a

    :cond_23
    move v15, v0

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v2, v26

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    goto :goto_1a

    :cond_24
    move v15, v0

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v2, v26

    move/from16 v8, v27

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1a

    :cond_25
    move v15, v0

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move/from16 v1, v18

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v2, v26

    move/from16 v8, v27

    const/4 v0, 0x0

    goto :goto_1a

    :cond_26
    move v15, v0

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move/from16 v1, v18

    move/from16 v0, v19

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v2, v26

    move/from16 v8, v27

    :goto_1a
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzals;->zza:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x42

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v18

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v19, 0x23

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v19

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x1a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v18

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v19, 0x21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v19

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x24

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 p3, v5

    const/4 v5, 0x1

    if-eq v5, v15, :cond_27

    const-string v5, ", ctts invalid"

    goto :goto_1b

    :cond_27
    const-string v5, ""

    :goto_1b
    add-int v18, v18, v19

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move-wide/from16 v23, v6

    add-int v6, v19, v18

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Inconsistent stbl box for track "

    const-string v7, ": remainingSynchronizationSamples "

    invoke-static {v15, v6, v3, v7, v0}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, ", remainingSamplesAtTimestampDelta "

    const-string v3, ", remainingSamplesInChunk "

    invoke-static {v15, v0, v1, v3, v8}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, ", remainingTimestampDeltaChanges "

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-static {v15, v0, v9, v1, v10}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v14, v11

    move/from16 v26, v13

    move-object/from16 v13, p1

    :goto_1d
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzals;->zzf:J

    const-wide/16 v5, 0x0

    cmp-long v3, v9, v5

    const-wide/32 v18, 0x7fffffff

    if-lez v3, :cond_28

    const-wide/16 v5, 0x8

    mul-long v5, v5, v33

    const-wide/32 v7, 0xf4240

    sget-object v11, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_28

    cmp-long v3, v5, v18

    if-gez v3, :cond_28

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v3

    long-to-int v5, v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzals;->zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v2

    :cond_28
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzals;->zzc:J

    sget-object v37, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v7, 0xf4240

    move-wide/from16 v5, v23

    move-wide/from16 p0, v9

    move-object/from16 v11, v37

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgzg;->zzf(Ljava/util/Collection;)[I

    move-result-object v29

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzals;->zzi:[J

    const-wide/32 v9, 0xf4240

    if-nez v3, :cond_29

    move-wide/from16 v7, p0

    invoke-static {v14, v9, v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzu([JJJ)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzalv;

    move-object/from16 v22, v3

    move-object/from16 v23, v2

    move-object/from16 v24, v0

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v12

    move/from16 v33, v1

    invoke-direct/range {v22 .. v33}, Lcom/google/android/gms/internal/ads/zzalv;-><init>(Lcom/google/android/gms/internal/ads/zzals;[J[II[J[I[IZJI)V

    return-object v3

    :cond_29
    move-wide/from16 v7, p0

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzals;->zzb:I

    if-ne v5, v6, :cond_2d

    array-length v15, v14

    const/4 v5, 0x2

    if-lt v15, v5, :cond_2d

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzals;->zzj:[J

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    aget-wide v27, v5, v11

    aget-wide v5, v3, v11

    move-object/from16 p1, v12

    move-object/from16 p0, v13

    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzals;->zzd:J

    move-wide/from16 v31, v7

    move-object/from16 p3, v0

    move/from16 v17, v1

    move-wide v0, v9

    move-wide v9, v12

    move v0, v11

    move-object/from16 v11, v37

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    add-long v5, v27, v5

    const/4 v1, -0x1

    add-int/lit8 v7, v15, -0x1

    const/4 v1, 0x4

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v15, v15, -0x4

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aget-wide v8, v14, v0

    cmp-long v0, v8, v27

    if-gtz v0, :cond_2a

    aget-wide v0, v14, v1

    cmp-long v0, v27, v0

    if-gez v0, :cond_2a

    aget-wide v0, v14, v7

    cmp-long v0, v0, v5

    if-gez v0, :cond_2a

    const-wide/16 v0, 0x2

    add-long v0, v23, v0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_2a

    sub-long v0, v23, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v5, 0x0

    aget-wide v6, v14, v5

    sub-long v5, v27, v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    int-to-long v9, v7

    move-wide v7, v9

    move-wide/from16 v27, v9

    move-wide/from16 v9, v31

    move-object/from16 v11, v37

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v35

    move-wide v5, v0

    move-wide/from16 v7, v27

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v7, v35, v5

    if-nez v7, :cond_2b

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2a

    const-wide/16 v5, 0x0

    goto :goto_20

    :cond_2a
    :goto_1e
    move-wide/from16 v0, v31

    :goto_1f
    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_21

    :cond_2b
    move-wide/from16 v5, v35

    :goto_20
    cmp-long v7, v5, v18

    if-gtz v7, :cond_2a

    cmp-long v7, v0, v18

    if-lez v7, :cond_2c

    goto :goto_1e

    :cond_2c
    long-to-int v4, v5

    move-object/from16 v5, p2

    iput v4, v5, Lcom/google/android/gms/internal/ads/zzafy;->zza:I

    long-to-int v0, v0

    iput v0, v5, Lcom/google/android/gms/internal/ads/zzafy;->zzb:I

    move-wide/from16 v0, v31

    const-wide/32 v4, 0xf4240

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzu([JJJ)V

    const/4 v0, 0x0

    aget-wide v31, v3, v0

    const-wide/32 v33, 0xf4240

    move-wide/from16 v35, v12

    invoke-static/range {v31 .. v37}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalv;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v24, p3

    move-object/from16 v25, p0

    move-object/from16 v27, v14

    move-object/from16 v28, p1

    move/from16 v33, v17

    invoke-direct/range {v22 .. v33}, Lcom/google/android/gms/internal/ads/zzalv;-><init>(Lcom/google/android/gms/internal/ads/zzals;[J[II[J[I[IZJI)V

    return-object v0

    :cond_2d
    move-object/from16 p3, v0

    move/from16 v17, v1

    move-wide v0, v7

    move-object/from16 p1, v12

    move-object/from16 p0, v13

    goto :goto_1f

    :cond_2e
    move-object/from16 p3, v0

    move/from16 v17, v1

    move-wide v0, v7

    move-object/from16 p1, v12

    move-object/from16 p0, v13

    :goto_21
    if-ne v5, v6, :cond_30

    const/4 v6, 0x0

    aget-wide v7, v3, v6

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_30

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzals;->zzj:[J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v12, v3, v6

    const/4 v3, 0x0

    :goto_22
    array-length v4, v14

    if-ge v3, v4, :cond_2f

    aget-wide v4, v14, v3

    sub-long v5, v4, v12

    const-wide/32 v7, 0xf4240

    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v9, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v14, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_22

    :cond_2f
    sub-long v5, v23, v12

    const-wide/32 v7, 0xf4240

    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v9, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalv;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v24, p3

    move-object/from16 v25, p0

    move-object/from16 v27, v14

    move-object/from16 v28, p1

    move/from16 v33, v17

    invoke-direct/range {v22 .. v33}, Lcom/google/android/gms/internal/ads/zzalv;-><init>(Lcom/google/android/gms/internal/ads/zzals;[J[II[J[I[IZJI)V

    return-object v0

    :cond_30
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzals;->zzb:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_31

    const/4 v12, 0x1

    goto :goto_23

    :cond_31
    const/4 v12, 0x0

    :goto_23
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzals;->zzj:[J

    new-array v15, v5, [I

    new-array v11, v5, [I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_24
    array-length v5, v3

    if-ge v9, v5, :cond_3a

    aget-wide v5, v13, v9

    const-wide/16 v22, -0x1

    cmp-long v8, v5, v22

    if-eqz v8, :cond_39

    aget-wide v22, v3, v9

    move/from16 v19, v9

    move/from16 p2, v10

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzals;->zzd:J

    sget-object v24, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v27, v3

    move-object/from16 v25, v4

    move-wide v3, v5

    move-wide/from16 v5, v22

    move-object/from16 v22, v13

    move v13, v7

    move-wide v7, v0

    move-wide/from16 v31, v0

    move/from16 v0, p2

    move-object v1, v11

    move-object/from16 v11, v24

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    add-long/2addr v5, v3

    const/4 v7, 0x1

    invoke-static {v14, v3, v4, v7, v7}, Lcom/google/android/gms/internal/ads/zzfk;->zzm([JJZZ)I

    move-result v3

    aput v3, v15, v19

    const/4 v3, 0x0

    invoke-static {v14, v5, v6, v12, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzo([JJZZ)I

    move-result v4

    const/4 v3, -0x1

    add-int/lit8 v8, v4, -0x1

    const/4 v11, 0x0

    :goto_25
    array-length v3, v14

    if-ge v4, v3, :cond_34

    aget-wide v9, v14, v4

    cmp-long v3, v9, v5

    if-gez v3, :cond_32

    move v8, v4

    goto :goto_26

    :cond_32
    add-int/2addr v11, v7

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzv;->zzq:I

    if-le v11, v3, :cond_33

    goto :goto_27

    :cond_33
    :goto_26
    add-int/2addr v4, v7

    goto :goto_25

    :cond_34
    :goto_27
    add-int/2addr v8, v7

    aput v8, v1, v19

    aget v3, v15, v19

    :goto_28
    aget v4, v15, v19

    if-lez v4, :cond_35

    aget v5, p1, v4

    and-int/2addr v5, v7

    if-nez v5, :cond_35

    const/4 v5, -0x1

    add-int/2addr v4, v5

    aput v4, v15, v19

    goto :goto_28

    :cond_35
    const/4 v5, -0x1

    if-nez v4, :cond_36

    const/16 v16, 0x0

    aget v6, p1, v16

    and-int/2addr v6, v7

    if-nez v6, :cond_37

    aput v3, v15, v19

    :goto_29
    aget v4, v15, v19

    aget v3, v1, v19

    if-ge v4, v3, :cond_37

    aget v3, p1, v4

    and-int/2addr v3, v7

    if-nez v3, :cond_37

    add-int/2addr v4, v7

    aput v4, v15, v19

    const/4 v7, 0x1

    goto :goto_29

    :cond_36
    const/16 v16, 0x0

    :cond_37
    aget v3, v1, v19

    sub-int v6, v3, v4

    add-int/2addr v6, v0

    if-eq v13, v4, :cond_38

    const/4 v0, 0x1

    goto :goto_2a

    :cond_38
    move/from16 v0, v16

    :goto_2a
    or-int v0, v18, v0

    move/from16 v18, v0

    move v7, v3

    move v10, v6

    :goto_2b
    const/4 v0, 0x1

    goto :goto_2c

    :cond_39
    move-wide/from16 v31, v0

    move-object/from16 v27, v3

    move-object/from16 v25, v4

    move/from16 v19, v9

    move v0, v10

    move-object v1, v11

    move-object/from16 v22, v13

    const/4 v5, -0x1

    const/16 v16, 0x0

    move v13, v7

    goto :goto_2b

    :goto_2c
    add-int/lit8 v9, v19, 0x1

    move-object v11, v1

    move-object/from16 v13, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v27

    move-wide/from16 v0, v31

    goto/16 :goto_24

    :cond_3a
    move-wide/from16 v31, v0

    move-object/from16 v27, v3

    move-object/from16 v25, v4

    move v0, v10

    move-object v1, v11

    move-object/from16 v22, v13

    move/from16 v3, v17

    const/16 v16, 0x0

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x1

    goto :goto_2d

    :cond_3b
    move/from16 v3, v16

    :goto_2d
    or-int v3, v18, v3

    if-eqz v3, :cond_3c

    new-array v4, v0, [J

    goto :goto_2e

    :cond_3c
    move-object/from16 v4, p3

    :goto_2e
    if-eqz v3, :cond_3d

    new-array v5, v0, [I

    move-object v12, v5

    :goto_2f
    const/4 v5, 0x1

    goto :goto_30

    :cond_3d
    move-object/from16 v12, p0

    goto :goto_2f

    :goto_30
    if-ne v5, v3, :cond_3e

    move/from16 v26, v16

    :cond_3e
    if-eqz v3, :cond_3f

    new-array v5, v0, [I

    move-object v13, v5

    goto :goto_31

    :cond_3f
    move-object/from16 v13, p1

    :goto_31
    if-eqz v3, :cond_40

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    goto :goto_32

    :cond_40
    move-object/from16 v11, v25

    :goto_32
    new-array v0, v0, [J

    move/from16 v5, v16

    move v6, v5

    move v9, v6

    move-object/from16 v10, v27

    const-wide/16 v17, 0x0

    :goto_33
    array-length v7, v10

    if-ge v9, v7, :cond_47

    aget-wide v23, v22, v9

    aget v7, v15, v9

    aget v8, v1, v9

    move-object/from16 p2, v1

    if-eqz v3, :cond_41

    sub-int v1, v8, v7

    move-object/from16 v19, v15

    move-object/from16 v15, p3

    invoke-static {v15, v7, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v15, p0

    invoke-static {v15, v7, v12, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v21, v4

    move-object/from16 v4, p1

    invoke-static {v4, v7, v13, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    :cond_41
    move-object/from16 v21, v4

    move-object/from16 v19, v15

    move-object/from16 v15, p0

    move-object/from16 v4, p1

    :goto_34
    move v1, v5

    move/from16 v25, v6

    move/from16 v5, v26

    :goto_35
    if-ge v7, v8, :cond_46

    move-object/from16 p1, v4

    move/from16 p0, v5

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzals;->zzd:J

    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v35, 0xf4240

    move-wide/from16 v33, v17

    move-wide/from16 v37, v4

    move-object/from16 v39, v26

    invoke-static/range {v33 .. v39}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v27

    aget-wide v4, v14, v7

    sub-long v5, v4, v23

    const-wide/32 v33, 0xf4240

    move/from16 v4, p0

    move/from16 v35, v7

    move/from16 v29, v8

    move-wide/from16 v7, v33

    move/from16 v34, v9

    move-object/from16 v33, v10

    move-wide/from16 v9, v31

    move-object/from16 v36, v14

    move-object v14, v11

    move-object/from16 v11, v26

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_42

    move/from16 v20, v16

    const/4 v9, 0x1

    goto :goto_36

    :cond_42
    const/4 v9, 0x1

    const/16 v20, 0x1

    :goto_36
    xor-int/lit8 v10, v20, 0x1

    or-int/2addr v1, v10

    add-long v27, v27, v5

    aput-wide v27, v0, v25

    if-eqz v3, :cond_43

    aget v5, v12, v25

    if-le v5, v4, :cond_43

    aget v4, v15, v35

    :cond_43
    move v5, v4

    if-eqz v3, :cond_44

    if-nez v30, :cond_44

    aget v4, v13, v25

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-eqz v4, :cond_45

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_44
    const/4 v6, 0x1

    :cond_45
    :goto_37
    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v4, v35, 0x1

    move v7, v4

    move-object v11, v14

    move/from16 v8, v29

    move-object/from16 v10, v33

    move/from16 v9, v34

    move-object/from16 v14, v36

    move-object/from16 v4, p1

    goto :goto_35

    :cond_46
    move-object/from16 p1, v4

    move v4, v5

    move/from16 v34, v9

    move-object/from16 v33, v10

    move-object/from16 v36, v14

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object v14, v11

    aget-wide v9, v33, v34

    add-long v17, v17, v9

    add-int/lit8 v9, v34, 0x1

    move v5, v1

    move/from16 v26, v4

    move-object/from16 p0, v15

    move-object/from16 v15, v19

    move-object/from16 v4, v21

    move/from16 v6, v25

    move-object/from16 v10, v33

    move-object/from16 v14, v36

    move-object/from16 v1, p2

    goto/16 :goto_33

    :cond_47
    move-object/from16 v21, v4

    move-object v14, v11

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzals;->zzd:J

    sget-object v39, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v35, 0xf4240

    move-wide/from16 v33, v17

    move-wide/from16 v37, v3

    invoke-static/range {v33 .. v39}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    if-eqz v5, :cond_48

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzt(Z)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzals;->zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_38

    :cond_48
    move-object/from16 v23, v2

    :goto_38
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalv;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzgzg;->zzf(Ljava/util/Collection;)[I

    move-result-object v29

    move-object/from16 v4, v21

    array-length v2, v4

    move-object/from16 v22, v1

    move-object/from16 v24, v4

    move-object/from16 v25, v12

    move-object/from16 v27, v0

    move-object/from16 v28, v13

    move/from16 v33, v2

    invoke-direct/range {v22 .. v33}, Lcom/google/android/gms/internal/ads/zzalv;-><init>(Lcom/google/android/gms/internal/ads/zzals;[J[II[J[I[IZJI)V

    return-object v1

    :cond_49
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzap;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzv()S

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzap;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfz;

    invoke-direct {v3, v2, p0}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(FF)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v3, p0, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzes;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result p0

    return p0
.end method

.method private static zzj([BII)Ljava/lang/String;
    .locals 11

    const/16 v0, 0x10

    array-length v1, p0

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v4

    :goto_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x3

    if-ge v2, v5, :cond_1

    aget-byte v5, p0, v2

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, p0, v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgzg;->zze(BBBB)I

    move-result v5

    shr-int/lit8 v6, v5, 0x10

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    shr-int/lit8 v7, v5, 0x8

    const/16 v8, 0xff

    and-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x80

    mul-int/lit16 v9, v7, 0x36fb

    and-int/2addr v6, v8

    div-int/lit16 v9, v9, 0x2710

    add-int/2addr v9, v6

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    shl-int/2addr v9, v0

    and-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x80

    mul-int/lit16 v7, v7, 0x1c01

    mul-int/lit16 v10, v5, 0xd7f

    div-int/lit16 v10, v10, 0x2710

    sub-int v10, v6, v10

    div-int/lit16 v7, v7, 0x2710

    sub-int/2addr v10, v7

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    mul-int/lit16 v5, v5, 0x457e

    div-int/lit16 v5, v5, 0x2710

    add-int/2addr v5, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    or-int v6, v9, v7

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%06x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_1
    const-string p0, ", "

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzgsd;->zzd(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x7

    const/16 v2, 0xa

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->c(IILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3, p0}, Lcom/google/android/gms/ads/internal/util/client/a;->c(IILjava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\npalette: "

    const-string p2, "\n"

    invoke-static {v1, p1, p0, p2}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzi;
    .locals 15

    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    if-eqz v5, :cond_1

    if-eq p0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    goto :goto_1

    :cond_1
    move v5, v9

    move v4, v10

    :cond_2
    if-gt v4, v10, :cond_4

    if-eq p0, v5, :cond_3

    move v8, v2

    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    :cond_4
    :goto_1
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x16

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported obu_type: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "Unsupported obu_extension_flag"

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    if-eqz v6, :cond_7

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    const/16 v11, 0x7f

    if-le v6, v11, :cond_7

    const-string p0, "Excessive obu_size"

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string p0, "Unsupported reduced_still_picture_header"

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string p0, "Unsupported timing_info_present_flag"

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string p0, "Unsupported initial_display_delay_present_flag"

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v11

    move v12, v9

    :goto_2
    const/4 v13, 0x7

    if-gt v12, v11, :cond_c

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v14

    if-le v14, v13, :cond_b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v5

    add-int/2addr v7, p0

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    add-int/2addr v5, p0

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_d
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    if-lez v7, :cond_10

    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_11
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    if-ne v6, v10, :cond_12

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    goto :goto_4

    :cond_12
    if-ne v6, p0, :cond_13

    goto :goto_5

    :cond_13
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    if-eqz v3, :cond_14

    move v9, p0

    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v5

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v2

    if-nez v9, :cond_17

    if-ne v3, p0, :cond_17

    if-ne v5, v4, :cond_16

    if-nez v2, :cond_15

    move v1, p0

    move v3, v1

    goto :goto_7

    :cond_15
    move v3, p0

    goto :goto_6

    :cond_16
    move v3, p0

    :cond_17
    move v4, v5

    :goto_6
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    if-ne v1, p0, :cond_18

    goto :goto_8

    :cond_18
    move p0, v10

    :goto_8
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    :cond_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzi;
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()V

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    if-eqz v8, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzo(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v10

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    if-eq p0, v10, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :cond_0
    move v8, p0

    :goto_2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0
.end method

.method private static zzm()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzes;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzakq;I)V
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v12, "childAtomSize must be positive"

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v8, 0x10

    add-int/lit8 v9, v2, 0x10

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v19

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    move/from16 v11, v19

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    const/4 v11, 0x0

    :goto_0
    const/high16 v20, 0x10000000

    const/4 v9, 0x4

    if-eqz v11, :cond_a

    if-ne v11, v13, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v11, v14, :cond_5d

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzD()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v11

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v24

    and-int/lit8 v25, v24, 0x1

    and-int/lit8 v24, v24, 0x2

    if-nez v25, :cond_9

    const/16 v14, 0x8

    if-ne v9, v14, :cond_2

    move v9, v14

    const/4 v8, 0x3

    goto :goto_3

    :cond_2
    if-ne v9, v8, :cond_4

    if-eqz v24, :cond_3

    move/from16 v8, v20

    :goto_1
    const/16 v9, 0x8

    goto :goto_3

    :cond_3
    const/4 v8, 0x2

    goto :goto_1

    :cond_4
    const/16 v8, 0x18

    if-ne v9, v8, :cond_6

    if-eqz v24, :cond_5

    const/high16 v8, 0x50000000

    goto :goto_1

    :cond_5
    const/16 v8, 0x15

    goto :goto_1

    :cond_6
    const/16 v8, 0x20

    if-ne v9, v8, :cond_8

    if-eqz v24, :cond_7

    const/high16 v9, 0x60000000

    :goto_2
    move v8, v9

    goto :goto_1

    :cond_7
    const/16 v9, 0x16

    goto :goto_2

    :cond_8
    const/4 v8, -0x1

    goto :goto_1

    :cond_9
    const/16 v8, 0x20

    if-ne v9, v8, :cond_8

    const/4 v8, 0x4

    goto :goto_1

    :goto_3
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v9

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzF()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v14

    if-ne v11, v13, :cond_b

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_b
    move v11, v9

    const/4 v8, -0x1

    :goto_5
    const v9, 0x73616d72

    const v13, 0x73617762

    const v15, 0x69616d66

    if-ne v1, v15, :cond_c

    const/4 v10, -0x1

    const/4 v11, -0x1

    goto :goto_7

    :cond_c
    if-ne v1, v9, :cond_d

    const/16 v10, 0x1f40

    :goto_6
    const/4 v11, 0x1

    goto :goto_7

    :cond_d
    if-ne v1, v13, :cond_e

    const/16 v10, 0x3e80

    move v1, v13

    goto :goto_6

    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v15

    const v13, 0x656e6361

    if-ne v1, v13, :cond_11

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaku;->zzq(Lcom/google/android/gms/internal/ads/zzes;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v13, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzalt;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v6

    :goto_8
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzakq;->zza:[Lcom/google/android/gms/internal/ads/zzalt;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzalt;

    aput-object v1, v9, p9

    :cond_10
    move v1, v13

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :cond_11
    const v9, 0x61632d33

    const-string v13, "audio/mhm1"

    const-string v29, "audio/raw"

    if-ne v1, v9, :cond_12

    const-string v9, "audio/ac3"

    :goto_9
    move/from16 v20, v8

    goto/16 :goto_e

    :cond_12
    const v9, 0x65632d33

    if-ne v1, v9, :cond_13

    const-string v9, "audio/eac3"

    goto :goto_9

    :cond_13
    const v9, 0x61632d34

    if-ne v1, v9, :cond_14

    const-string v9, "audio/ac4"

    goto :goto_9

    :cond_14
    const v9, 0x64747363

    if-ne v1, v9, :cond_15

    const-string v9, "audio/vnd.dts"

    goto :goto_9

    :cond_15
    const v9, 0x64747368

    if-eq v1, v9, :cond_2a

    const v9, 0x6474736c

    if-ne v1, v9, :cond_16

    goto/16 :goto_d

    :cond_16
    const v9, 0x64747365

    if-ne v1, v9, :cond_17

    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_9

    :cond_17
    const v9, 0x64747378

    if-ne v1, v9, :cond_18

    const-string v9, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_9

    :cond_18
    const v9, 0x73616d72

    if-ne v1, v9, :cond_19

    const-string v9, "audio/3gpp"

    goto :goto_9

    :cond_19
    const v9, 0x73617762

    if-ne v1, v9, :cond_1a

    const-string v9, "audio/amr-wb"

    goto :goto_9

    :cond_1a
    const v9, 0x736f7774

    if-ne v1, v9, :cond_1b

    :goto_a
    move-object/from16 v9, v29

    const/16 v20, 0x2

    goto/16 :goto_e

    :cond_1b
    const v9, 0x74776f73

    if-ne v1, v9, :cond_1c

    :goto_b
    move-object/from16 v9, v29

    goto/16 :goto_e

    :cond_1c
    const v9, 0x6c70636d

    if-ne v1, v9, :cond_1e

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1d

    goto :goto_a

    :cond_1d
    move/from16 v20, v8

    goto :goto_b

    :cond_1e
    const v9, 0x2e6d7032

    if-eq v1, v9, :cond_29

    const v9, 0x2e6d7033

    if-ne v1, v9, :cond_1f

    goto :goto_c

    :cond_1f
    const v9, 0x6d686131

    if-ne v1, v9, :cond_20

    const-string v9, "audio/mha1"

    goto :goto_9

    :cond_20
    const v9, 0x6d686d31

    if-ne v1, v9, :cond_21

    move/from16 v20, v8

    move-object v9, v13

    goto :goto_e

    :cond_21
    const v9, 0x616c6163

    if-ne v1, v9, :cond_22

    const-string v9, "audio/alac"

    goto/16 :goto_9

    :cond_22
    const v9, 0x616c6177

    if-ne v1, v9, :cond_23

    const-string v9, "audio/g711-alaw"

    goto/16 :goto_9

    :cond_23
    const v9, 0x756c6177

    if-ne v1, v9, :cond_24

    const-string v9, "audio/g711-mlaw"

    goto/16 :goto_9

    :cond_24
    const v9, 0x4f707573

    if-ne v1, v9, :cond_25

    const-string v9, "audio/opus"

    goto/16 :goto_9

    :cond_25
    const v9, 0x664c6143

    if-ne v1, v9, :cond_26

    const-string v9, "audio/flac"

    goto/16 :goto_9

    :cond_26
    const v9, 0x6d6c7061

    if-ne v1, v9, :cond_27

    const-string v9, "audio/true-hd"

    goto/16 :goto_9

    :cond_27
    const v9, 0x69616d66

    if-ne v1, v9, :cond_28

    const-string v1, "audio/iamf"

    move/from16 v20, v8

    move/from16 v37, v9

    move-object v9, v1

    move/from16 v1, v37

    goto :goto_e

    :cond_28
    move/from16 v20, v8

    const/4 v9, 0x0

    goto :goto_e

    :cond_29
    :goto_c
    const-string v9, "audio/mpeg"

    goto/16 :goto_9

    :cond_2a
    :goto_d
    const-string v9, "audio/vnd.dts.hd"

    goto/16 :goto_9

    :goto_e
    move/from16 p9, v10

    const/4 v8, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_f
    sub-int v10, v15, v2

    if-ge v10, v3, :cond_5a

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v10

    if-lez v10, :cond_2b

    const/4 v2, 0x1

    goto :goto_10

    :cond_2b
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    const v3, 0x6d686143

    if-ne v2, v3, :cond_2f

    const/16 v3, 0x8

    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-static {v9, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v3

    move-object/from16 v26, v2

    new-array v2, v3, [B

    move-object/from16 v30, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v13, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    if-nez v8, :cond_2e

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    :cond_2d
    :goto_12
    move-object v3, v7

    move/from16 v17, v10

    move-object/from16 v31, v12

    move v12, v13

    move/from16 v34, v14

    :goto_13
    const/16 v18, 0x3

    const/16 v21, 0x4

    move/from16 v10, p9

    goto/16 :goto_2c

    :cond_2e
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    goto :goto_12

    :cond_2f
    move-object/from16 v30, v13

    const/4 v13, 0x0

    const v3, 0x6d686150

    if-ne v2, v3, :cond_31

    const/16 v3, 0x8

    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v2

    if-lez v2, :cond_2d

    new-array v3, v2, [B

    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    if-nez v8, :cond_30

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    goto :goto_12

    :cond_30
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    move-object v3, v7

    move/from16 v17, v10

    move-object/from16 v31, v12

    :goto_14
    move/from16 v34, v14

    const/4 v12, 0x0

    goto :goto_13

    :cond_31
    const v3, 0x65736473

    if-eq v2, v3, :cond_53

    if-eqz p6, :cond_36

    const v3, 0x77617665

    if-ne v2, v3, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v2

    if-lt v2, v15, :cond_32

    const/4 v3, 0x1

    :goto_15
    const/4 v13, 0x0

    goto :goto_16

    :cond_32
    const/4 v3, 0x0

    goto :goto_15

    :goto_16
    invoke-static {v3, v13}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    :goto_17
    sub-int v3, v2, v15

    if-ge v3, v10, :cond_35

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    if-lez v3, :cond_33

    const/4 v13, 0x1

    goto :goto_18

    :cond_33
    const/4 v13, 0x0

    :goto_18
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v13

    move-object/from16 v31, v12

    const v12, 0x65736473

    if-eq v13, v12, :cond_34

    add-int/2addr v2, v3

    move-object/from16 v12, v31

    goto :goto_17

    :cond_34
    move-object v3, v7

    move/from16 v17, v10

    move/from16 v34, v14

    :goto_19
    const/16 v7, 0x20

    const/4 v12, -0x1

    const/16 v18, 0x3

    const/16 v21, 0x4

    move/from16 v10, p9

    goto/16 :goto_27

    :cond_35
    move-object/from16 v31, v12

    move-object v3, v7

    move/from16 v17, v10

    move/from16 v34, v14

    const/4 v2, -0x1

    goto :goto_19

    :cond_36
    move-object/from16 v31, v12

    const v12, 0x65736473

    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzaku;->zzp(Lcom/google/android/gms/internal/ads/zzes;I)Lcom/google/android/gms/internal/ads/zzakj;

    move-result-object v28

    :goto_1a
    move-object v3, v7

    move/from16 v17, v10

    goto :goto_14

    :cond_37
    const v3, 0x64616333

    if-ne v2, v3, :cond_38

    const/16 v3, 0x8

    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(Lcom/google/android/gms/internal/ads/zzes;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_1a

    :cond_38
    const/16 v3, 0x8

    const v13, 0x64656333

    if-ne v2, v13, :cond_39

    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(Lcom/google/android/gms/internal/ads/zzes;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_1a

    :cond_39
    const v13, 0x64616334

    if-ne v2, v13, :cond_3a

    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaej;->zza(Lcom/google/android/gms/internal/ads/zzes;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_1a

    :cond_3a
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3c

    if-lez v14, :cond_3b

    move-object v3, v7

    move/from16 v17, v10

    move v10, v14

    move/from16 v34, v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v18, 0x3

    const/16 v21, 0x4

    goto/16 :goto_2c

    :cond_3b
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x31

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v13, 0x0

    const v3, 0x64647473

    if-eq v2, v3, :cond_3d

    const v3, 0x75647473

    if-ne v2, v3, :cond_3e

    :cond_3d
    move/from16 v17, v10

    move/from16 v34, v14

    const/16 v7, 0x20

    const/16 v18, 0x3

    const/16 v21, 0x4

    goto/16 :goto_26

    :cond_3e
    const v3, 0x644f7073

    if-ne v2, v3, :cond_3f

    const/16 v3, 0x8

    add-int/lit8 v2, v15, 0x8

    add-int/lit8 v8, v10, -0x8

    sget-object v3, Lcom/google/android/gms/internal/ads/zzaku;->zzb:[B

    array-length v12, v3

    add-int v13, v12, v8

    invoke-static {v3, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0, v3, v12, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagf;->zza([B)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1a

    :cond_3f
    const v3, 0x64664c61

    if-ne v2, v3, :cond_40

    add-int/lit8 v2, v15, 0xc

    add-int/lit8 v3, v10, -0xc

    add-int/lit8 v8, v10, -0x8

    new-array v8, v8, [B

    const/16 v12, 0x66

    const/4 v13, 0x0

    aput-byte v12, v8, v13

    const/16 v12, 0x4c

    const/4 v13, 0x1

    aput-byte v12, v8, v13

    const/16 v12, 0x61

    const/4 v13, 0x2

    aput-byte v12, v8, v13

    const/16 v12, 0x43

    const/4 v13, 0x3

    aput-byte v12, v8, v13

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    goto/16 :goto_1a

    :cond_40
    const v3, 0x616c6163

    if-ne v2, v3, :cond_41

    add-int/lit8 v2, v15, 0xc

    add-int/lit8 v8, v10, -0xc

    new-array v11, v8, [B

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    sget v2, Lcom/google/android/gms/internal/ads/zzdp;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v2, v11}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v8

    const/16 v12, 0x9

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v12

    const/16 v13, 0x14

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v2

    filled-new-array {v2, v12, v8}, [I

    move-result-object v2

    const/4 v12, 0x0

    aget v13, v2, v12

    const/4 v12, 0x1

    aget v2, v2, v12

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v8, v12}, Lcom/google/android/gms/internal/ads/zzfk;->zzz(ILjava/nio/ByteOrder;)I

    move-result v8

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v11

    move-object v3, v7

    move/from16 v20, v8

    move/from16 v17, v10

    move-object v8, v11

    move v10, v13

    move/from16 v34, v14

    const/4 v12, 0x0

    const/16 v18, 0x3

    const/16 v21, 0x4

    move v11, v2

    goto/16 :goto_2c

    :cond_41
    const v12, 0x69616362

    if-ne v2, v12, :cond_4c

    const/16 v12, 0x9

    add-int/lit8 v2, v15, 0x9

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzP()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/google/android/gms/internal/ads/zzgzg;->zza(J)I

    move-result v2

    new-array v8, v2, [B

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v13, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    sget v2, Lcom/google/android/gms/internal/ads/zzdp;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_1b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v17

    if-lez v17, :cond_42

    if-eqz v13, :cond_43

    if-nez v3, :cond_42

    goto :goto_1c

    :cond_42
    move/from16 v17, v10

    move/from16 v34, v14

    const/16 v18, 0x3

    const/16 v21, 0x4

    goto/16 :goto_20

    :cond_43
    :goto_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v17

    const/16 v18, 0x3

    shr-int/lit8 v12, v17, 0x3

    const/16 v25, 0x2

    and-int/lit8 v26, v17, 0x2

    const/16 v24, 0x1

    and-int/lit8 v17, v17, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzP()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Lcom/google/android/gms/internal/ads/zzgzg;->zza(J)I

    move-result v33

    move/from16 v34, v14

    const/4 v14, 0x4

    if-le v12, v14, :cond_44

    const/16 v14, 0x18

    if-ge v12, v14, :cond_45

    if-eqz v26, :cond_45

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzQ()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzQ()V

    goto :goto_1d

    :cond_44
    const/16 v14, 0x18

    :cond_45
    :goto_1d
    if-eqz v17, :cond_46

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzP()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Lcom/google/android/gms/internal/ads/zzgzg;->zza(J)I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v14

    add-int v14, v14, v33

    move/from16 v17, v10

    const/16 v10, 0x1f

    if-ne v12, v10, :cond_48

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v10, v12}, [Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "iamf.%03X.%03X"

    invoke-static {v12, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    :cond_47
    const/16 v21, 0x4

    goto :goto_1f

    :cond_48
    if-nez v12, :cond_47

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzQ()V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v10, 0x4

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "mp4a"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzQ()V

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    new-instance v12, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzes;)V

    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    const/16 v10, 0x1f

    if-ne v7, v10, :cond_49

    const/4 v10, 0x6

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    const/16 v12, 0x20

    add-int/2addr v7, v12

    goto :goto_1e

    :cond_49
    const/4 v10, 0x6

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v21, 0x4

    add-int/lit8 v12, v12, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    new-instance v10, Ljava/lang/StringBuilder;

    add-int v12, v12, v23

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".40."

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1f
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    move-object/from16 v7, p8

    move/from16 v10, v17

    move/from16 v14, v34

    const/16 v12, 0x9

    goto/16 :goto_1b

    :goto_20
    if-eqz v13, :cond_4a

    if-eqz v3, :cond_4a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/2addr v2, v7

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "."

    invoke-static {v10, v13, v2, v3}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_4a
    const/4 v2, 0x0

    :goto_21
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    move-object/from16 v3, p8

    move/from16 v10, p9

    move-object/from16 v26, v2

    :cond_4b
    :goto_22
    const/4 v12, 0x0

    goto/16 :goto_2c

    :cond_4c
    move/from16 v17, v10

    move/from16 v34, v14

    const/16 v18, 0x3

    const/16 v21, 0x4

    const v3, 0x70636d43

    if-ne v2, v3, :cond_52

    add-int/lit8 v2, v15, 0xc

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_4d

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_23

    :cond_4d
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v3

    const v7, 0x6970636d

    if-ne v1, v7, :cond_4e

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzz(ILjava/nio/ByteOrder;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v7, 0x20

    goto :goto_25

    :cond_4e
    const v7, 0x6670636d

    if-ne v1, v7, :cond_4f

    const/16 v7, 0x20

    if-ne v3, v7, :cond_50

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    move/from16 v2, v21

    :goto_24
    const/4 v3, -0x1

    goto :goto_25

    :cond_4f
    const/16 v7, 0x20

    :cond_50
    move/from16 v2, v20

    goto :goto_24

    :goto_25
    if-eq v2, v3, :cond_51

    move-object/from16 v3, p8

    move/from16 v10, p9

    move/from16 v20, v2

    move-object/from16 v9, v29

    goto :goto_22

    :cond_51
    move-object/from16 v3, p8

    move/from16 v10, p9

    move/from16 v20, v2

    goto :goto_22

    :cond_52
    move-object/from16 v3, p8

    move/from16 v10, p9

    goto :goto_22

    :goto_26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v10, p9

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzr(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    move-object/from16 v3, p8

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto/16 :goto_22

    :cond_53
    move-object v3, v7

    move/from16 v17, v10

    move-object/from16 v31, v12

    move/from16 v34, v14

    const/16 v7, 0x20

    const/16 v18, 0x3

    const/16 v21, 0x4

    move/from16 v10, p9

    move v2, v15

    const/4 v12, -0x1

    :goto_27
    if-eq v2, v12, :cond_4b

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaku;->zzo(Lcom/google/android/gms/internal/ads/zzes;I)Lcom/google/android/gms/internal/ads/zzakl;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzakl;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzakl;->zzb()[B

    move-result-object v9

    if-eqz v9, :cond_59

    const-string v8, "audio/vorbis"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    new-instance v8, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    const/4 v14, 0x0

    :goto_28
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v22

    if-lez v22, :cond_54

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzn()I

    move-result v7

    const/16 v12, 0xff

    if-ne v7, v12, :cond_55

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/2addr v14, v12

    const/16 v7, 0x20

    const/4 v12, -0x1

    const/4 v13, 0x1

    goto :goto_28

    :cond_54
    const/16 v12, 0xff

    :cond_55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v7

    add-int/2addr v7, v14

    const/4 v13, 0x0

    :goto_29
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v14

    if-lez v14, :cond_56

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzn()I

    move-result v14

    if-ne v14, v12, :cond_56

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/2addr v13, v12

    goto :goto_29

    :cond_56
    const/4 v14, 0x1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v16

    add-int v16, v16, v13

    new-array v13, v7, [B

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v8

    const/4 v12, 0x0

    invoke-static {v9, v8, v13, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v7

    array-length v7, v9

    add-int v8, v8, v16

    sub-int/2addr v7, v8

    new-array v14, v7, [B

    invoke-static {v9, v8, v14, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    :goto_2a
    move-object v9, v2

    goto :goto_2c

    :cond_57
    const/4 v12, 0x0

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzaee;->zza([B)Lcom/google/android/gms/internal/ads/zzaed;

    move-result-object v7

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzaed;->zza:I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzaed;->zzb:I

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaed;->zzc:Ljava/lang/String;

    goto :goto_2b

    :cond_58
    move-object/from16 v8, v26

    :goto_2b
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v7

    move-object v9, v2

    move-object/from16 v26, v8

    move-object v8, v7

    goto :goto_2c

    :cond_59
    const/4 v12, 0x0

    goto :goto_2a

    :goto_2c
    add-int v15, v15, v17

    move/from16 v2, p2

    move-object v7, v3

    move/from16 p9, v10

    move-object/from16 v13, v30

    move-object/from16 v12, v31

    move/from16 v14, v34

    move/from16 v3, p3

    goto/16 :goto_f

    :cond_5a
    move/from16 v10, p9

    move-object v3, v7

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v0, :cond_5d

    if-eqz v9, :cond_5d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzr(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    if-eqz v27, :cond_5b

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzakl;->zzc()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzakl;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzj(I)Lcom/google/android/gms/internal/ads/zzt;

    goto :goto_2d

    :cond_5b
    if-eqz v28, :cond_5c

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzakj;->zza()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzakj;->zzb()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzb(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzj(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_5c
    :goto_2d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/zzakq;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :cond_5d
    return-void
.end method

.method private static zzo(Lcom/google/android/gms/internal/ads/zzes;I)Lcom/google/android/gms/internal/ads/zzakl;
    .locals 11

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaku;->zzr(Lcom/google/android/gms/internal/ads/zzes;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaku;->zzr(Lcom/google/android/gms/internal/ads/zzes;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zze(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaku;->zzr(Lcom/google/android/gms/internal/ads/zzes;)I

    move-result p1

    new-array v5, p1, [B

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    const-wide/16 p0, 0x0

    cmp-long v6, v3, p0

    const-wide/16 v7, -0x1

    if-gtz v6, :cond_4

    move-wide v9, v7

    goto :goto_0

    :cond_4
    move-wide v9, v3

    :goto_0
    cmp-long p0, v0, p0

    if-lez p0, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v7

    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzakl;

    move-object v1, p0

    move-object v3, v5

    move-wide v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzakl;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    :cond_6
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzakl;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzakl;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static zzp(Lcom/google/android/gms/internal/ads/zzes;I)Lcom/google/android/gms/internal/ads/zzakj;
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide p0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(JJ)V

    return-object v2
.end method

.method private static zzq(Lcom/google/android/gms/internal/ads/zzes;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaku;->zza(I)I

    move-result v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzalt;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzalt;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzafj;->zza(ZLjava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zzr(Lcom/google/android/gms/internal/ads/zzes;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
