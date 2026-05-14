.class public final Lcom/google/android/gms/internal/ads/zzahu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzes;

.field private final zze:Lcom/google/android/gms/internal/ads/zzahv;

.field private zzf:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzg:I

.field private zzh:Z

.field private zzi:J

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/ads/zzahs;

.field private zzp:Lcom/google/android/gms/internal/ads/zzahy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zza:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zze:Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzafg;)Lcom/google/android/gms/internal/ads/zzes;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzl:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzj()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzj()I

    move-result v1

    add-int/2addr v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzl:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzl:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzl:I

    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    return-object v0
.end method

.method private final zzi()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagi;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzn:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaew;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzx()I

    move-result v1

    const v3, 0x464c56

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v1

    and-int/lit16 v1, v1, 0xfa

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-virtual {p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    invoke-virtual {p1, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_e

    const/4 v10, 0x3

    if-eq v2, v7, :cond_d

    if-eq v2, v10, :cond_b

    if-ne v2, v3, :cond_a

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzh:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzi:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzm:J

    add-long/2addr v14, v10

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zze:Lcom/google/android/gms/internal/ads/zzahv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahv;->zzc()J

    move-result-wide v10

    cmp-long v2, v10, v12

    if-nez v2, :cond_2

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_2
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzm:J

    :goto_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzk:I

    if-ne v2, v6, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzo:Lcom/google/android/gms/internal/ads/zzahs;

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahu;->zzi()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzo:Lcom/google/android/gms/internal/ads/zzahs;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahu;->zzh(Lcom/google/android/gms/internal/ads/zzafg;)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v4

    invoke-virtual {v2, v4, v14, v15}, Lcom/google/android/gms/internal/ads/zzahx;->zzf(Lcom/google/android/gms/internal/ads/zzes;J)Z

    move-result v2

    :goto_2
    move v4, v9

    goto :goto_3

    :cond_3
    move v6, v2

    :cond_4
    if-ne v6, v5, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahu;->zzi()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahu;->zzh(Lcom/google/android/gms/internal/ads/zzafg;)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v4

    invoke-virtual {v2, v4, v14, v15}, Lcom/google/android/gms/internal/ads/zzahx;->zzf(Lcom/google/android/gms/internal/ads/zzes;J)Z

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x12

    if-ne v6, v2, :cond_7

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzn:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zze:Lcom/google/android/gms/internal/ads/zzahv;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahu;->zzh(Lcom/google/android/gms/internal/ads/zzafg;)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v4

    invoke-virtual {v2, v4, v14, v15}, Lcom/google/android/gms/internal/ads/zzahx;->zzf(Lcom/google/android/gms/internal/ads/zzes;J)Z

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahv;->zzc()J

    move-result-wide v5

    cmp-long v10, v5, v12

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzagb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahv;->zze()[J

    move-result-object v14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahv;->zzd()[J

    move-result-object v2

    invoke-direct {v11, v14, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzagb;-><init>([J[JJ)V

    invoke-interface {v10, v11}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzn:Z

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzl:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    move v2, v8

    move v4, v2

    :goto_3
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzh:Z

    if-nez v5, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzh:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zze:Lcom/google/android/gms/internal/ads/zzahv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahv;->zzc()J

    move-result-wide v5

    cmp-long v2, v5, v12

    if-nez v2, :cond_8

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzm:J

    neg-long v10, v5

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzi:J

    :cond_9
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzj:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    if-eqz v4, :cond_0

    return v8

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v5

    const/16 v6, 0xb

    invoke-interface {v1, v5, v8, v6, v9}, Lcom/google/android/gms/internal/ads/zzafg;->zzb([BIIZ)Z

    move-result v5

    if-nez v5, :cond_c

    return v4

    :cond_c
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzk:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzx()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzl:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzx()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzm:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzm:J

    int-to-long v7, v4

    or-long v4, v7, v5

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzm:J

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    goto/16 :goto_0

    :cond_d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzj:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzj:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    goto/16 :goto_0

    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v10

    invoke-interface {v1, v10, v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzafg;->zzb([BIIZ)Z

    move-result v10

    if-nez v10, :cond_f

    return v4

    :cond_f
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v3

    and-int/lit8 v4, v3, 0x4

    and-int/2addr v3, v9

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzo:Lcom/google/android/gms/internal/ads/zzahs;

    if-nez v4, :cond_10

    new-instance v4, Lcom/google/android/gms/internal/ads/zzahs;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v8, v6, v9}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Lcom/google/android/gms/internal/ads/zzags;)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzo:Lcom/google/android/gms/internal/ads/zzahs;

    :cond_10
    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    if-nez v3, :cond_11

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahy;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzahy;-><init>(Lcom/google/android/gms/internal/ads/zzags;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    :cond_11
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzf:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzj:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    goto/16 :goto_0
.end method

.method public final zze(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzh:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzg:I

    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzj:I

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method
