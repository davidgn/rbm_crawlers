.class public Lcom/google/android/gms/internal/ads/zzaer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzael;

.field protected final zzb:Lcom/google/android/gms/internal/ads/zzaeq;

.field protected zzc:Lcom/google/android/gms/internal/ads/zzaen;

.field private final zzd:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaeo;Lcom/google/android/gms/internal/ads/zzaeq;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaer;->zzb:Lcom/google/android/gms/internal/ads/zzaeq;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaer;->zzd:I

    new-instance v15, Lcom/google/android/gms/internal/ads/zzael;

    const-wide/16 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzael;-><init>(Lcom/google/android/gms/internal/ads/zzaeo;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzaer;->zza:Lcom/google/android/gms/internal/ads/zzael;

    return-void
.end method

.method public static final zzf(Lcom/google/android/gms/internal/ads/zzafg;JLcom/google/android/gms/internal/ads/zzagg;)I
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    const/4 p0, 0x1

    return p0
.end method

.method public static final zzg(Lcom/google/android/gms/internal/ads/zzafg;J)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzagj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaer;->zza:Lcom/google/android/gms/internal/ads/zzael;

    return-object v0
.end method

.method public final zzb(J)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaer;->zzc:Lcom/google/android/gms/internal/ads/zzaen;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaen;->zze()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaer;->zza:Lcom/google/android/gms/internal/ads/zzael;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaen;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzael;->zzd(J)J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzael;->zze()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzael;->zzf()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzael;->zzg()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzael;->zzh()J

    move-result-wide v15

    const-wide/16 v6, 0x0

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v17, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzaen;-><init>(JJJJJJJ)V

    move-object/from16 v1, v17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaer;->zzc:Lcom/google/android/gms/internal/ads/zzaen;

    return-void
.end method

.method public final zzc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzc:Lcom/google/android/gms/internal/ads/zzaen;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 9

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzc:Lcom/google/android/gms/internal/ads/zzaen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaen;->zzb()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaen;->zzc()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaen;->zzh()J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzd:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    invoke-virtual {p0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaer;->zze(ZJ)V

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzaer;->zzf(Lcom/google/android/gms/internal/ads/zzafg;JLcom/google/android/gms/internal/ads/zzagg;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzaer;->zzg(Lcom/google/android/gms/internal/ads/zzafg;J)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/zzaer;->zzf(Lcom/google/android/gms/internal/ads/zzafg;JLcom/google/android/gms/internal/ads/zzagg;)I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzb:Lcom/google/android/gms/internal/ads/zzaeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaen;->zzd()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaeq;->zza(Lcom/google/android/gms/internal/ads/zzafg;J)Lcom/google/android/gms/internal/ads/zzaep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zzd()I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_4

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zzf()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaer;->zzg(Lcom/google/android/gms/internal/ads/zzafg;J)Z

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zzf()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaer;->zze(ZJ)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zzf()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzaer;->zzf(Lcom/google/android/gms/internal/ads/zzafg;JLcom/google/android/gms/internal/ads/zzagg;)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zze()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaen;->zzg(JJ)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zze()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaep;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaen;->zzf(JJ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaer;->zze(ZJ)V

    invoke-static {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/zzaer;->zzf(Lcom/google/android/gms/internal/ads/zzafg;JLcom/google/android/gms/internal/ads/zzagg;)I

    move-result p1

    return p1
.end method

.method public final zze(ZJ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzc:Lcom/google/android/gms/internal/ads/zzaen;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzb:Lcom/google/android/gms/internal/ads/zzaeq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaeq;->zzb()V

    return-void
.end method
