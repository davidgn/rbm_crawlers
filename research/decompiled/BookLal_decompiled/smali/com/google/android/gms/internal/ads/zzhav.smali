.class public final Lcom/google/android/gms/internal/ads/zzhav;
.super Lcom/google/android/gms/internal/ads/zzhax;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/Object;)LN2/o;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhaz;->zza:LN2/o;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhaz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhaz;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb()LN2/o;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhaz;->zza:LN2/o;

    return-object v0
.end method

.method public static zzc(Ljava/lang/Throwable;)LN2/o;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhay;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhbu;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhbu;->zze(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbu;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzhac;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhbu;-><init>(Lcom/google/android/gms/internal/ads/zzhac;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgzn;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzhbm;->zzd(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgzo;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzh(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgzn;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzl;-><init>(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzhbm;->zzd(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgzo;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzi(LN2/o;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LN2/o;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhbr;->zze(LN2/o;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LN2/o;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzc:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzs;-><init>(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzhbm;->zzd(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgzo;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzc:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzt;-><init>(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzhbm;->zzd(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgzo;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static varargs zzl([LN2/o;)LN2/o;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhae;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhae;-><init>(Lcom/google/android/gms/internal/ads/zzgvi;Z)V

    return-object v0
.end method

.method public static zzm(Ljava/lang/Iterable;)LN2/o;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhae;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhae;-><init>(Lcom/google/android/gms/internal/ads/zzgvi;Z)V

    return-object v0
.end method

.method public static zzn(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhau;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhau;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzhau;-><init>(ZLcom/google/android/gms/internal/ads/zzgvm;[B)V

    return-object v0
.end method

.method public static varargs zzo([LN2/o;)Lcom/google/android/gms/internal/ads/zzhau;
    .locals 3
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhau;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzhau;-><init>(ZLcom/google/android/gms/internal/ads/zzgvm;[B)V

    return-object v0
.end method

.method public static zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhau;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhau;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzhau;-><init>(ZLcom/google/android/gms/internal/ads/zzgvm;[B)V

    return-object v0
.end method

.method public static varargs zzq([LN2/o;)LN2/o;
    .locals 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhae;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhae;-><init>(Lcom/google/android/gms/internal/ads/zzgvi;Z)V

    return-object v0
.end method

.method public static zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhat;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhat;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzhas;)V

    invoke-interface {p0, v0, p2}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhbw;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzgta;->zzd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzt(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhbw;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhal;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhal;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbv;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhbv;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
