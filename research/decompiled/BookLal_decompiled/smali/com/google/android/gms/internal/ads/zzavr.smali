.class public final Lcom/google/android/gms/internal/ads/zzavr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzaum;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzavn;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzavk;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzavf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaum;Lcom/google/android/gms/internal/ads/zzavn;Lcom/google/android/gms/internal/ads/zzavf;)V
    .locals 10

    const v0, 0x1b1493c2

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavr;->zza:Lcom/google/android/gms/internal/ads/zzaum;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavr;->zzb:Lcom/google/android/gms/internal/ads/zzavn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavr;->zzd:Lcom/google/android/gms/internal/ads/zzavf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzavk;

    xor-int p2, v2, v1

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavr;->zzc:Lcom/google/android/gms/internal/ads/zzavk;

    return-void

    nop

    :array_0
    .array-data 4
        0x14802f5d
        0x11f00713
        0x1082153a
        0x41781205
        0x520c34a4
        0x5c1eaca7
        0x102809e2
        0x331c4250
        0x1b1493c2
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/util/Optional;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavr;->zzc:Lcom/google/android/gms/internal/ads/zzavk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzavk;->zza:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavh;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzavh;->zza:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzavh;->zzb:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzavh;->zzc:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavr;->zzb:Lcom/google/android/gms/internal/ads/zzavn;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    int-to-long v7, v7

    cmp-long v7, v7, v3

    if-gez v7, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaug;->zzG:Lcom/google/android/gms/internal/ads/zzaug;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzavr;->zzd:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzavf;->zza(J)V

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzavn;->zzb:I

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavn;->zzc()Lcom/google/android/gms/internal/ads/zzavw;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavj; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzavl; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzave; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzavj; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzavl; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavd; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzave; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "CEiv6BFfPnitUE+D"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaug;->zzG:Lcom/google/android/gms/internal/ads/zzaug;

    :goto_2
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :catch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaug;->zzw:Lcom/google/android/gms/internal/ads/zzaug;

    goto :goto_2
.end method
