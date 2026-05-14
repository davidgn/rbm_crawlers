.class public final Lcom/google/android/gms/internal/ads/zzaoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaoz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzer;

.field private zze:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzf:J

.field private zzg:J

.field private zzh:Z

.field private zzi:Z


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
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoz;

    const/4 v0, 0x0

    const-string v1, "audio/mp4a-latm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-direct {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zza:Lcom/google/android/gms/internal/ads/zzaoz;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzg:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/16 v0, 0xa

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object p1

    .line 6
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaew;

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v0, v5, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzx()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_6

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaew;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzg:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzg:J

    :cond_0
    move v4, v0

    move v6, v4

    move v5, v1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v0, v8, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaoz;->zzf(I)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    :goto_1
    move v4, v0

    move v6, v4

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v8, 0x4

    if-lt v4, v8, :cond_4

    const/16 v9, 0xbc

    if-gt v6, v9, :cond_3

    goto :goto_2

    :cond_3
    return v7

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    invoke-virtual {v3, v7, v0, v8, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzh([BIIZ)Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v7, -0x6

    invoke-virtual {v3, v8, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    add-int/2addr v6, v7

    :goto_3
    sub-int v7, v5, v1

    const/16 v8, 0x2000

    if-lt v7, v8, :cond_1

    return v0

    :cond_6
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzG()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzaew;->zzj(IZ)Z

    goto/16 :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zze:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqr;-><init>(III)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zza:Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaoz;->zzb(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzaqr;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zze:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v0

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zza([BII)I

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzi:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zze:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagi;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzi:Z

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzh:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zza:Lcom/google/android/gms/internal/ads/zzaoz;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzf:J

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzaoz;->zzc(JI)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzh:Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zza:Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaoz;->zzd(Lcom/google/android/gms/internal/ads/zzes;)V

    return v2
.end method

.method public final zze(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zza:Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaoz;->zza()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaoy;->zzf:J

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method
