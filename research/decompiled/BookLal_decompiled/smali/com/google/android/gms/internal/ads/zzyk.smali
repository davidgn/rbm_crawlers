.class public final Lcom/google/android/gms/internal/ads/zzyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzags;


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private final zza:Lcom/google/android/gms/internal/ads/zzyf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzyg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzyr;

.field private final zzd:Lcom/google/android/gms/internal/ads/zztw;

.field private final zze:Lcom/google/android/gms/internal/ads/zztr;

.field private zzf:Lcom/google/android/gms/internal/ads/zzyj;

.field private zzg:Lcom/google/android/gms/internal/ads/zzv;

.field private zzh:Lcom/google/android/gms/internal/ads/zztp;

.field private zzi:I

.field private zzj:[J

.field private zzk:[J

.field private zzl:[I

.field private zzm:[I

.field private zzn:[J

.field private zzo:[Lcom/google/android/gms/internal/ads/zzagr;

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:J

.field private zzu:J

.field private zzv:J

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaaw;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zztr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzd:Lcom/google/android/gms/internal/ads/zztw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zze:Lcom/google/android/gms/internal/ads/zztr;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzyf;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzyf;-><init>(Lcom/google/android/gms/internal/ads/zzaaw;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzyg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzyg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:Lcom/google/android/gms/internal/ads/zzyg;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzj:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzo:[Lcom/google/android/gms/internal/ads/zzagr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzyr;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzyh;->zza:Lcom/google/android/gms/internal/ads/zzyh;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzyr;-><init>(Lcom/google/android/gms/internal/ads/zzds;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzyr;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzt:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzu:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzv:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzy:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzx:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzA:Z

    return-void
.end method

.method private final declared-synchronized zzA()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyf;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzB(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;ZZLcom/google/android/gms/internal/ads/zzyg;)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzio;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzH()Z

    move-result v0

    const/4 v1, -0x4

    const/4 v2, -0x3

    const/4 v3, -0x5

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzw:Z

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-eq p2, p3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzI(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzlp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_1
    const/4 p1, 0x4

    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzij;->zzg(I)V

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p2, Lcom/google/android/gms/internal/ads/zzio;->zze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzyr;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzyr;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzyi;->zza:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p3, :cond_9

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v0, p3, :cond_5

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzM(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzJ(I)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzio;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzij;->zzg(I)V

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_8

    if-nez p4, :cond_7

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzw:Z

    if-eqz p3, :cond_8

    :cond_7
    const/high16 p3, 0x20000000

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzij;->zzh(I)V

    :cond_8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    aget-wide v2, p3, p1

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    aget p2, p2, p1

    iput p2, p5, Lcom/google/android/gms/internal/ads/zzyg;->zza:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    aget-wide p3, p2, p1

    iput-wide p3, p5, Lcom/google/android/gms/internal/ads/zzyg;->zzb:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzo:[Lcom/google/android/gms/internal/ads/zzagr;

    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzyg;->zzc:Lcom/google/android/gms/internal/ads/zzagr;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_9
    :goto_2
    :try_start_4
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzI(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzlp;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzC(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzy:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyr;->zzf()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyr;->zzc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzyi;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyr;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzyi;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzA:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzas;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzA:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzB:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzD(JZZ)J
    .locals 7

    monitor-enter p0

    :try_start_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    if-eq p4, p3, :cond_1

    add-int/lit8 p3, p4, 0x1

    :cond_1
    move v3, p3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzyk;->zzK(IIJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzL(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_2
    :goto_1
    monitor-exit p0

    const-wide/16 p1, -0x1

    return-wide p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzE()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzL(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final zzF()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzh:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzh:Lcom/google/android/gms/internal/ads/zztp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzG(JIJILcom/google/android/gms/internal/ads/zzagr;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzM(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzw:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzv:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzv:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzM(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    aput p6, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    aput p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzo:[Lcom/google/android/gms/internal/ads/zzagr;

    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzj:[J

    const-wide/16 p2, 0x0

    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyr;->zzf()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyr;->zzc()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzyi;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzyi;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzv;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    sget-object p4, Lcom/google/android/gms/internal/ads/zztv;->zzb:Lcom/google/android/gms/internal/ads/zztv;

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    add-int/2addr p5, p6

    new-instance p6, Lcom/google/android/gms/internal/ads/zzyi;

    invoke-direct {p6, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzyi;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zztv;[B)V

    invoke-virtual {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzyr;->zzb(ILjava/lang/Object;)V

    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    if-ne p1, p2, :cond_5

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array p7, p1, [I

    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzagr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzo:[Lcom/google/android/gms/internal/ads/zzagr;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzj:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzo:[Lcom/google/android/gms/internal/ads/zzagr;

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzj:[J

    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzo:[Lcom/google/android/gms/internal/ads/zzagr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzj:[J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    throw p3

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzH()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzI(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzlp;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzd:Lcom/google/android/gms/internal/ads/zztw;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zztw;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzv;->zzb(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzh:Lcom/google/android/gms/internal/ads/zztp;

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zze:Lcom/google/android/gms/internal/ads/zztr;

    invoke-interface {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zztw;->zza(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzh:Lcom/google/android/gms/internal/ads/zztp;

    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zztp;

    return-void
.end method

.method private final zzJ(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzh:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final zzK(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    if-ne p1, v3, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private final zzL(I)J
    .locals 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzu:J

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzyk;->zzM(I)I

    move-result v6

    move v7, v2

    :goto_0
    if-ge v7, p1, :cond_3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    aget-wide v9, v8, v6

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzm:[I

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    add-int/2addr v6, v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzu:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    if-lt v1, v3, :cond_4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    if-gez v1, :cond_5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyr;->zzd(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    :cond_6
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzl:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzk:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private final zzM(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzj;IZI)I
    .locals 0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyf;->zzg(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    return p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzes;II)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzyf;->zzh(Lcom/google/android/gms/internal/ads/zzes;I)V

    return-void
.end method

.method public final zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzx:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzx:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzA:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzt:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzB:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SampleQueue"

    const-string v2, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzB:Z

    :cond_2
    or-int/lit8 p3, p3, 0x1

    :cond_3
    move v3, p3

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    int-to-long v0, p4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzyf;->zzf()J

    move-result-wide v4

    sub-long/2addr v4, v0

    int-to-long v0, p5

    sub-long/2addr v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzyk;->zzG(JIJILcom/google/android/gms/internal/ads/zzagr;)V

    return-void
.end method

.method public final zzf()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzg(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzF()V

    return-void
.end method

.method public final zzg(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyf;->zza()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzx:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzt:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzu:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzv:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyr;->zze()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzy:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzA:Z

    :cond_0
    return-void
.end method

.method public final zzh(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzt:J

    return-void
.end method

.method public final zzi()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzj()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzx()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzF()V

    return-void
.end method

.method public final zzk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzh:Lcom/google/android/gms/internal/ads/zztp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zztp;->zza()Lcom/google/android/gms/internal/ads/zzto;

    move-result-object v0

    throw v0
.end method

.method public final zzl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    return v0
.end method

.method public final zzm()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzn()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzo()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzv:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzp()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzq(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzH()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzw:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzg:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzyr;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyr;->zza(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzyi;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzg:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzM(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzJ(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;IZ)I
    .locals 8

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:Lcom/google/android/gms/internal/ads/zzyg;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzyk;->zzB(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;ZZLcom/google/android/gms/internal/ads/zzyg;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzij;->zzb()Z

    move-result p1

    if-nez p1, :cond_1

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzyf;->zzd(Lcom/google/android/gms/internal/ads/zzio;Lcom/google/android/gms/internal/ads/zzyg;)V

    :cond_1
    :goto_1
    move p1, p4

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(Lcom/google/android/gms/internal/ads/zzio;Lcom/google/android/gms/internal/ads/zzyg;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    return p4

    :cond_5
    :goto_3
    return p1
.end method

.method public final declared-synchronized zzs(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzA()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzq:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzt:J

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzt(JZ)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzA()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzM(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzH()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_7

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzv:J

    cmp-long v1, p1, v3

    const/4 v8, 0x1

    if-lez v1, :cond_0

    if-eqz p3, :cond_7

    move p3, v8

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzA:Z

    const/4 v9, -0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    sub-int/2addr v1, v0

    move v0, v7

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzi:I

    if-ne v2, v3, :cond_1

    move v2, v7

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v9

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzyk;->zzK(IIJZ)I

    move-result v1

    :goto_1
    if-ne v1, v9, :cond_6

    goto :goto_2

    :cond_6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzt:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v8

    :cond_7
    :goto_2
    monitor-exit p0

    return v7

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzu(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzM(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzH()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzn:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzv:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    if-eqz p3, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzyk;->zzK(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_2

    return v7

    :cond_2
    return p1

    :cond_3
    :goto_0
    monitor-exit p0

    return v7

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzv(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzp:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzw(JZZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzyk;->zzD(JZZ)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzyf;->zze(J)V

    return-void
.end method

.method public final zzx()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzE()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzyf;->zze(J)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzyj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzf:Lcom/google/android/gms/internal/ads/zzyj;

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzC(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzf:Lcom/google/android/gms/internal/ads/zzyj;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzyj;->zzy(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_0
    return-void
.end method
