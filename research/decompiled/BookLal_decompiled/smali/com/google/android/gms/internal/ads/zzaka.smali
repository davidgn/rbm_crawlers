.class public final Lcom/google/android/gms/internal/ads/zzaka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# static fields
.field public static final synthetic zza:I


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzagc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzafy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaga;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzags;

.field private zzg:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzh:Lcom/google/android/gms/internal/ads/zzags;

.field private zzi:Lcom/google/android/gms/internal/ads/zzags;

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzap;

.field private zzl:Lcom/google/android/gms/internal/ads/zzap;

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:I

.field private zzr:Lcom/google/android/gms/internal/ads/zzake;

.field private zzs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzagc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzagc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzagc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzd:Lcom/google/android/gms/internal/ads/zzafy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaga;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaga;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zze:Lcom/google/android/gms/internal/ads/zzaga;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzf:Lcom/google/android/gms/internal/ads/zzags;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:Lcom/google/android/gms/internal/ads/zzags;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:J

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzafg;)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    :try_start_0
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzaka;->zzk(Lcom/google/android/gms/internal/ads/zzafg;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v5

    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_1a

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzagc;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzes;

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    invoke-direct {v15, v10}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v10

    iget v11, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    invoke-interface {v1, v10, v6, v11}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzagc;->zza:I

    and-int/2addr v10, v3

    const/16 v11, 0x15

    const/16 v12, 0x24

    if-eqz v10, :cond_1

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzagc;->zze:I

    if-eq v10, v3, :cond_3

    move v11, v12

    goto :goto_1

    :cond_1
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzagc;->zze:I

    if-eq v10, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0xd

    :cond_3
    :goto_1
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v10

    add-int/lit8 v13, v11, 0x4

    const v14, 0x56425249

    const v9, 0x496e666f

    const v2, 0x58696e67

    if-lt v10, v13, :cond_4

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v10

    if-eq v10, v2, :cond_6

    if-ne v10, v9, :cond_4

    move v10, v9

    goto :goto_2

    :cond_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v10

    const/16 v11, 0x28

    if-lt v10, v11, :cond_5

    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v10

    if-ne v10, v14, :cond_5

    move v10, v14

    goto :goto_2

    :cond_5
    move v10, v6

    :cond_6
    :goto_2
    if-eq v10, v9, :cond_9

    if-eq v10, v14, :cond_8

    if-eq v10, v2, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    :cond_7
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v12

    move-object v14, v4

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzakf;->zzd(JJLcom/google/android/gms/internal/ads/zzagc;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzakf;

    move-result-object v2

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    goto/16 :goto_7

    :cond_9
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzakg;->zza(Lcom/google/android/gms/internal/ads/zzagc;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzakg;

    move-result-object v9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzd:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzafy;->zzb()Z

    move-result v12

    if-nez v12, :cond_a

    iget v12, v9, Lcom/google/android/gms/internal/ads/zzakg;->zze:I

    if-eq v12, v5, :cond_a

    iget v13, v9, Lcom/google/android/gms/internal/ads/zzakg;->zzf:I

    if-eq v13, v5, :cond_a

    iput v12, v11, Lcom/google/android/gms/internal/ads/zzafy;->zza:I

    iput v13, v11, Lcom/google/android/gms/internal/ads/zzafy;->zzb:I

    :cond_a
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzakg;->zzd:Lcom/google/android/gms/internal/ads/zzakc;

    if-eqz v11, :cond_b

    new-instance v12, Lcom/google/android/gms/internal/ads/zzap;

    new-array v13, v3, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v11, v13, v6

    invoke-direct {v12, v7, v8, v13}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    :goto_4
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v13

    const-wide/16 v16, -0x1

    cmp-long v13, v13, v16

    if-eqz v13, :cond_c

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzakg;->zzc:J

    cmp-long v15, v13, v16

    if-eqz v15, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v18

    add-long/2addr v13, v11

    cmp-long v15, v18, v13

    if-eqz v15, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    add-int/lit8 v19, v19, 0x35

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v19

    new-instance v15, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v20, 0x14

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Data size mismatch between stream ("

    const-string v7, ") and Xing frame ("

    invoke-static {v15, v3, v5, v6, v7}, Lcom/google/android/gms/ads/internal/util/client/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), using Xing value."

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Mp3Extractor"

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    if-ne v10, v2, :cond_d

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzakh;->zzd(Lcom/google/android/gms/internal/ads/zzakg;J)Lcom/google/android/gms/internal/ads/zzakh;

    move-result-object v2

    goto :goto_7

    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzakg;->zzb()J

    move-result-wide v25

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v25, v5

    if-nez v7, :cond_e

    goto/16 :goto_3

    :cond_e
    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/zzakg;->zzc:J

    cmp-long v7, v5, v16

    if-eqz v7, :cond_f

    add-long v2, v11, v5

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzagc;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    :goto_5
    int-to-long v7, v7

    sub-long/2addr v5, v7

    move-wide/from16 v28, v2

    goto :goto_6

    :cond_f
    cmp-long v5, v2, v16

    if-eqz v5, :cond_7

    sub-long v5, v2, v11

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzagc;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    goto :goto_5

    :goto_6
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v23, 0x7a1200

    move-wide/from16 v21, v5

    move-object/from16 v27, v2

    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgzg;->zza(J)I

    move-result v32

    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzakg;->zzb:J

    invoke-static {v5, v6, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzgzb;->zza(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzg;->zza(J)I

    move-result v33

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzagc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajv;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    int-to-long v5, v2

    add-long v30, v11, v5

    const/16 v34, 0x0

    move-object/from16 v27, v3

    invoke-direct/range {v27 .. v34}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(JJIIZ)V

    move-object v2, v3

    :goto_7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzk:Lcom/google/android/gms/internal/ads/zzap;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v5

    if-nez v3, :cond_10

    :goto_8
    const/4 v3, 0x0

    goto :goto_a

    :cond_10
    const-class v7, Lcom/google/android/gms/internal/ads/zzajb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsn;->zza()Lcom/google/android/gms/internal/ads/zzgsk;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzap;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsk;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzajb;

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    const-class v8, Lcom/google/android/gms/internal/ads/zzajd;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzajz;->zza:Lcom/google/android/gms/internal/ads/zzajz;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzap;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsk;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajd;

    if-nez v3, :cond_12

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9

    :cond_12
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v8

    :goto_9
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzajx;->zzd(JLcom/google/android/gms/internal/ads/zzajb;J)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v3

    :goto_a
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzs:Z

    if-eqz v5, :cond_13

    new-instance v2, Lcom/google/android/gms/internal/ads/zzakd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzakd;-><init>()V

    goto :goto_c

    :cond_13
    if-eqz v3, :cond_14

    move-object v2, v3

    goto :goto_b

    :cond_14
    if-nez v2, :cond_15

    const/4 v2, 0x0

    :cond_15
    :goto_b
    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-interface {v1, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzagc;->zza(I)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajv;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v8

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzf:I

    iget v11, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(JJIIZ)V

    :cond_16
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzags;->zzN(J)V

    :goto_c
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzg:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzk:Lcom/google/android/gms/internal/ads/zzap;

    if-eqz v2, :cond_17

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    if-eqz v3, :cond_18

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v2

    goto :goto_d

    :cond_17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    :cond_18
    :goto_d
    new-instance v3, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v5, "audio/mpeg"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzo(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzagc;->zze:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzagc;->zzd:I

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzd:Lcom/google/android/gms/internal/ads/zzafy;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzafy;->zza:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzI(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzafy;->zzb:I

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzJ(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzake;->zzg()I

    move-result v2

    const v4, -0x7fffffff

    if-eq v2, v4, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzake;->zzg()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    goto :goto_e

    :cond_1a
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzo:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1b

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    :cond_1b
    :goto_e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:I

    if-nez v2, :cond_20

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaka;->zzl(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v5, -0x1

    goto/16 :goto_12

    :cond_1c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaka;->zzn(IJ)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzagd;->zza(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    :cond_1d
    const/4 v3, 0x1

    goto :goto_f

    :cond_1e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzagc;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzagc;->zza(I)Z

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-nez v2, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzake;->zze(J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    :cond_1f
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    instance-of v4, v4, Lcom/google/android/gms/internal/ads/zzajw;

    if-nez v4, :cond_21

    :cond_20
    const/4 v3, 0x1

    goto :goto_11

    :cond_21
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzagc;->zzg:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaka;->zzj(J)J

    const/4 v1, 0x0

    throw v1

    :goto_f
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:I

    :goto_10
    const/4 v5, 0x0

    goto :goto_12

    :goto_11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    move v5, v2

    goto :goto_12

    :cond_22
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:I

    if-lez v2, :cond_23

    goto :goto_10

    :goto_12
    return v5

    :cond_23
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaka;->zzj(J)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzagc;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzagc;->zzg:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:I

    return v1
.end method

.method private final zzj(J)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzagc;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzagc;->zzd:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    mul-long/2addr p1, v5

    div-long/2addr p1, v3

    add-long/2addr p1, v1

    return-wide p1
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzafg;Z)Z
    .locals 10

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zze:Lcom/google/android/gms/internal/ads/zzaga;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzaga;->zza(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzaiu;I)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzk:Lcom/google/android/gms/internal/ads/zzap;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzd:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzafy;->zza(Lcom/google/android/gms/internal/ads/zzap;)Z

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v3

    long-to-int v0, v3

    if-nez p2, :cond_1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    :cond_1
    move v3, v2

    :goto_0
    move v4, v3

    move v5, v4

    goto :goto_1

    :cond_2
    move v0, v2

    move v3, v0

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaka;->zzl(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    if-lez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaka;->zzm()V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v6

    if-eqz v3, :cond_5

    int-to-long v8, v3

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaka;->zzn(IJ)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzagd;->zza(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a

    :cond_6
    add-int/lit8 v3, v5, 0x1

    if-ne v5, v1, :cond_8

    if-eqz p2, :cond_7

    return v2

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaka;->zzm()V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    add-int v4, v0, v3

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzafg;->zzk(I)V

    :goto_2
    move v4, v2

    move v5, v3

    move v3, v4

    goto :goto_1

    :cond_9
    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    goto :goto_2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Lcom/google/android/gms/internal/ads/zzagc;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzagc;->zza(I)Z

    move v3, v6

    goto :goto_5

    :cond_b
    const/4 v6, 0x4

    if-ne v4, v6, :cond_d

    :goto_3
    if-eqz p2, :cond_c

    add-int/2addr v0, v5

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    goto :goto_4

    :cond_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    :goto_4
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:I

    return v7

    :cond_d
    :goto_5
    add-int/lit8 v8, v8, -0x4

    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/ads/zzafg;->zzk(I)V

    goto :goto_1
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzake;->zzf()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzh([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v3

    :catch_0
    return v1
.end method

.method private final zzm()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzajv;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzake;->zzf()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzajv;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzajv;->zzh(J)Lcom/google/android/gms/internal/ads/zzajv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzg:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    :cond_0
    return-void
.end method

.method private static zzn(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaka;->zzk(Lcom/google/android/gms/internal/ads/zzafg;Z)Z

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzg:Lcom/google/android/gms/internal/ads/zzafi;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzags;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzi:Lcom/google/android/gms/internal/ads/zzags;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzg:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzh:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaka;->zzi(Lcom/google/android/gms/internal/ads/zzafg;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzajw;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaka;->zzj(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajw;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final zze(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzj:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzm:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzn:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzq:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzp:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzr:Lcom/google/android/gms/internal/ads/zzake;

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzajw;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzs:Z

    return-void
.end method
