.class final Lcom/google/android/gms/internal/ads/zzald;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs zza(ILcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzap;[Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    new-instance p3, Lcom/google/android/gms/internal/ads/zzap;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    new-array v4, v1, [Lcom/google/android/gms/internal/ads/zzao;

    invoke-direct {p3, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    :cond_0
    if-eqz p1, :cond_3

    const-class v2, Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzap;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfu;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfu;->zza:Ljava/lang/String;

    const-string v6, "com.android.capture.fps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    if-ne p0, v5, :cond_2

    :cond_1
    new-array v5, v0, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v4, v5, v1

    invoke-virtual {p3, v5}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object p3

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    array-length p0, p4

    :goto_1
    if-ge v1, p0, :cond_4

    aget-object p1, p4, v1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object p3

    add-int/2addr v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzap;->zza()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    :cond_5
    return-void
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzt;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzafy;->zzb()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzafy;->zza:I

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzt;->zzI(I)Lcom/google/android/gms/internal/ads/zzt;

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzafy;->zzb:I

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzt;->zzJ(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_0
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzao;
    .locals 17

    move-object/from16 v1, p0

    const v0, 0x74767368

    const v2, 0x736f736e

    const v3, 0x70676170

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v4

    shr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    const-string v7, "Skipped unknown metadata entry: "

    const/16 v8, 0xa9

    const v9, 0xffffff

    const-string v10, "TCON"

    const v11, 0x64617461

    const/4 v12, 0x1

    const-string v13, "MetadataUtil"

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eq v6, v8, :cond_1c

    const/16 v8, 0xfd

    if-ne v6, v8, :cond_0

    goto/16 :goto_3

    :cond_0
    const v6, 0x676e7265

    const/4 v8, -0x1

    if-ne v4, v6, :cond_2

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzald;->zzf(Lcom/google/android/gms/internal/ads/zzes;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaiz;->zza(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    invoke-direct {v2, v10, v15, v0}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    move-object v15, v2

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    const-string v0, "Failed to parse standard genre code"

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    const v6, 0x6469736b

    if-ne v4, v6, :cond_3

    const-string v0, "TPOS"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzg(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_3
    const v6, 0x74726b6e

    if-ne v4, v6, :cond_4

    const-string v0, "TRCK"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzg(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_4
    const v6, 0x746d706f

    if-ne v4, v6, :cond_5

    const-string v0, "TBPM"

    invoke-static {v6, v0, v1, v12, v14}, Lcom/google/android/gms/internal/ads/zzald;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;ZZ)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v15

    goto/16 :goto_6

    :cond_5
    const v6, 0x6370696c

    if-ne v4, v6, :cond_6

    const-string v0, "TCMP"

    invoke-static {v6, v0, v1, v12, v12}, Lcom/google/android/gms/internal/ads/zzald;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;ZZ)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v15

    goto/16 :goto_6

    :cond_6
    const v6, 0x636f7672

    const/4 v10, 0x4

    if-ne v4, v6, :cond_b

    const-string v0, "Unrecognized cover art flags: "

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    if-ne v3, v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    sget v4, Lcom/google/android/gms/internal/ads/zzaku;->zza:I

    and-int/2addr v3, v9

    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    const-string v4, "image/jpeg"

    goto :goto_1

    :cond_7
    const/16 v4, 0xe

    if-ne v3, v4, :cond_8

    const-string v3, "image/png"

    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    goto :goto_1

    :cond_8
    move-object v4, v15

    :goto_1
    if-nez v4, :cond_9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/lit8 v2, v2, -0x10

    new-array v0, v2, [B

    invoke-virtual {v1, v0, v14, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaio;

    const/4 v3, 0x3

    invoke-direct {v2, v4, v15, v3, v0}, Lcom/google/android/gms/internal/ads/zzaio;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "Failed to parse cover art attribute"

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const v6, 0x61415254

    if-ne v4, v6, :cond_c

    const-string v0, "TPE2"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_c
    const v6, 0x736f6e6d

    if-ne v4, v6, :cond_d

    const-string v0, "TSOT"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_d
    const v6, 0x736f616c

    if-ne v4, v6, :cond_e

    const-string v0, "TSOA"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_e
    const v6, 0x736f6172

    if-ne v4, v6, :cond_f

    const-string v0, "TSOP"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_f
    const v6, 0x736f6161

    if-ne v4, v6, :cond_10

    const-string v0, "TSO2"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_10
    const v6, 0x736f636f

    if-ne v4, v6, :cond_11

    const-string v0, "TSOC"

    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_11
    const v6, 0x72746e67

    if-ne v4, v6, :cond_12

    const-string v0, "ITUNESADVISORY"

    invoke-static {v6, v0, v1, v14, v14}, Lcom/google/android/gms/internal/ads/zzald;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;ZZ)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v15

    goto/16 :goto_6

    :cond_12
    if-ne v4, v3, :cond_13

    const-string v0, "ITUNESGAPLESS"

    invoke-static {v3, v0, v1, v14, v12}, Lcom/google/android/gms/internal/ads/zzald;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;ZZ)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v15

    goto/16 :goto_6

    :cond_13
    if-ne v4, v2, :cond_14

    const-string v0, "TVSHOWSORT"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_14
    if-ne v4, v0, :cond_15

    const-string v2, "TVSHOW"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_15
    const v0, 0x2d2d2d2d

    if-ne v4, v0, :cond_29

    move v3, v8

    move v4, v3

    move-object v0, v15

    move-object v2, v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v6

    if-ge v6, v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v9

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    const v12, 0x6d65616e

    if-ne v9, v12, :cond_16

    add-int/lit8 v7, v7, -0xc

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzL(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_16
    add-int/lit8 v12, v7, -0xc

    const v13, 0x6e616d65

    if-ne v9, v13, :cond_17

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzes;->zzL(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_17
    if-ne v9, v11, :cond_18

    move v4, v7

    :cond_18
    if-ne v9, v11, :cond_19

    move v3, v6

    :cond_19
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    goto :goto_2

    :cond_1a
    if-eqz v0, :cond_2c

    if-eqz v2, :cond_2c

    if-ne v3, v8, :cond_1b

    goto/16 :goto_6

    :cond_1b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzL(I)Ljava/lang/String;

    move-result-object v3

    new-instance v15, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {v15, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1c
    :goto_3
    and-int v0, v4, v9

    const v2, 0x636d74

    if-ne v0, v2, :cond_1e

    const-string v0, "Failed to parse comment attribute: "

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    if-ne v3, v11, :cond_1d

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzL(I)Ljava/lang/String;

    move-result-object v0

    new-instance v15, Lcom/google/android/gms/internal/ads/zzais;

    const-string v2, "und"

    invoke-direct {v15, v2, v0, v0}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfy;->zze(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    const v2, 0x6e616d

    if-eq v0, v2, :cond_2b

    const v2, 0x74726b

    if-ne v0, v2, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const v2, 0x636f6d

    if-eq v0, v2, :cond_2a

    const v2, 0x777274

    if-ne v0, v2, :cond_20

    goto/16 :goto_4

    :cond_20
    const v2, 0x646179

    if-ne v0, v2, :cond_21

    const-string v0, "TDRC"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_21
    const v2, 0x415254

    if-ne v0, v2, :cond_22

    const-string v0, "TPE1"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_22
    const v2, 0x746f6f

    if-ne v0, v2, :cond_23

    const-string v0, "TSSE"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto/16 :goto_6

    :cond_23
    const v2, 0x616c62

    if-ne v0, v2, :cond_24

    const-string v0, "TALB"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto :goto_6

    :cond_24
    const v2, 0x6c7972

    if-ne v0, v2, :cond_25

    const-string v0, "USLT"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto :goto_6

    :cond_25
    const v2, 0x67656e

    if-ne v0, v2, :cond_26

    invoke-static {v4, v10, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto :goto_6

    :cond_26
    const v2, 0x677270

    if-ne v0, v2, :cond_27

    const-string v0, "TIT1"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto :goto_6

    :cond_27
    const v2, 0x6d766e

    if-ne v0, v2, :cond_28

    const-string v0, "MVNM"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto :goto_6

    :cond_28
    const v2, 0x6d7669

    if-ne v0, v2, :cond_29

    const-string v0, "MVIN"

    invoke-static {v4, v0, v1, v12, v14}, Lcom/google/android/gms/internal/ads/zzald;->zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;ZZ)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v15

    goto :goto_6

    :cond_29
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfy;->zze(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzef;->zza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2a
    :goto_4
    const-string v0, "TCOM"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15

    goto :goto_6

    :cond_2b
    :goto_5
    const-string v0, "TIT2"

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzald;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2c
    :goto_6
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    return-object v15

    :goto_7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    throw v0
.end method

.method private static zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzL(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfy;->zze(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to parse text attribute: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static zze(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;ZZ)Lcom/google/android/gms/internal/ads/zzaiy;
    .locals 0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzald;->zzf(Lcom/google/android/gms/internal/ads/zzes;)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzais;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "und"

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfy;->zze(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to parse uint8 attribute: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzes;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzn()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzx()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static zzg(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzajd;
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfy;->zze(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to parse index/count attribute: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
