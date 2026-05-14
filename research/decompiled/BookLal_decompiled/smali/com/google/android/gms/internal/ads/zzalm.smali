.class public final Lcom/google/android/gms/internal/ads/zzalm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# static fields
.field public static final synthetic zza:I


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzB:[Lcom/google/android/gms/internal/ads/zzall;

.field private zzC:[[J

.field private zzD:I

.field private zzE:Lcom/google/android/gms/internal/ads/zzaig;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzamt;

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzes;

.field private final zze:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzh:Ljava/util/ArrayDeque;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzalq;

.field private final zzj:Ljava/util/List;

.field private zzk:Lcom/google/android/gms/internal/ads/zzgvm;

.field private zzl:I

.field private zzm:I

.field private zzn:J

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/ads/zzes;

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:J

.field private zzy:Z

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamt;->zza:Lcom/google/android/gms/internal/ads/zzamt;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzalm;-><init>(Lcom/google/android/gms/internal/ads/zzamt;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamt;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzamt;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzk:Lcom/google/android/gms/internal/ads/zzgvm;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzi:Lcom/google/android/gms/internal/ads/zzalq;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzj:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzg:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzh:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/4 v0, 0x6

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zze:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzf:Lcom/google/android/gms/internal/ads/zzes;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzq:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzafi;->zza:Lcom/google/android/gms/internal/ads/zzafi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    new-array p1, p2, [Lcom/google/android/gms/internal/ads/zzall;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzB:[Lcom/google/android/gms/internal/ads/zzall;

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzalv;JJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalm;->zzl(Lcom/google/android/gms/internal/ads/zzalv;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalv;->zzc:[J

    aget-wide p1, p0, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzalv;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalm;->zzl(Lcom/google/android/gms/internal/ads/zzalv;J)I

    move-result p0

    return p0
.end method

.method private final zzj()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    return-void
.end method

.method private final zzk(J)V
    .locals 42

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_2d

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfw;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzfw;->zza:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_2d

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfw;

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzfy;->zzd:I

    const v7, 0x6d6f6f76

    if-ne v4, v7, :cond_2c

    const v4, 0x6d657461

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfw;->zzd(I)Lcom/google/android/gms/internal/ads/zzfw;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    if-eqz v4, :cond_b

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaku;->zze(Lcom/google/android/gms/internal/ads/zzfw;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzy:Z

    const-class v9, Lcom/google/android/gms/internal/ads/zzfu;

    if-eqz v8, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzalg;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-virtual {v4, v9, v7}, Lcom/google/android/gms/internal/ads/zzap;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsk;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfu;

    if-eqz v7, :cond_0

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfu;->zzb:[B

    aget-byte v7, v7, v1

    if-nez v7, :cond_0

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzx:J

    const-wide/16 v10, 0x10

    add-long/2addr v7, v10

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzz:J

    :cond_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzalh;->zza:Lcom/google/android/gms/internal/ads/zzalh;

    invoke-virtual {v4, v9, v7}, Lcom/google/android/gms/internal/ads/zzap;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsk;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfu;->zzb()Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_3

    if-eq v10, v2, :cond_2

    const/4 v11, 0x3

    if-eq v10, v5, :cond_4

    if-eq v10, v11, :cond_1

    move v11, v1

    goto :goto_2

    :cond_1
    const/4 v11, 0x4

    goto :goto_2

    :cond_2
    move v11, v5

    goto :goto_2

    :cond_3
    move v11, v2

    :cond_4
    :goto_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v2

    goto :goto_1

    :cond_5
    move-object v14, v8

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_a

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    and-int/lit8 v8, v8, 0x40

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    sget-object v8, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalf;

    invoke-virtual {v4, v9, v8}, Lcom/google/android/gms/internal/ads/zzap;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsk;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfu;

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    new-instance v9, Lcom/google/android/gms/internal/ads/zzes;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfu;->zzb:[B

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzes;->zzJ()J

    move-result-wide v8

    cmp-long v10, v8, v15

    if-gtz v10, :cond_9

    goto :goto_3

    :cond_9
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzx:J

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzw:Z

    move v8, v2

    move-object/from16 v26, v3

    goto/16 :goto_24

    :cond_a
    :goto_3
    move-object v14, v7

    goto :goto_4

    :cond_b
    move-object v14, v7

    move-object/from16 v4, v17

    :goto_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzD:I

    if-ne v7, v2, :cond_c

    move v12, v2

    goto :goto_5

    :cond_c
    move v12, v1

    :goto_5
    new-instance v11, Lcom/google/android/gms/internal/ads/zzafy;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzafy;-><init>()V

    const v7, 0x75647461

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaku;->zzc(Lcom/google/android/gms/internal/ads/zzfx;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzafy;->zza(Lcom/google/android/gms/internal/ads/zzap;)Z

    move-object v10, v7

    goto :goto_6

    :cond_d
    move-object/from16 v10, v17

    :goto_6
    new-instance v8, Lcom/google/android/gms/internal/ads/zzap;

    const v7, 0x6d766864

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzfx;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfx;->zza:Lcom/google/android/gms/internal/ads/zzes;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaku;->zzd(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzga;

    move-result-object v7

    new-array v9, v2, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v7, v9, v1

    move-object/from16 v16, v14

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v8, v14, v15, v9}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    and-int/lit8 v7, v9, 0x1

    if-eq v2, v7, :cond_e

    move/from16 v20, v1

    goto :goto_7

    :cond_e
    move/from16 v20, v2

    :goto_7
    sget-object v21, Lcom/google/android/gms/internal/ads/zzalj;->zza:Lcom/google/android/gms/internal/ads/zzalj;

    const/16 v22, 0x0

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    move-object v7, v11

    move-object v15, v8

    move/from16 v27, v9

    move-wide/from16 v8, v23

    move-object v14, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    move/from16 v11, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v21

    move-object/from16 v31, v14

    move/from16 v14, v22

    invoke-static/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzaku;->zzb(Lcom/google/android/gms/internal/ads/zzfw;Lcom/google/android/gms/internal/ads/zzafy;JLcom/google/android/gms/internal/ads/zzq;ZZLcom/google/android/gms/internal/ads/zzgsa;Z)Ljava/util/List;

    move-result-object v6

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzy:Z

    if-eqz v7, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_f

    move v7, v2

    goto :goto_8

    :cond_f
    move v7, v1

    :goto_8
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "The number of auxiliary track types from metadata ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") is not same as the number of auxiliary tracks ("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgsj;->zzj(ZLjava/lang/Object;)V

    :cond_10
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzale;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    move v11, v1

    move v12, v11

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_25

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzalv;

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzb:I

    if-nez v1, :cond_11

    move v5, v2

    move-object/from16 v26, v3

    move-object/from16 v33, v6

    move-object v1, v7

    move/from16 v36, v11

    move/from16 v25, v12

    move v3, v13

    move-object/from16 v6, v28

    move-object/from16 v7, v31

    const/4 v2, -0x1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v18, 0x0

    move-object v13, v4

    move-object/from16 v4, v20

    goto/16 :goto_1f

    :cond_11
    iget-object v8, v14, Lcom/google/android/gms/internal/ads/zzalv;->zza:Lcom/google/android/gms/internal/ads/zzals;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzall;

    move/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    add-int/lit8 v25, v12, 0x1

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzals;->zzb:I

    invoke-interface {v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v1

    invoke-direct {v5, v8, v14, v1}, Lcom/google/android/gms/internal/ads/zzall;-><init>(Lcom/google/android/gms/internal/ads/zzals;Lcom/google/android/gms/internal/ads/zzalv;Lcom/google/android/gms/internal/ads/zzags;)V

    move-object v1, v6

    move-object v12, v7

    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/zzals;->zze:J

    move-object/from16 v26, v3

    move-object/from16 v32, v4

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v29, v6, v3

    if-nez v29, :cond_12

    iget-wide v6, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzi:J

    :cond_12
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzall;->zzc:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzags;->zzN(J)V

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    move-object/from16 v33, v1

    const-string v1, "audio/true-hd"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zze:I

    mul-int/lit8 v1, v1, 0x10

    :goto_a
    move-wide/from16 v34, v9

    goto :goto_b

    :cond_13
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zze:I

    add-int/lit8 v1, v1, 0x1e

    goto :goto_a

    :goto_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzo(I)Lcom/google/android/gms/internal/ads/zzt;

    const/4 v1, 0x2

    if-ne v2, v1, :cond_17

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzv;->zzf:I

    and-int/lit8 v2, v27, 0x8

    if-eqz v2, :cond_15

    const/4 v2, -0x1

    if-ne v13, v2, :cond_14

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x2

    :goto_c
    or-int/2addr v1, v2

    :cond_15
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzy:Z

    if-eqz v2, :cond_16

    const v2, 0x8000

    or-int/2addr v1, v2

    move-object/from16 v10, v16

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    goto :goto_d

    :cond_16
    move-object/from16 v10, v16

    :goto_d
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    const/4 v2, 0x2

    goto :goto_e

    :cond_17
    move-object/from16 v10, v16

    :goto_e
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    move-object/from16 v16, v10

    move/from16 v36, v11

    move-object/from16 v24, v12

    move/from16 v37, v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v18, 0x0

    goto/16 :goto_16

    :cond_18
    iget-boolean v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzj:Z

    move-object/from16 v16, v10

    if-nez v1, :cond_19

    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzh:[I

    array-length v10, v10

    :goto_f
    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_10

    :cond_19
    move/from16 v10, v24

    goto :goto_f

    :goto_10
    cmp-long v24, v6, v29

    move/from16 v36, v11

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eqz v24, :cond_1a

    const/4 v11, 0x1

    goto :goto_11

    :cond_1a
    const/4 v11, 0x0

    :goto_11
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    move-object/from16 v24, v12

    const-wide/32 v11, 0x989680

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move/from16 v37, v13

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    if-ge v12, v10, :cond_1e

    if-eqz v1, :cond_1b

    move/from16 v38, v1

    move/from16 v39, v10

    move v1, v12

    goto :goto_13

    :cond_1b
    move/from16 v38, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzh:[I

    aget v1, v1, v12

    move/from16 v39, v10

    :goto_13
    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzf:[J

    aget-wide v40, v10, v1

    cmp-long v10, v40, v6

    if-lez v10, :cond_1c

    const/4 v1, -0x1

    const-wide/16 v18, 0x0

    goto :goto_14

    :cond_1c
    const-wide/16 v18, 0x0

    cmp-long v10, v40, v18

    if-ltz v10, :cond_1d

    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzd:[I

    aget v10, v10, v1

    if-le v10, v13, :cond_1d

    move v11, v1

    move v13, v10

    :cond_1d
    const/4 v1, 0x1

    add-int/2addr v12, v1

    move/from16 v1, v38

    move/from16 v10, v39

    goto :goto_12

    :cond_1e
    const-wide/16 v18, 0x0

    const/4 v1, -0x1

    :goto_14
    if-ne v11, v1, :cond_1f

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_16

    :cond_1f
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzf:[J

    aget-wide v6, v1, v11

    goto :goto_15

    :goto_16
    cmp-long v1, v6, v11

    if-eqz v1, :cond_20

    new-instance v1, Lcom/google/android/gms/internal/ads/zzap;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaii;

    invoke-direct {v10, v6, v7}, Lcom/google/android/gms/internal/ads/zzaii;-><init>(J)V

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/android/gms/internal/ads/zzao;

    const/4 v6, 0x0

    aput-object v10, v7, v6

    invoke-direct {v1, v11, v12, v7}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    :goto_17
    move-object/from16 v6, v28

    goto :goto_18

    :cond_20
    move-object/from16 v1, v17

    goto :goto_17

    :goto_18
    invoke-static {v2, v6, v9}, Lcom/google/android/gms/internal/ads/zzald;->zzb(ILcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzt;)V

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzj:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_21

    move-object/from16 v10, v17

    :goto_19
    move-object/from16 v7, v31

    goto :goto_1a

    :cond_21
    new-instance v10, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {v10, v7}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/util/List;)V

    goto :goto_19

    :goto_1a
    filled-new-array {v10, v7, v15, v1}, [Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v1

    move-object/from16 v13, v32

    invoke-static {v2, v13, v9, v4, v1}, Lcom/google/android/gms/internal/ads/zzald;->zza(ILcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzap;[Lcom/google/android/gms/internal/ads/zzap;)V

    move-object/from16 v1, v24

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v4, "audio/mpeg"

    invoke-static {v8, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    iput-object v3, v5, Lcom/google/android/gms/internal/ads/zzall;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    :goto_1b
    const/4 v3, 0x2

    goto :goto_1c

    :cond_22
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    goto :goto_1b

    :goto_1c
    move/from16 v8, v37

    if-ne v2, v3, :cond_23

    const/4 v2, -0x1

    if-ne v8, v2, :cond_24

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1d
    move-object/from16 v4, v20

    goto :goto_1e

    :cond_23
    const/4 v2, -0x1

    :cond_24
    move v3, v8

    goto :goto_1d

    :goto_1e
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v9, v34

    const/4 v5, 0x1

    :goto_1f
    add-int/lit8 v8, v36, 0x1

    move-object/from16 v20, v4

    move v2, v5

    move-object/from16 v28, v6

    move-object/from16 v31, v7

    move v11, v8

    move-object v4, v13

    move/from16 v12, v25

    move-object/from16 v6, v33

    const/4 v5, 0x2

    move-object v7, v1

    move v13, v3

    move-object/from16 v3, v26

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_25
    move v5, v1

    move-object/from16 v26, v3

    move v8, v13

    move-object/from16 v4, v20

    const/4 v2, -0x1

    const-wide/16 v18, 0x0

    new-array v1, v5, [Lcom/google/android/gms/internal/ads/zzall;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzall;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzB:[Lcom/google/android/gms/internal/ads/zzall;

    array-length v3, v1

    new-array v4, v3, [[J

    new-array v5, v3, [I

    new-array v6, v3, [J

    new-array v3, v3, [Z

    const/4 v7, 0x0

    :goto_20
    array-length v11, v1

    if-ge v7, v11, :cond_26

    aget-object v11, v1, v7

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzall;->zzb:Lcom/google/android/gms/internal/ads/zzalv;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzalv;->zzb:I

    new-array v11, v11, [J

    aput-object v11, v4, v7

    aget-object v11, v1, v7

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzall;->zzb:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzalv;->zzf:[J

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    aput-wide v13, v6, v7

    const/4 v11, 0x1

    add-int/2addr v7, v11

    goto :goto_20

    :cond_26
    const/4 v12, 0x0

    move v7, v12

    move-wide/from16 v15, v18

    :goto_21
    array-length v11, v1

    if-ge v7, v11, :cond_2a

    const-wide v13, 0x7fffffffffffffffL

    move v11, v2

    move-wide/from16 v17, v13

    move v13, v12

    :goto_22
    array-length v14, v1

    if-ge v13, v14, :cond_28

    aget-boolean v14, v3, v13

    if-nez v14, :cond_27

    aget-wide v19, v6, v13

    cmp-long v14, v19, v17

    if-gtz v14, :cond_27

    move v11, v13

    move-wide/from16 v17, v19

    :cond_27
    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_22

    :cond_28
    const/4 v14, 0x1

    aget v13, v5, v11

    aget-object v2, v4, v11

    aput-wide v15, v2, v13

    aget-object v12, v1, v11

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzall;->zzb:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v14, v12, Lcom/google/android/gms/internal/ads/zzalv;->zzd:[I

    aget v14, v14, v13

    move/from16 v37, v8

    move-wide/from16 v17, v9

    int-to-long v8, v14

    add-long/2addr v15, v8

    const/4 v8, 0x1

    add-int/2addr v13, v8

    aput v13, v5, v11

    array-length v2, v2

    if-ge v13, v2, :cond_29

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzalv;->zzf:[J

    aget-wide v9, v2, v13

    aput-wide v9, v6, v11

    :goto_23
    move-wide/from16 v9, v17

    move/from16 v8, v37

    const/4 v2, -0x1

    const/4 v12, 0x0

    goto :goto_21

    :cond_29
    aput-boolean v8, v3, v11

    add-int/2addr v7, v8

    goto :goto_23

    :cond_2a
    move/from16 v37, v8

    move-wide/from16 v17, v9

    const/4 v8, 0x1

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzC:[[J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzalk;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzB:[Lcom/google/android/gms/internal/ads/zzall;

    move/from16 v4, v37

    invoke-direct {v2, v9, v10, v3, v4}, Lcom/google/android/gms/internal/ads/zzalk;-><init>(J[Lcom/google/android/gms/internal/ads/zzall;I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    :goto_24
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzw:Z

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    :cond_2b
    :goto_25
    move v2, v8

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2c
    move v8, v2

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfw;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzfw;->zzb(Lcom/google/android/gms/internal/ads/zzfw;)V

    goto :goto_25

    :cond_2d
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalm;->zzj()V

    :cond_2e
    return-void
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzalv;J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalv;->zza(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalv;->zzb(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static zzm(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzalr;->zzb(Lcom/google/android/gms/internal/ads/zzafg;Z)Lcom/google/android/gms/internal/ads/zzagn;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzk:Lcom/google/android/gms/internal/ads/zzgvm;

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final synthetic zzb()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzk:Lcom/google/android/gms/internal/ads/zzgvm;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzb:Lcom/google/android/gms/internal/ads/zzamt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamw;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzamt;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v6, 0x1

    :goto_0
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    const v8, 0x66747970

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    const/16 v14, 0x8

    if-eqz v7, :cond_2d

    const-wide/32 v15, 0x40000

    if-eq v7, v6, :cond_21

    if-eq v7, v12, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzi:Lcom/google/android/gms/internal/ads/zzalq;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzj:Ljava/util/List;

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;Ljava/util/List;)I

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalm;->zzj()V

    :cond_0
    return v6

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v7

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzq:I

    if-ne v14, v13, :cond_b

    const-wide v17, 0x7fffffffffffffffL

    move/from16 v21, v6

    move/from16 v28, v21

    move/from16 v26, v13

    move/from16 v27, v26

    move-wide/from16 v19, v17

    move-wide/from16 v22, v19

    move-wide/from16 v24, v22

    const/4 v14, 0x0

    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzB:[Lcom/google/android/gms/internal/ads/zzall;

    array-length v9, v3

    if-ge v14, v9, :cond_9

    aget-object v3, v3, v14

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzall;->zze:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzall;->zzb:Lcom/google/android/gms/internal/ads/zzalv;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzalv;->zzb:I

    if-ne v9, v5, :cond_2

    goto :goto_5

    :cond_2
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalv;->zzc:[J

    aget-wide v29, v3, v9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzC:[[J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v3, v14

    aget-wide v31, v3, v9

    sub-long v29, v29, v7

    cmp-long v3, v29, v10

    if-ltz v3, :cond_3

    cmp-long v3, v29, v15

    if-ltz v3, :cond_4

    :cond_3
    move v3, v6

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    if-nez v28, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move/from16 v5, v28

    :goto_3
    if-ne v3, v5, :cond_7

    cmp-long v9, v29, v24

    if-gez v9, :cond_7

    :cond_6
    move/from16 v28, v3

    move/from16 v27, v14

    move-wide/from16 v24, v29

    move-wide/from16 v22, v31

    goto :goto_4

    :cond_7
    move/from16 v28, v5

    :goto_4
    cmp-long v5, v31, v19

    if-gez v5, :cond_8

    move/from16 v21, v3

    move/from16 v26, v14

    move-wide/from16 v19, v31

    :cond_8
    :goto_5
    add-int/2addr v14, v6

    goto :goto_1

    :cond_9
    cmp-long v3, v19, v17

    if-eqz v3, :cond_a

    if-eqz v21, :cond_a

    const-wide/32 v17, 0xa00000

    add-long v19, v19, v17

    cmp-long v3, v22, v19

    if-ltz v3, :cond_a

    move/from16 v14, v26

    goto :goto_6

    :cond_a
    move/from16 v14, v27

    :goto_6
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzq:I

    if-ne v14, v13, :cond_b

    move v4, v13

    goto/16 :goto_12

    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzB:[Lcom/google/android/gms/internal/ads/zzall;

    aget-object v3, v3, v14

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzall;->zzc:Lcom/google/android/gms/internal/ads/zzags;

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzall;->zze:I

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzall;->zzb:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzc:[J

    aget-wide v17, v13, v9

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzz:J

    add-long v12, v17, v12

    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzd:[I

    aget v17, v4, v9

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzall;->zzd:Lcom/google/android/gms/internal/ads/zzagt;

    sub-long v7, v12, v7

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    move-wide/from16 v22, v12

    int-to-long v12, v15

    add-long/2addr v7, v12

    cmp-long v10, v7, v10

    if-ltz v10, :cond_c

    const-wide/32 v10, 0x40000

    cmp-long v10, v7, v10

    if-ltz v10, :cond_d

    :cond_c
    move-wide/from16 v3, v22

    goto/16 :goto_11

    :cond_d
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzall;->zza:Lcom/google/android/gms/internal/ads/zzals;

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzals;->zzh:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const-wide/16 v10, 0x8

    add-long/2addr v7, v10

    add-int/lit8 v17, v17, -0x8

    :cond_e
    move/from16 v10, v17

    long-to-int v7, v7

    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzals;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v11, "video/avc"

    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    and-int/lit8 v11, v11, 0x20

    if-nez v11, :cond_10

    :cond_f
    :goto_7
    const/4 v11, 0x1

    goto :goto_8

    :cond_10
    const/4 v11, 0x1

    goto :goto_9

    :cond_11
    const-string v11, "video/hevc"

    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_10

    goto :goto_7

    :goto_8
    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzu:Z

    :goto_9
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzals;->zzk:I

    if-eqz v2, :cond_17

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zze:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v12

    const/4 v13, 0x0

    aput-byte v13, v12, v13

    aput-byte v13, v12, v11

    const/4 v11, 0x2

    aput-byte v13, v12, v11

    const/4 v11, 0x4

    rsub-int/lit8 v13, v2, 0x4

    add-int/2addr v10, v13

    :goto_a
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    if-ge v11, v10, :cond_1d

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    if-nez v11, :cond_16

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzu:Z

    if-nez v11, :cond_13

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgo;->zzc(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v11

    add-int/2addr v11, v2

    aget v15, v4, v9

    move-object/from16 v16, v4

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    sub-int/2addr v15, v4

    if-gt v11, v15, :cond_12

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgo;->zzc(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v4

    add-int v11, v2, v4

    goto :goto_c

    :cond_12
    :goto_b
    move v11, v2

    const/4 v4, 0x0

    goto :goto_c

    :cond_13
    move-object/from16 v16, v4

    goto :goto_b

    :goto_c
    invoke-interface {v1, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    add-int/2addr v15, v11

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v15

    if-ltz v15, :cond_15

    sub-int/2addr v15, v4

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    const/4 v11, 0x4

    invoke-interface {v5, v15, v11}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    add-int/2addr v15, v11

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    if-lez v4, :cond_14

    invoke-interface {v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    add-int/2addr v15, v4

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    invoke-static {v12, v11, v4, v7}, Lcom/google/android/gms/internal/ads/zzgo;->zzd([BIILcom/google/android/gms/internal/ads/zzv;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzu:Z

    :cond_14
    :goto_d
    move-object/from16 v4, v16

    goto :goto_a

    :cond_15
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_16
    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-interface {v5, v1, v11, v4}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v11

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    sub-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    goto :goto_d

    :cond_17
    const-string v2, "audio/ac4"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzf:Lcom/google/android/gms/internal/ads/zzes;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzaej;->zzc(ILcom/google/android/gms/internal/ads/zzes;)V

    const/4 v4, 0x7

    invoke-interface {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    goto :goto_e

    :cond_18
    const/4 v4, 0x7

    :goto_e
    add-int/2addr v10, v4

    goto :goto_f

    :cond_19
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzall;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v2, :cond_1b

    const-string v2, "audio/mpeg"

    invoke-static {v8, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzall;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzf:Lcom/google/android/gms/internal/ads/zzes;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v1, v8, v11, v7}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzagc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzagc;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzagc;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzagc;->zzb:Ljava/lang/String;

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v2

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzagc;->zzb:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    :cond_1a
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/zzall;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_f

    :cond_1b
    if-eqz v6, :cond_1c

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzagt;->zzb(Lcom/google/android/gms/internal/ads/zzafg;)V

    :cond_1c
    :goto_f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    if-ge v2, v10, :cond_1d

    sub-int v2, v10, v2

    const/4 v4, 0x0

    invoke-interface {v5, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    goto :goto_f

    :cond_1d
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzf:[J

    aget-wide v7, v1, v9

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzg:[I

    aget v1, v1, v9

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzu:Z

    if-nez v2, :cond_1e

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_1e
    if-eqz v6, :cond_1f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    move-wide/from16 v19, v7

    move/from16 v21, v1

    move/from16 v22, v10

    invoke-virtual/range {v17 .. v24}, Lcom/google/android/gms/internal/ads/zzagt;->zzc(Lcom/google/android/gms/internal/ads/zzags;JIIILcom/google/android/gms/internal/ads/zzagr;)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzalv;->zzb:I

    if-ne v9, v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v6, v5, v1}, Lcom/google/android/gms/internal/ads/zzagt;->zzd(Lcom/google/android/gms/internal/ads/zzags;Lcom/google/android/gms/internal/ads/zzagr;)V

    goto :goto_10

    :cond_1f
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v7

    move/from16 v20, v1

    move/from16 v21, v10

    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    :cond_20
    :goto_10
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzall;->zze:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzall;->zze:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzq:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzu:Z

    const/4 v4, 0x0

    goto :goto_12

    :goto_11
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    const/4 v4, 0x1

    :goto_12
    return v4

    :cond_21
    const/4 v4, 0x7

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    int-to-long v9, v3

    sub-long/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v9

    add-long/2addr v9, v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzp:Lcom/google/android/gms/internal/ads/zzes;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    long-to-int v5, v5

    invoke-interface {v1, v7, v11, v5}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    if-ne v5, v8, :cond_26

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzv:Z

    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalm;->zzm(I)I

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_13

    :cond_22
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v5

    if-lez v5, :cond_24

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalm;->zzm(I)I

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_13

    :cond_24
    const/4 v5, 0x0

    :goto_13
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzD:I

    :cond_25
    :goto_14
    const/4 v3, 0x0

    goto :goto_15

    :cond_26
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfw;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfx;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    invoke-direct {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzfx;-><init>(ILcom/google/android/gms/internal/ads/zzes;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfw;->zza(Lcom/google/android/gms/internal/ads/zzfx;)V

    goto :goto_14

    :cond_27
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzv:Z

    if-nez v3, :cond_28

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    const v7, 0x6d646174

    if-ne v3, v7, :cond_28

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzD:I

    :cond_28
    const-wide/32 v7, 0x40000

    cmp-long v3, v5, v7

    if-gez v3, :cond_29

    long-to-int v3, v5

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    goto :goto_14

    :cond_29
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    const/4 v3, 0x1

    :goto_15
    invoke-direct {v0, v9, v10}, Lcom/google/android/gms/internal/ads/zzalm;->zzk(J)V

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzw:Z

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzy:Z

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzx:J

    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzw:Z

    goto :goto_16

    :cond_2a
    const/4 v5, 0x1

    if-nez v3, :cond_2b

    goto :goto_17

    :cond_2b
    :goto_16
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2c

    return v5

    :cond_2c
    :goto_17
    move v6, v5

    goto/16 :goto_0

    :cond_2d
    move v5, v6

    move v6, v12

    const/4 v4, 0x7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    if-nez v3, :cond_31

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzg:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v14, v5}, Lcom/google/android/gms/internal/ads/zzafg;->zzb([BIIZ)Z

    move-result v7

    if-nez v7, :cond_30

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzD:I

    if-ne v1, v6, :cond_2f

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzc:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    const/4 v5, 0x4

    invoke-interface {v1, v9, v5}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzE:Lcom/google/android/gms/internal/ads/zzaig;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_2e

    const/4 v9, 0x0

    goto :goto_18

    :cond_2e
    new-instance v5, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    move-object v9, v5

    :goto_18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzA:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagi;

    invoke-direct {v2, v3, v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    :cond_2f
    const/4 v1, -0x1

    return v1

    :cond_30
    const/4 v5, 0x4

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    goto :goto_19

    :cond_31
    const/4 v5, 0x4

    :goto_19
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    const-wide/16 v12, 0x1

    cmp-long v3, v6, v12

    if-nez v3, :cond_32

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzg:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    invoke-interface {v1, v6, v14, v14}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    add-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzJ()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    goto :goto_1b

    :cond_32
    cmp-long v3, v6, v10

    if-nez v3, :cond_35

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v6

    const-wide/16 v9, -0x1

    cmp-long v3, v6, v9

    if-nez v3, :cond_34

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfw;

    if-eqz v3, :cond_33

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzfw;->zza:J

    goto :goto_1a

    :cond_33
    move-wide v6, v9

    :cond_34
    :goto_1a
    cmp-long v3, v6, v9

    if-eqz v3, :cond_35

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v9

    sub-long/2addr v6, v9

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    int-to-long v9, v3

    add-long/2addr v6, v9

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    :cond_35
    :goto_1b
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    int-to-long v9, v3

    cmp-long v6, v6, v9

    if-gez v6, :cond_37

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    const v7, 0x66726565

    if-ne v6, v7, :cond_36

    if-ne v3, v14, :cond_36

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    move v3, v14

    goto :goto_1c

    :cond_36
    const-string v1, "Atom size less than header length (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_37
    :goto_1c
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    const v7, 0x6d6f6f76

    const v9, 0x6d657461

    if-eq v6, v7, :cond_38

    const v7, 0x7472616b

    if-eq v6, v7, :cond_38

    const v7, 0x6d646961

    if-eq v6, v7, :cond_38

    const v7, 0x6d696e66

    if-eq v6, v7, :cond_38

    const v7, 0x7374626c

    if-eq v6, v7, :cond_38

    const v7, 0x65647473

    if-eq v6, v7, :cond_38

    if-eq v6, v9, :cond_38

    const v7, 0x61787465

    if-ne v6, v7, :cond_39

    :cond_38
    const/4 v3, 0x1

    goto/16 :goto_21

    :cond_39
    const v7, 0x6d646864

    if-eq v6, v7, :cond_3c

    const v7, 0x6d766864

    if-eq v6, v7, :cond_3c

    const v7, 0x68646c72    # 4.3148E24f

    if-eq v6, v7, :cond_3c

    const v7, 0x73747364

    if-eq v6, v7, :cond_3c

    const v7, 0x73747473

    if-eq v6, v7, :cond_3c

    const v7, 0x73747373

    if-eq v6, v7, :cond_3c

    const v7, 0x63747473

    if-eq v6, v7, :cond_3c

    const v7, 0x656c7374

    if-eq v6, v7, :cond_3c

    const v7, 0x73747363

    if-eq v6, v7, :cond_3c

    const v7, 0x7374737a

    if-eq v6, v7, :cond_3c

    const v7, 0x73747a32

    if-eq v6, v7, :cond_3c

    const v7, 0x7374636f

    if-eq v6, v7, :cond_3c

    const v7, 0x636f3634

    if-eq v6, v7, :cond_3c

    const v7, 0x746b6864

    if-eq v6, v7, :cond_3c

    if-eq v6, v8, :cond_3c

    const v7, 0x75647461

    if-eq v6, v7, :cond_3c

    const v7, 0x6b657973

    if-eq v6, v7, :cond_3c

    const v7, 0x696c7374

    if-ne v6, v7, :cond_3a

    goto :goto_1e

    :cond_3a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v6

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    int-to-long v8, v3

    sub-long v13, v6, v8

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    const v6, 0x6d707664

    if-ne v3, v6, :cond_3b

    add-long v17, v13, v8

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaig;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    sub-long v19, v6, v8

    const-wide/16 v11, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    move-object v10, v3

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzE:Lcom/google/android/gms/internal/ads/zzaig;

    :cond_3b
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzp:Lcom/google/android/gms/internal/ads/zzes;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    :goto_1d
    const/4 v10, 0x0

    goto/16 :goto_23

    :cond_3c
    :goto_1e
    if-ne v3, v14, :cond_3d

    const/4 v3, 0x1

    goto :goto_1f

    :cond_3d
    const/4 v3, 0x0

    :goto_1f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_20

    :cond_3e
    const/4 v3, 0x0

    :goto_20
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzes;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    long-to-int v6, v6

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzg:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzp:Lcom/google/android/gms/internal/ads/zzes;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    goto :goto_1d

    :goto_21
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v6

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    add-long/2addr v6, v10

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    if-ne v8, v9, :cond_3f

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzf:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10, v14}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaku;->zzf(Lcom/google/android/gms/internal/ads/zzes;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v8

    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    goto :goto_22

    :cond_3f
    const/4 v10, 0x0

    :goto_22
    sub-long/2addr v6, v12

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzh:Ljava/util/ArrayDeque;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfw;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzm:I

    invoke-direct {v9, v11, v6, v7}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzn:J

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    int-to-long v11, v11

    cmp-long v8, v8, v11

    if-nez v8, :cond_40

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzalm;->zzk(J)V

    goto :goto_23

    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalm;->zzj()V

    :goto_23
    move v6, v3

    goto/16 :goto_0
.end method

.method public final zze(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzo:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzt:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzu:Z

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzl:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzalm;->zzj()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzi:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalq;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalm;->zzB:[Lcom/google/android/gms/internal/ads/zzall;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzall;->zzb:Lcom/google/android/gms/internal/ads/zzalv;

    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzalv;->zza(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzalv;->zzb(J)I

    move-result v4

    :cond_2
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzall;->zze:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzall;->zzd:Lcom/google/android/gms/internal/ads/zzagt;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagt;->zza()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method
