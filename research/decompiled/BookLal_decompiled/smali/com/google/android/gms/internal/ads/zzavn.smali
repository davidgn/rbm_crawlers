.class public final Lcom/google/android/gms/internal/ads/zzavn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/ArrayList;

.field public zzb:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zza:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(J)I
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const v3, 0x5072367

    const/16 v4, 0x9

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x1

    aget v9, v5, v8

    const/4 v10, 0x2

    aget v11, v5, v10

    const/4 v12, 0x3

    aget v13, v5, v12

    const/4 v14, 0x4

    aget v15, v5, v14

    const/16 v16, 0x5

    aget v14, v5, v16

    const/16 v18, 0x6

    aget v12, v5, v18

    const/16 v20, 0x7

    aget v5, v5, v20

    not-int v10, v7

    and-int/2addr v9, v10

    or-int/2addr v9, v11

    and-int/2addr v7, v13

    or-int/2addr v7, v15

    invoke-static {v9, v7, v14, v12}, Lcom/google/android/gms/ads/internal/util/client/a;->r(IIII)I

    move-result v7

    rem-int/2addr v5, v3

    const-wide/32 v9, 0x1a27709e

    new-array v3, v4, [J

    fill-array-data v3, :array_1

    aget-wide v11, v3, v6

    aget-wide v13, v3, v8

    const/4 v4, 0x2

    aget-wide v21, v3, v4

    const/4 v4, 0x3

    aget-wide v23, v3, v4

    const/4 v4, 0x4

    aget-wide v25, v3, v4

    aget-wide v15, v3, v16

    aget-wide v17, v3, v18

    aget-wide v19, v3, v20

    not-long v3, v11

    and-long/2addr v3, v13

    or-long v3, v3, v21

    and-long v11, v11, v23

    or-long v11, v11, v25

    add-long/2addr v3, v11

    sub-long/2addr v3, v15

    add-long v3, v3, v17

    rem-long v19, v19, v9

    const-wide/16 v8, 0x0

    cmp-long v6, v1, v8

    if-ltz v6, :cond_0

    xor-int v3, v7, v5

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    add-int/2addr v4, v3

    int-to-long v3, v4

    sub-long/2addr v3, v1

    goto :goto_0

    :cond_0
    xor-long v3, v3, v19

    neg-long v1, v1

    add-long/2addr v3, v1

    :goto_0
    cmp-long v1, v3, v8

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    int-to-long v1, v1

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    long-to-int v1, v3

    return v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzavl;-><init>()V

    throw v1

    nop

    :array_0
    .array-data 4
        0x77465f01
        0x7f00424f
        0x863b9a1
        -0x8eebdb2
        -0x7766f770
        0xc103e9e
        0x164585d
        0x440badfc
        0x5072367
    .end array-data

    :array_1
    .array-data 8
        0x100f59dc
        0x76db3a86
        0x96cdb2c
        -0x96cdf7d
        -0x76bfee8f
        0x212a72d4
        0x885e1b
        0x7fffca11
        0x1a27709e
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavw;)V
    .locals 11

    const v0, 0x37e203ab

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x3

    aget v6, v1, v6

    const/4 v7, 0x4

    aget v7, v1, v7

    const/4 v8, 0x5

    aget v8, v1, v8

    const/4 v9, 0x6

    aget v9, v1, v9

    const/4 v10, 0x7

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v4, v10

    or-int/2addr v4, v5

    and-int/2addr v2, v6

    or-int/2addr v2, v7

    invoke-static {v4, v2, v8, v9}, Lcom/google/android/gms/ads/internal/util/client/a;->r(IIII)I

    move-result v2

    rem-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    xor-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zza:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavm;-><init>()V

    throw p1

    :array_0
    .array-data 4
        0x1f3da4d5
        0x2c291419
        0x186028c7
        0x250fdc38
        0x176c9e5
        0x47f6d07d
        0x11bfcfe4
        0x3f8b0cbf
        0x37e203ab
    .end array-data
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzavw;
    .locals 10

    const v0, 0x1b640c94

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v1, v1, v9

    not-int v9, v2

    and-int/2addr v3, v9

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lcom/google/android/gms/ads/internal/util/client/a;->r(IIII)I

    move-result v2

    rem-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    if-lez v0, :cond_0

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavn;->zza:Ljava/util/ArrayList;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavw;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavl;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x56e5e35
        0x5700e868
        0x22f18533
        -0xaea95b7
        -0x5d6aec7b
        0x36cbcad2
        0x8beda84
        0x2ee9fbe1
        0x1b640c94
    .end array-data
.end method

.method public final zzd(J)Lcom/google/android/gms/internal/ads/zzavw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zza:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavn;->zza(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavw;

    return-object p1
.end method

.method public final zze(JLcom/google/android/gms/internal/ads/zzavw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavn;->zza:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavn;->zza(J)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
