.class public final Lcom/google/android/gms/internal/ads/zzaqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzd:Landroid/util/SparseIntArray;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaqq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzamt;

.field private final zzg:Landroid/util/SparseArray;

.field private final zzh:Landroid/util/SparseBooleanArray;

.field private final zzi:Landroid/util/SparseBooleanArray;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzaqj;

.field private zzk:Lcom/google/android/gms/internal/ads/zzaqi;

.field private zzl:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:I

.field private zzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzamt;->zza:Lcom/google/android/gms/internal/ads/zzamt;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfh;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(J)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzapa;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzapa;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaqn;-><init>(IILcom/google/android/gms/internal/ads/zzamt;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzaqq;I)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/ads/zzamt;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzaqq;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zze:Lcom/google/android/gms/internal/ads/zzaqq;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzf:Lcom/google/android/gms/internal/ads/zzamt;

    .line 3
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzes;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzh:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzi:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    .line 7
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzg:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzd:Landroid/util/SparseIntArray;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzaqj;

    const p6, 0x1b8a0

    .line 9
    invoke-direct {p4, p6}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzj:Lcom/google/android/gms/internal/ads/zzaqj;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzafi;->zza:Lcom/google/android/gms/internal/ads/zzafi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzl:Lcom/google/android/gms/internal/ads/zzafi;

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzr:I

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 11
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 12
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzaqq;->zza()Landroid/util/SparseArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzg:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p6

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqs;

    invoke-virtual {p5, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzg:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqe;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzaqk;

    .line 15
    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>(Lcom/google/android/gms/internal/ads/zzaqn;)V

    invoke-direct {p2, p4}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>(Lcom/google/android/gms/internal/ads/zzaqd;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaew;

    const/16 v1, 0x3ac

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    move v1, v2

    :goto_0
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_2

    move v3, v2

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v1

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaew;->zze(IZ)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zza:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzf:Lcom/google/android/gms/internal/ads/zzamt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamw;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzamt;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzl:Lcom/google/android/gms/internal/ads/zzafi;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v11

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzn:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_5

    cmp-long v3, v11, v13

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzj:Lcom/google/android/gms/internal/ads/zzaqj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqj;->zza()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzr:I

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaqj;->zzb(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;I)I

    move-result v1

    return v1

    :cond_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzo:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_2

    iput-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzo:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzj:Lcom/google/android/gms/internal/ads/zzaqj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqj;->zzc()J

    move-result-wide v4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v16

    if-eqz v4, :cond_1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaqi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqj;->zzd()Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqj;->zzc()J

    move-result-wide v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzr:I

    const v16, 0x1b8a0

    move/from16 v17, v3

    move-object v3, v9

    move-wide v13, v7

    move-wide v7, v11

    move-object v15, v9

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(Lcom/google/android/gms/internal/ads/zzfh;JJII)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzk:Lcom/google/android/gms/internal/ads/zzaqi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzl:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzaer;->zza()Lcom/google/android/gms/internal/ads/zzagj;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    goto :goto_0

    :cond_1
    move-wide v13, v7

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzl:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzagi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqj;->zzc()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    goto :goto_0

    :cond_2
    move-wide v13, v7

    :goto_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzp:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzp:Z

    invoke-virtual {v0, v13, v14, v13, v14}, Lcom/google/android/gms/internal/ads/zzaqn;->zze(JJ)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v4

    cmp-long v4, v4, v13

    if-eqz v4, :cond_4

    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v3, 0x0

    :cond_4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzk:Lcom/google/android/gms/internal/ads/zzaqi;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaer;->zzc()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaer;->zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I

    move-result v1

    return v1

    :cond_5
    move v3, v10

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v5

    rsub-int v5, v5, 0x24b8

    const/16 v6, 0xbc

    if-lt v5, v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v7

    invoke-static {v4, v7, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v5

    const/4 v7, -0x1

    if-ge v5, v6, :cond_c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v5

    rsub-int v8, v5, 0x24b8

    invoke-interface {v1, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzafg;->zza([BII)I

    move-result v8

    if-ne v8, v7, :cond_b

    move v10, v3

    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzg:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_a

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqs;

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzapw;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapw;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzapw;->zzd(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzapw;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    return v7

    :cond_b
    add-int/2addr v5, v8

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v5

    invoke-static {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzaqt;->zza([BII)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    add-int/lit16 v6, v5, 0xbc

    if-le v6, v4, :cond_d

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzq:I

    sub-int/2addr v5, v1

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzq:I

    goto :goto_3

    :cond_d
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzq:I

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v1

    if-le v6, v1, :cond_e

    return v3

    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    if-eqz v5, :cond_f

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    return v3

    :cond_f
    const/high16 v5, 0x400000

    and-int/2addr v5, v4

    if-eqz v5, :cond_10

    const/4 v10, 0x1

    goto :goto_4

    :cond_10
    move v10, v3

    :goto_4
    shr-int/lit8 v5, v4, 0x8

    and-int/lit8 v8, v4, 0x20

    and-int/lit8 v9, v4, 0x10

    and-int/lit16 v5, v5, 0x1fff

    if-eqz v9, :cond_11

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzg:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzaqs;

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_12

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    return v3

    :cond_12
    and-int/lit8 v4, v4, 0xf

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzd:Landroid/util/SparseIntArray;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v5, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    invoke-virtual {v13, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v14, v4, :cond_13

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    return v3

    :cond_13
    const/4 v13, 0x1

    add-int/2addr v14, v13

    and-int/lit8 v13, v14, 0xf

    if-eq v4, v13, :cond_14

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzaqs;->zzb()V

    :cond_14
    if-eqz v8, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_15

    const/4 v8, 0x2

    goto :goto_6

    :cond_15
    move v8, v3

    :goto_6
    or-int/2addr v10, v8

    add-int/2addr v4, v7

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    :cond_16
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzn:Z

    if-nez v4, :cond_17

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzi:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    invoke-interface {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzaqs;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    :cond_18
    if-nez v4, :cond_19

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzn:Z

    if-eqz v1, :cond_19

    const-wide/16 v4, -0x1

    cmp-long v1, v11, v4

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzp:Z

    :cond_19
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    return v3
.end method

.method public final zze(JJ)V
    .locals 9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-wide/16 v2, 0x0

    if-ge v1, p2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfh;->zzc()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfh;->zza()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    cmp-long v2, v5, p3

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v4, p3, p4}, Lcom/google/android/gms/internal/ads/zzfh;->zzd(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzk:Lcom/google/android/gms/internal/ads/zzaqi;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzaer;->zzb(J)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzd:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzg:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaqs;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaqs;->zzb()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzq:I

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final synthetic zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic zzi()Lcom/google/android/gms/internal/ads/zzaqq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zze:Lcom/google/android/gms/internal/ads/zzaqq;

    return-object v0
.end method

.method public final synthetic zzj()Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzg:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final synthetic zzk()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzh:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public final synthetic zzl()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzi:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public final synthetic zzm()Lcom/google/android/gms/internal/ads/zzafi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzl:Lcom/google/android/gms/internal/ads/zzafi;

    return-object v0
.end method

.method public final synthetic zzn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzm:I

    return v0
.end method

.method public final synthetic zzo(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzm:I

    return-void
.end method

.method public final synthetic zzp(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzn:Z

    return-void
.end method

.method public final synthetic zzq(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzr:I

    return-void
.end method
