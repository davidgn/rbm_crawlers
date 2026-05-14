.class final Lcom/google/android/gms/internal/ads/zzaho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafs;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzafm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzafs;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Lcom/google/android/gms/internal/ads/zzafs;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzafm;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzafg;)J
    .locals 11

    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v2

    const-wide/16 v4, -0x6

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Lcom/google/android/gms/internal/ads/zzafs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzafm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v6

    new-instance v3, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v8, 0x11

    invoke-direct {v3, v8}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzafg;->zzi([BII)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzo()C

    move-result v8

    if-eq v8, v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v0

    sub-long/2addr v6, v0

    long-to-int v0, v6

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzafg;->zzk(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v8

    const/16 v9, 0xf

    invoke-static {p1, v8, v10, v9}, Lcom/google/android/gms/internal/ads/zzafj;->zzb(Lcom/google/android/gms/internal/ads/zzafg;[BII)I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v6, v6

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzk(I)V

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzafs;ILcom/google/android/gms/internal/ads/zzafm;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzafg;->zzk(I)V

    goto :goto_0

    :cond_2
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzafg;->zzk(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Lcom/google/android/gms/internal/ads/zzafs;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzafs;->zzj:J

    return-wide v0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:Lcom/google/android/gms/internal/ads/zzafm;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:J

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;J)Lcom/google/android/gms/internal/ads/zzaep;
    .locals 11

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaho;->zzc(Lcom/google/android/gms/internal/ads/zzafg;)J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Lcom/google/android/gms/internal/ads/zzafs;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzafs;->zzc:I

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzk(I)V

    cmp-long v6, v2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaho;->zzc(Lcom/google/android/gms/internal/ads/zzafg;)J

    move-result-wide v7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzm()J

    move-result-wide v9

    if-gtz v6, :cond_1

    cmp-long p1, v7, p2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzaep;->zzc(J)Lcom/google/android/gms/internal/ads/zzaep;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    cmp-long p1, v7, p2

    if-gtz p1, :cond_2

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaep;->zzb(JJ)Lcom/google/android/gms/internal/ads/zzaep;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaep;->zza(JJ)Lcom/google/android/gms/internal/ads/zzaep;

    move-result-object p1

    return-object p1
.end method
