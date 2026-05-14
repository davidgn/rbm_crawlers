.class abstract Lcom/google/android/gms/internal/ads/zzamj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamd;

.field private zzb:Lcom/google/android/gms/internal/ads/zzags;

.field private zzc:Lcom/google/android/gms/internal/ads/zzafi;

.field private zzd:Lcom/google/android/gms/internal/ads/zzamf;

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzamh;

.field private zzk:J

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzj:Lcom/google/android/gms/internal/ads/zzamh;

    return-void
.end method


# virtual methods
.method public zza(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzj:Lcom/google/android/gms/internal/ads/zzamh;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzf:J

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamj;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzg:J

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/ads/zzes;)J
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/ads/zzes;JLcom/google/android/gms/internal/ads/zzamh;)Z
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzags;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzc:Lcom/google/android/gms/internal/ads/zzafi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Z)V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamd;->zza()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzl:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Z)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzamj;->zzi(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zze:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzamf;->zzb(J)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    :cond_1
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 21

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    const/4 v2, 0x3

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v12, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zza(Lcom/google/android/gms/internal/ads/zzafg;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-ltz v1, :cond_1

    move-object/from16 v1, p2

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    move v5, v6

    goto/16 :goto_5

    :cond_1
    cmp-long v1, v7, v3

    if-gez v1, :cond_2

    const-wide/16 v14, 0x2

    add-long/2addr v7, v14

    neg-long v7, v7

    invoke-virtual {v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzamj;->zzj(J)V

    :cond_2
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzl:Z

    if-nez v1, :cond_3

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzc()Lcom/google/android/gms/internal/ads/zzagj;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzc:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    move-result-wide v14

    invoke-interface {v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzags;->zzN(J)V

    iput-boolean v6, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzl:Z

    :cond_3
    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzk:J

    cmp-long v1, v6, v9

    if-gtz v1, :cond_5

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamd;->zzb(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iput v2, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    goto/16 :goto_5

    :cond_5
    :goto_0
    iput-wide v9, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzk:J

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzamj;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamd;->zzd()Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzamj;->zzb(Lcom/google/android/gms/internal/ads/zzes;)J

    move-result-wide v1

    cmp-long v5, v1, v9

    if-ltz v5, :cond_6

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzg:J

    add-long v7, v5, v1

    iget-wide v9, v11, Lcom/google/android/gms/internal/ads/zzamj;->zze:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    invoke-virtual {v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzamj;->zzh(J)J

    move-result-wide v15

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v6

    invoke-interface {v5, v0, v6}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    iput-wide v3, v11, Lcom/google/android/gms/internal/ads/zzamj;->zze:J

    :cond_6
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzg:J

    add-long/2addr v3, v1

    iput-wide v3, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzg:J

    :goto_1
    move v5, v13

    goto/16 :goto_5

    :cond_7
    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzf:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    iput v12, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    return v13

    :cond_8
    :goto_2
    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzamj;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzamd;->zzb(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v1

    if-nez v1, :cond_9

    iput v2, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    goto/16 :goto_5

    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v7

    iget-wide v9, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzf:J

    sub-long/2addr v7, v9

    iput-wide v7, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzk:J

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamd;->zzd()Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzj:Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {v11, v1, v9, v10, v7}, Lcom/google/android/gms/internal/ads/zzamj;->zzc(Lcom/google/android/gms/internal/ads/zzes;JLcom/google/android/gms/internal/ads/zzamh;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v7

    iput-wide v7, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzf:J

    goto :goto_2

    :cond_a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzj:Lcom/google/android/gms/internal/ads/zzamh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzamh;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    iput v2, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzi:I

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzm:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v6, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzm:Z

    :cond_b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzj:Lcom/google/android/gms/internal/ads/zzamh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    if-eqz v1, :cond_c

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    goto :goto_4

    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzami;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzami;-><init>([B)V

    iput-object v0, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    goto :goto_4

    :cond_d
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamd;->zzc()Lcom/google/android/gms/internal/ads/zzame;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzame;->zza:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    move v10, v6

    goto :goto_3

    :cond_e
    move v10, v13

    :goto_3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaly;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzf:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzo()J

    move-result-wide v4

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzame;->zzd:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzame;->zze:I

    add-int/2addr v0, v6

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzame;->zzb:J

    int-to-long v6, v0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzaly;-><init>(Lcom/google/android/gms/internal/ads/zzamj;JJJJZ)V

    iput-object v15, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    :goto_4
    iput v12, v11, Lcom/google/android/gms/internal/ads/zzamj;->zzh:I

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamd;->zze()V

    goto/16 :goto_1

    :goto_5
    return v5
.end method

.method public final zzh(J)J
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzi:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final zzi(J)J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzi:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public zzj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzg:J

    return-void
.end method
