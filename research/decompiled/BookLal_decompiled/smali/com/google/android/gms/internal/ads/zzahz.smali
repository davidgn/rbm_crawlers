.class final Lcom/google/android/gms/internal/ads/zzahz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzes;

.field private zzb:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaig;

.field private zzd:Lcom/google/android/gms/internal/ads/zzafg;

.field private zze:Lcom/google/android/gms/internal/ads/zzago;

.field private zzf:Lcom/google/android/gms/internal/ads/zzalm;

.field private zzg:I

.field private zzh:I

.field private zzi:J

.field private zzj:I

.field private zzk:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zza:Lcom/google/android/gms/internal/ads/zzes;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzk:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    return-void
.end method

.method private final zzh()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagi;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6, v4, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzh([BIIZ)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    move v2, v6

    goto :goto_4

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v5

    const-wide/16 v9, 0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    invoke-interface {p1, v7, v4, v4, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzh([BIIZ)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzJ()J

    move-result-wide v7

    move v9, v1

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    goto :goto_1

    :cond_4
    sub-long/2addr v7, v9

    long-to-int v7, v7

    if-eqz v3, :cond_8

    const v3, 0x66747970

    if-ne v5, v3, :cond_0

    if-ge v7, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-virtual {v5, v4, v6, v3, v6}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    const v4, 0x68656963

    if-eq v3, v4, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    :cond_7
    :goto_3
    move v3, v6

    goto :goto_0

    :cond_8
    const v3, 0x6d707664

    if-ne v5, v3, :cond_9

    :goto_4
    return v2

    :cond_9
    if-eqz v7, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    goto :goto_3
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/16 v8, 0x8

    if-eqz v5, :cond_8

    if-eq v5, v3, :cond_7

    const/4 v9, 0x3

    if-eq v5, v7, :cond_4

    if-eq v5, v9, :cond_0

    return v6

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahz;->zze:Lcom/google/android/gms/internal/ads/zzago;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzd:Lcom/google/android/gms/internal/ads/zzafg;

    if-eq v1, v4, :cond_2

    :cond_1
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzd:Lcom/google/android/gms/internal/ads/zzafg;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzago;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzk:J

    invoke-direct {v4, v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzago;-><init>(Lcom/google/android/gms/internal/ads/zzafg;J)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzahz;->zze:Lcom/google/android/gms/internal/ads/zzago;

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahz;->zze:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzk:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    :cond_3
    return v1

    :cond_4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzalm;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzamt;->zza:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzalm;-><init>(Lcom/google/android/gms/internal/ads/zzamt;I)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/ads/zzago;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzk:J

    invoke-direct {v5, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzago;-><init>(Lcom/google/android/gms/internal/ads/zzafg;J)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zze:Lcom/google/android/gms/internal/ads/zzago;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzalm;->zza(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzk:J

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(JLcom/google/android/gms/internal/ads/zzafi;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzalm;->zzc(Lcom/google/android/gms/internal/ads/zzafi;)V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahz;->zzh()V

    goto :goto_0

    :cond_7
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzi:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    goto :goto_0

    :cond_8
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    if-nez v5, :cond_a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v9

    invoke-interface {v1, v9, v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzafg;->zzb([BIIZ)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahz;->zzh()V

    return v6

    :cond_9
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzi:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzh:I

    :cond_a
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzi:J

    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-nez v9, :cond_b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    invoke-interface {v1, v6, v8, v8}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzes;->zzJ()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzi:J

    :cond_b
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzh:I

    const v9, 0x6d707664

    if-ne v8, v9, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzk:J

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    int-to-long v10, v10

    sub-long v13, v8, v10

    sub-long v19, v5, v10

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaig;

    const-wide/16 v11, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    move-object v10, v5

    move-wide/from16 v17, v8

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(JJJJJ)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzc:Lcom/google/android/gms/internal/ads/zzaig;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzb:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0x400

    const/4 v9, 0x4

    invoke-interface {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v9, "image/heic"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzap;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    new-array v12, v3, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v5, v12, v4

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    goto/16 :goto_0

    :cond_c
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    goto/16 :goto_0
.end method

.method public final zze(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzj:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzk:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzalm;->zze(JJ)V

    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:Lcom/google/android/gms/internal/ads/zzalm;

    :cond_0
    return-void
.end method
