.class public final Lcom/google/android/gms/internal/ads/zzahr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# instance fields
.field private final zza:[B

.field private final zzb:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzafm;

.field private zzd:Lcom/google/android/gms/internal/ads/zzafi;

.field private zze:Lcom/google/android/gms/internal/ads/zzags;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzap;

.field private zzh:Lcom/google/android/gms/internal/ads/zzafs;

.field private zzi:I

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzahp;

.field private zzl:I

.field private zzm:J


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

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzafm;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzes;Z)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzafm;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzafs;ILcom/google/android/gms/internal/ads/zzafm;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    iget-wide p1, v3, Lcom/google/android/gms/internal/ads/zzafm;->zza:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzi:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzafm;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzafs;ILcom/google/android/gms/internal/ads/zzafm;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzafm;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final zzi()V
    .locals 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzm:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzafs;->zze:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:Lcom/google/android/gms/internal/ads/zzags;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzl:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzafp;->zza(Lcom/google/android/gms/internal/ads/zzafg;Z)Lcom/google/android/gms/internal/ads/zzap;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzes;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzafi;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_13

    if-eq v3, v4, :cond_12

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v3, v2, :cond_10

    if-eq v3, v7, :cond_e

    const-wide/16 v9, -0x1

    if-eq v3, v8, :cond_a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzk:Lcom/google/android/gms/internal/ads/zzahp;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaer;->zzc()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p2

    invoke-virtual {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzaer;->zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I

    move-result v5

    goto/16 :goto_2

    :cond_0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzm:J

    cmp-long v3, v6, v9

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzafn;->zzb(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzafs;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzm:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v3

    const v6, 0x8000

    if-ge v3, v6, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    sub-int/2addr v6, v3

    invoke-interface {v1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzafg;->zza([BII)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    if-nez v4, :cond_3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v1

    if-nez v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahr;->zzi()V

    move v5, v6

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v1

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzl:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzi:I

    if-ge v3, v6, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v7

    sub-int/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_6
    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzahr;->zzh(Lcom/google/android/gms/internal/ads/zzes;Z)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzl:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzl:I

    cmp-long v1, v3, v9

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahr;->zzi()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzl:I

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzm:J

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_9

    if-lt v1, v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    invoke-static {v3, v4, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    :cond_9
    :goto_2
    return v5

    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v4

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v3

    shr-int/lit8 v2, v3, 0x2

    const/16 v4, 0x3ffe

    if-ne v2, v4, :cond_d

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzafi;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzafs;->zzk:Lcom/google/android/gms/internal/ads/zzafr;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzafr;->zza:[J

    array-length v1, v1

    if-lez v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafq;

    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzafq;-><init>(Lcom/google/android/gms/internal/ads/zzafs;J)V

    goto :goto_3

    :cond_b
    cmp-long v1, v16, v9

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_c

    iget-wide v6, v12, Lcom/google/android/gms/internal/ads/zzafs;->zzj:J

    cmp-long v1, v6, v3

    if-lez v1, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahp;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzj:I

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(Lcom/google/android/gms/internal/ads/zzafs;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzk:Lcom/google/android/gms/internal/ads/zzahp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaer;->zza()Lcom/google/android/gms/internal/ads/zzagj;

    move-result-object v1

    goto :goto_3

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzagi;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzafs;->zza()J

    move-result-wide v6

    invoke-direct {v1, v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    return v5

    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    const-string v1, "First frame does not start with sync code."

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzafo;-><init>(Lcom/google/android/gms/internal/ads/zzafs;)V

    :cond_f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzb(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzafo;)Z

    move-result v3

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzafo;->zza:Lcom/google/android/gms/internal/ads/zzafs;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzafs;->zzc:I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzi:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:Lcom/google/android/gms/internal/ads/zzap;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafs;->zzc([BLcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v1

    const-string v3, "audio/flac"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahr;->zze:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzh:Lcom/google/android/gms/internal/ads/zzafs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafs;->zza()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzN(J)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    return v5

    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    invoke-interface {v1, v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    return v5

    :cond_11
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_12
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    const/16 v4, 0x2a

    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    return v5

    :cond_13
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v2

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzafp;->zza(Lcom/google/android/gms/internal/ads/zzafg;Z)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-int v2, v7

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:Lcom/google/android/gms/internal/ads/zzap;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    return v5
.end method

.method public final zze(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzk:Lcom/google/android/gms/internal/ads/zzahp;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzaer;->zzb(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzm:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzl:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method
