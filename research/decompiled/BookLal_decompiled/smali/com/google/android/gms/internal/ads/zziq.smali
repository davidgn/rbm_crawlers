.class public abstract Lcom/google/android/gms/internal/ads/zziq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmt;
.implements Lcom/google/android/gms/internal/ads/zzmv;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzlp;

.field private zzd:Lcom/google/android/gms/internal/ads/zzmw;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzpy;

.field private zzg:Lcom/google/android/gms/internal/ads/zzdo;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzyl;

.field private zzj:[Lcom/google/android/gms/internal/ads/zzv;

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:Z

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/ads/zzbf;

.field private zzq:Lcom/google/android/gms/internal/ads/zzwt;

.field private zzr:Lcom/google/android/gms/internal/ads/zzmu;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zza:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzb:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzlp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzlp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzc:Lcom/google/android/gms/internal/ads/zzlp;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbf;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzp:Lcom/google/android/gms/internal/ads/zzbf;

    return-void
.end method

.method private final zzae(JZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzn:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    if-nez p4, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziq;->zzR(J)I

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zziq;->zzA(JZZ)V

    return-void
.end method


# virtual methods
.method public zzA(JZZ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzB()V
    .locals 0

    return-void
.end method

.method public zzC()V
    .locals 0

    return-void
.end method

.method public zzD()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzE()V
    .locals 0

    return-void
.end method

.method public zzF()V
    .locals 0

    return-void
.end method

.method public zzG(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    return-void
.end method

.method public final zzH()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzl:J

    return-wide v0
.end method

.method public final zzI()Lcom/google/android/gms/internal/ads/zzlp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzc:Lcom/google/android/gms/internal/ads/zzlp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zztp;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method public final zzJ()[Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzj:[Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzK()Lcom/google/android/gms/internal/ads/zzmw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzd:Lcom/google/android/gms/internal/ads/zzmw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzL()Lcom/google/android/gms/internal/ads/zzpy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzf:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzM()Lcom/google/android/gms/internal/ads/zzdo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzg:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzN()Lcom/google/android/gms/internal/ads/zzbf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzp:Lcom/google/android/gms/internal/ads/zzbf;

    return-object v0
.end method

.method public final zzO()Lcom/google/android/gms/internal/ads/zzwt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzq:Lcom/google/android/gms/internal/ads/zzwt;

    return-object v0
.end method

.method public final zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;
    .locals 10

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzo:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzo:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzmv;->zzad(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzjd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzo:Z

    :cond_0
    :goto_0
    move v6, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzo:Z

    throw p1

    :catch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzo:Z

    goto :goto_0

    :goto_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzmt;->zzU()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zziq;->zze:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zziq;->zzq:Lcom/google/android/gms/internal/ads/zzwt;

    move-object v2, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzjd;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwt;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object p1

    return-object p1
.end method

.method public final zzQ(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzi:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyl;->zzd(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzij;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzn:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzk:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzv;->zzt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object p3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zziq;->zzk:J

    add-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzs(J)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    return p2

    :cond_3
    :goto_0
    return p3
.end method

.method public final zzR(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzi:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzk:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyl;->zze(J)I

    move-result p1

    return p1
.end method

.method public final zzS()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzcW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzn:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzi:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzb()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final zzT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzr:Lcom/google/android/gms/internal/ads/zzmu;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzmu;->zza(Lcom/google/android/gms/internal/ads/zzmt;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzb:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzmv;
    .locals 0

    return-object p0
.end method

.method public final zzc(ILcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzdo;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zze:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzf:Lcom/google/android/gms/internal/ads/zzpy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zziq;->zzg:Lcom/google/android/gms/internal/ads/zzdo;

    return-void
.end method

.method public final zzcT()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzB()V

    return-void
.end method

.method public final zzcU([Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzyl;JJLcom/google/android/gms/internal/ads/zzwt;)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzi:Lcom/google/android/gms/internal/ads/zzyl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zziq;->zzq:Lcom/google/android/gms/internal/ads/zzwt;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzj:[Lcom/google/android/gms/internal/ads/zzv;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zziq;->zzk:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zziq;->zzz([Lcom/google/android/gms/internal/ads/zzv;JJLcom/google/android/gms/internal/ads/zzwt;)V

    return-void
.end method

.method public final zzcV()Lcom/google/android/gms/internal/ads/zzyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzi:Lcom/google/android/gms/internal/ads/zzyl;

    return-object v0
.end method

.method public final zzcW()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzd()Lcom/google/android/gms/internal/ads/zzlu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzmw;[Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzyl;JZZJJLcom/google/android/gms/internal/ads/zzwt;)V
    .locals 11

    move-object v8, p0

    move/from16 v9, p6

    iget v0, v8, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    const/4 v10, 0x1

    if-nez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    move-object v0, p1

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zziq;->zzd:Lcom/google/android/gms/internal/ads/zzmw;

    move-object/from16 v7, p12

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zziq;->zzq:Lcom/google/android/gms/internal/ads/zzwt;

    iput v10, v8, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    move/from16 v0, p7

    invoke-virtual {p0, v9, v0}, Lcom/google/android/gms/internal/ads/zziq;->zzy(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zziq;->zzcU([Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzyl;JJLcom/google/android/gms/internal/ads/zzwt;)V

    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1, v9, v10}, Lcom/google/android/gms/internal/ads/zziq;->zzae(JZZ)V

    return-void
.end method

.method public final zzk()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzm:J

    return-wide v0
.end method

.method public final zzl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzn:Z

    return-void
.end method

.method public final zzm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzn:Z

    return v0
.end method

.method public final zzn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzi:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzc()V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzp:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzp:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zziq;->zzG(Lcom/google/android/gms/internal/ads/zzbf;)V

    :cond_0
    return-void
.end method

.method public final zzp(JZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zziq;->zzae(JZZ)V

    return-void
.end method

.method public final zzq()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzC()V

    return-void
.end method

.method public final zzr()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzc:Lcom/google/android/gms/internal/ads/zzlp;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zztp;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzi:Lcom/google/android/gms/internal/ads/zzyl;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzj:[Lcom/google/android/gms/internal/ads/zzv;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzn:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzD()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzq:Lcom/google/android/gms/internal/ads/zzwt;

    return-void
.end method

.method public final zzs()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzc:Lcom/google/android/gms/internal/ads/zzlp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zztp;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzE()V

    return-void
.end method

.method public final zzt()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzF()V

    return-void
.end method

.method public zzu()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzmu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzr:Lcom/google/android/gms/internal/ads/zzmu;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zza:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzr:Lcom/google/android/gms/internal/ads/zzmu;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzx(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public zzy(ZZ)V
    .locals 0

    return-void
.end method

.method public zzz([Lcom/google/android/gms/internal/ads/zzv;JJLcom/google/android/gms/internal/ads/zzwt;)V
    .locals 0

    return-void
.end method
