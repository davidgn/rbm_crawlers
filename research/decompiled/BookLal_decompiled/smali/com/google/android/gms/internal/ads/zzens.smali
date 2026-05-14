.class public final Lcom/google/android/gms/internal/ads/zzens;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcxb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeoi;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfrb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhbo;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzh:Lcom/google/android/gms/internal/ads/zzent;

.field private zzi:Lcom/google/android/gms/internal/ads/zzfjv;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzcxb;Lcom/google/android/gms/internal/ads/zzeoi;Lcom/google/android/gms/internal/ads/zzfrb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->zze()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzens;->zzf:Lcom/google/android/gms/internal/ads/zzhbo;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzens;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzens;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzens;->zzc:Lcom/google/android/gms/internal/ads/zzcxb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzens;->zzd:Lcom/google/android/gms/internal/ads/zzeoi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzens;->zze:Lcom/google/android/gms/internal/ads/zzfrb;

    return-void
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzfjk;)LN2/o;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzens;->zzc:Lcom/google/android/gms/internal/ads/zzcxb;

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcxb;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzekx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzens;->zzi:Lcom/google/android/gms/internal/ads/zzfjv;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzekx;->zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzens;->zzi:Lcom/google/android/gms/internal/ads/zzfjv;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzekx;->zzb(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)LN2/o;

    move-result-object v0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzR:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzens;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzi(LN2/o;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LN2/o;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzedi;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzfjk;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzens;->zzd(Lcom/google/android/gms/internal/ads/zzfjk;)LN2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzens;->zze:Lcom/google/android/gms/internal/ads/zzfrb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzens;->zzd:Lcom/google/android/gms/internal/ads/zzeoi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzens;->zzi:Lcom/google/android/gms/internal/ads/zzfjv;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzeoi;->zze(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;LN2/o;Lcom/google/android/gms/internal/ads/zzfrb;)LN2/o;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzenr;-><init>(Lcom/google/android/gms/internal/ads/zzens;Lcom/google/android/gms/internal/ads/zzfjk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zza:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzfjv;)LN2/o;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzens;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfju;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzens;->zzf:Lcom/google/android/gms/internal/ads/zzhbo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeom;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeop;->zzb(Lcom/google/android/gms/internal/ads/zzfjv;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbo;->zzb(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zzi:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzens;->zzd:Lcom/google/android/gms/internal/ads/zzeoi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzens;->zzf:Lcom/google/android/gms/internal/ads/zzhbo;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzent;

    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzent;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzeoi;Lcom/google/android/gms/internal/ads/zzhbo;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzens;->zzh:Lcom/google/android/gms/internal/ads/zzent;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeoi;->zzc(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zzh:Lcom/google/android/gms/internal/ads/zzent;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzent;->zza()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzens;->zze(Lcom/google/android/gms/internal/ads/zzfjk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zzh:Lcom/google/android/gms/internal/ads/zzent;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzent;->zza()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzens;->zzf:Lcom/google/android/gms/internal/ads/zzhbo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfjk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzens;->zze(Lcom/google/android/gms/internal/ads/zzfjk;)V

    return-void
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzens;->zzh:Lcom/google/android/gms/internal/ads/zzent;

    return-object v0
.end method
