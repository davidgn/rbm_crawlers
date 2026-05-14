.class final Lcom/google/android/gms/internal/ads/zzajq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaet;

.field private final zzb:Landroid/util/SparseArray;

.field private final zzc:J

.field private final zzd:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;JIJJ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Landroid/util/SparseArray;

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajq;->zzc:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajq;->zzd:I

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [I

    new-array v6, v4, [J

    new-array v7, v4, [J

    new-array v8, v4, [J

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v4, :cond_1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzajp;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzajp;->zza()J

    move-result-wide v12

    aput-wide v12, v8, v10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzajp;->zzb()J

    move-result-wide v11

    aput-wide v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v4, -0x1

    if-ge v9, v1, :cond_2

    add-int/lit8 v1, v9, 0x1

    aget-wide v10, v6, v1

    aget-wide v12, v6, v9

    sub-long/2addr v10, v12

    long-to-int v10, v10

    aput v10, v5, v9

    aget-wide v10, v8, v1

    aget-wide v12, v8, v9

    sub-long/2addr v10, v12

    aput-wide v10, v7, v9

    move v9, v1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-lez v4, :cond_3

    aget-wide v9, v8, v4

    cmp-long v9, v9, v2

    if-ltz v9, :cond_3

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    add-long v9, p5, p7

    aget-wide v11, v6, v4

    sub-long/2addr v9, v11

    long-to-int v9, v9

    aput v9, v5, v4

    aget-wide v9, v8, v4

    sub-long/2addr v2, v9

    aput-wide v2, v7, v4

    if-ge v4, v1, :cond_4

    const-string v1, "MatroskaExtractor"

    const-string v2, "Discarding trailing cue points with timestamps greater than total duration."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaet;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaet;-><init>([I[J[J[J)V

    :cond_5
    :goto_3
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajq;->zza:Lcom/google/android/gms/internal/ads/zzaet;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzc:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzd:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzagh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajq;->zza:Lcom/google/android/gms/internal/ads/zzaet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaet;->zzc(J)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzagh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzagk;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagk;)V

    return-object p1
.end method
