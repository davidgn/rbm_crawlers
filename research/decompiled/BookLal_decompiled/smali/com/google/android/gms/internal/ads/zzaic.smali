.class final Lcom/google/android/gms/internal/ads/zzaic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzes;

.field private zzb:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzaig;

.field private zzh:Lcom/google/android/gms/internal/ads/zzafg;

.field private zzi:Lcom/google/android/gms/internal/ads/zzago;

.field private zzj:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzafg;)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaew;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p1

    return p1
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzafg;)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    return p1
.end method

.method private final zzj()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagi;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaic;->zzh(Lcom/google/android/gms/internal/ads/zzafg;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaic;->zzh(Lcom/google/android/gms/internal/ads/zzafg;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzd:I

    const v1, 0xffda

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaic;->zzi(Lcom/google/android/gms/internal/ads/zzafg;)I

    move-result v0

    if-ltz v0, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzd:I

    const v3, 0xffe1

    if-eq v1, v3, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaic;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-virtual {v4, v3, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzM(C)Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzM(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaif;->zzb(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    const/4 v7, 0x4

    const/4 v8, 0x2

    const-wide/16 v9, -0x1

    if-eqz v6, :cond_1a

    if-eq v6, v5, :cond_19

    if-eq v6, v8, :cond_a

    const/4 v8, 0x5

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_1

    const/4 v1, 0x6

    if-ne v6, v1, :cond_0

    return v3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzi:Lcom/google/android/gms/internal/ads/zzago;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzh:Lcom/google/android/gms/internal/ads/zzafg;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzh:Lcom/google/android/gms/internal/ads/zzafg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzago;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    invoke-direct {v3, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzago;-><init>(Lcom/google/android/gms/internal/ads/zzafg;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzi:Lcom/google/android/gms/internal/ads/zzago;

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzj:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzi:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    :cond_4
    return v1

    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    cmp-long v3, v9, v11

    if-nez v3, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    invoke-interface {v1, v2, v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzafg;->zzh([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaic;->zzj()V

    goto :goto_0

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzj:Lcom/google/android/gms/internal/ads/zzalm;

    if-nez v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/ads/zzalm;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamt;->zza:Lcom/google/android/gms/internal/ads/zzamt;

    const/16 v6, 0x8

    invoke-direct {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzalm;-><init>(Lcom/google/android/gms/internal/ads/zzamt;I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzj:Lcom/google/android/gms/internal/ads/zzalm;

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzago;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    invoke-direct {v2, v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzago;-><init>(Lcom/google/android/gms/internal/ads/zzafg;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzi:Lcom/google/android/gms/internal/ads/zzago;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzj:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzalm;->zza(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzj:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(JLcom/google/android/gms/internal/ads/zzafi;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzalm;->zzc(Lcom/google/android/gms/internal/ads/zzafi;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzg:Lcom/google/android/gms/internal/ads/zzaig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v6, "image/jpeg"

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzap;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v1, v5, v4

    invoke-direct {v6, v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    goto :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaic;->zzj()V

    :goto_0
    return v4

    :cond_9
    iput-wide v11, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    return v5

    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzd:I

    const v6, 0xffe1

    if-ne v2, v6, :cond_17

    new-instance v2, Lcom/google/android/gms/internal/ads/zzes;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaic;->zze:I

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaic;->zze:I

    invoke-interface {v1, v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzg:Lcom/google/android/gms/internal/ads/zzaig;

    if-nez v6, :cond_18

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzM(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzM(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v6

    cmp-long v1, v6, v9

    if-nez v1, :cond_c

    :cond_b
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaif;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v8, :cond_e

    goto :goto_1

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v3

    move-wide v13, v9

    move-wide v15, v13

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    :goto_2
    if-ltz v8, :cond_15

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaid;

    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzaid;->zza:Ljava/lang/String;

    const-string v5, "video/mp4"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "video/quicktime"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    const/4 v5, 0x1

    goto :goto_3

    :cond_10
    move v5, v4

    :goto_3
    if-nez v8, :cond_11

    iget-wide v11, v12, Lcom/google/android/gms/internal/ads/zzaid;->zzc:J

    sub-long/2addr v6, v11

    const-wide/16 v11, 0x0

    :goto_4
    move-wide/from16 v23, v6

    move-wide v6, v11

    move-wide/from16 v11, v23

    goto :goto_5

    :cond_11
    iget-wide v11, v12, Lcom/google/android/gms/internal/ads/zzaid;->zzb:J

    sub-long v11, v6, v11

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_12

    cmp-long v5, v6, v11

    if-eqz v5, :cond_12

    sub-long v21, v11, v6

    move-wide/from16 v19, v6

    :cond_12
    if-nez v8, :cond_13

    move-wide v15, v11

    :cond_13
    if-nez v8, :cond_14

    move-wide v13, v6

    :cond_14
    add-int/2addr v8, v3

    const/4 v5, 0x1

    goto :goto_2

    :cond_15
    cmp-long v2, v19, v9

    if-eqz v2, :cond_b

    cmp-long v2, v21, v9

    if-eqz v2, :cond_b

    cmp-long v2, v13, v9

    if-eqz v2, :cond_b

    cmp-long v2, v15, v9

    if-nez v2, :cond_16

    goto :goto_1

    :cond_16
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaie;->zza:J

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaig;

    move-object v12, v11

    move-wide/from16 v17, v1

    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(JJJJJ)V

    :goto_6
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzg:Lcom/google/android/gms/internal/ads/zzaig;

    if-eqz v11, :cond_18

    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    goto :goto_7

    :cond_17
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zze:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    :cond_18
    :goto_7
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    return v4

    :cond_19
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaic;->zzi(Lcom/google/android/gms/internal/ads/zzafg;)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zze:I

    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    return v4

    :cond_1a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaic;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    invoke-interface {v1, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzd:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1c

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzf:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1b

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    goto :goto_8

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaic;->zzj()V

    goto :goto_8

    :cond_1c
    const v2, 0xffd0

    if-lt v1, v2, :cond_1d

    const v2, 0xffd9

    if-le v1, v2, :cond_1e

    :cond_1d
    const v2, 0xff01

    if-eq v1, v2, :cond_1e

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    :cond_1e
    :goto_8
    return v4
.end method

.method public final zze(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzj:Lcom/google/android/gms/internal/ads/zzalm;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzc:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzj:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzalm;->zze(JJ)V

    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method
