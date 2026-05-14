.class public final Lcom/google/android/gms/internal/ads/zzvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwr;
.implements Lcom/google/android/gms/internal/ads/zzwq;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzwr;

.field zzb:J

.field private zzc:Lcom/google/android/gms/internal/ads/zzwq;

.field private zzd:[Lcom/google/android/gms/internal/ads/zzvw;

.field private zze:J

.field private zzf:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwr;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzvw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Lcom/google/android/gms/internal/ads/zzvw;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zze:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzf:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    return-void
.end method

.method private static zzq(JJJ)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public final zza(JJ)V
    .locals 0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwq;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(Lcom/google/android/gms/internal/ads/zzwq;J)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzc()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzyw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzd()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzaal;[Z[Lcom/google/android/gms/internal/ads/zzyl;[ZJ)J
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    array-length v1, v9

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzvw;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Lcom/google/android/gms/internal/ads/zzvw;

    new-array v10, v1, [Lcom/google/android/gms/internal/ads/zzyl;

    const/4 v11, 0x0

    move v1, v11

    :goto_0
    array-length v2, v9

    const/4 v12, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Lcom/google/android/gms/internal/ads/zzvw;

    aget-object v3, v9, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvw;

    aput-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzvw;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    :cond_0
    aput-object v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzwr;->zze([Lcom/google/android/gms/internal/ads/zzaal;[Z[Lcom/google/android/gms/internal/ads/zzyl;[ZJ)J

    move-result-wide v13

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    move-wide v2, v13

    move-wide/from16 v4, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(JJJ)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvx;->zzo()Z

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_4

    cmp-long v3, v13, p5

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v3, v13, v6

    if-eqz v3, :cond_4

    array-length v3, v8

    move v6, v11

    :goto_1
    if-ge v6, v3, :cond_4

    aget-object v7, v8, v6

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzaal;->zzc()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v7

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/zzas;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    move-wide v4, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzvx;->zze:J

    :goto_4
    array-length v3, v9

    if-ge v11, v3, :cond_8

    aget-object v3, v10, v11

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Lcom/google/android/gms/internal/ads/zzvw;

    aput-object v12, v3, v11

    goto :goto_5

    :cond_5
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Lcom/google/android/gms/internal/ads/zzvw;

    aget-object v5, v4, v11

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzvw;->zza:Lcom/google/android/gms/internal/ads/zzyl;

    if-eq v5, v3, :cond_7

    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/ads/zzvw;

    invoke-direct {v5, p0, v3}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzyl;)V

    aput-object v5, v4, v11

    :cond_7
    :goto_5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Lcom/google/android/gms/internal/ads/zzvw;

    aget-object v3, v3, v11

    aput-object v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    return-wide v1
.end method

.method public final zzf(JZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzf(JZ)V

    return-void
.end method

.method public final zzg(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzg(J)V

    return-void
.end method

.method public final zzh()J
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvx;->zzo()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvx;->zze:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zze:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzf:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvx;->zzh()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzh()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(JJJ)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzf:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzf:J

    return-wide v3
.end method

.method public final zzi()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzi()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final zzj(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zze:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzd:[Lcom/google/android/gms/internal/ads/zzvw;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvw;->zza()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzj(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvx;->zzq(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zznb;)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    iget-wide v2, p3, Lcom/google/android/gms/internal/ads/zznb;->zzd:J

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zznb;->zze:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sub-long/2addr v8, p1

    :goto_0
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zznb;

    invoke-direct {p3, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zznb;-><init>(JJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwr;->zzk(JLcom/google/android/gms/internal/ads/zznb;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    return-wide v0
.end method

.method public final zzl()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzl()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzlt;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzm(Lcom/google/android/gms/internal/ads/zzlt;)Z

    move-result p1

    return p1
.end method

.method public final zzn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzn()Z

    move-result v0

    return v0
.end method

.method public final zzo()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzwr;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwq;->zzp(Lcom/google/android/gms/internal/ads/zzwr;)V

    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzyn;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzym;->zzs(Lcom/google/android/gms/internal/ads/zzyn;)V

    return-void
.end method
