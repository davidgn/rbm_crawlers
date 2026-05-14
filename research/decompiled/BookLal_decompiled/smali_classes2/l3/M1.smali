.class public final Ll3/M1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ll3/M1;


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ll3/P1;

.field public c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll3/M1;

    new-instance v1, Ll3/P1;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ll3/P1;-><init>(I)V

    invoke-direct {v0, v1}, Ll3/M1;-><init>(Ll3/P1;)V

    sput-object v0, Ll3/M1;->d:Ll3/M1;

    return-void
.end method

.method public constructor <init>(Ll3/P1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Ll3/M1;->b:Ll3/P1;

    return-void
.end method

.method public static a(Ll3/L1;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ll3/M1;->d:Ll3/M1;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/K1;

    if-nez v1, :cond_0

    new-instance v1, Ll3/K1;

    invoke-interface {p0}, Ll3/L1;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Ll3/K1;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, v1, Ll3/K1;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p0, 0x0

    iput-object p0, v1, Ll3/K1;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget p0, v1, Ll3/K1;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Ll3/K1;->b:I

    iget-object p0, v1, Ll3/K1;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Ll3/L1;Ljava/lang/Object;)V
    .locals 11

    sget-object v6, Ll3/M1;->d:Ll3/M1;

    const-string v0, "No cached instance found for "

    monitor-enter v6

    :try_start_0
    iget-object v1, v6, Ll3/M1;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ll3/K1;

    if-eqz v7, :cond_5

    iget-object v0, v7, Ll3/K1;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Releasing the wrong instance"

    invoke-static {v0, v3}, LZ2/l;->f(ZLjava/lang/String;)V

    iget v0, v7, Ll3/K1;->b:I

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "Refcount has already reached zero"

    invoke-static {v0, v3}, LZ2/l;->m(ZLjava/lang/String;)V

    iget v0, v7, Ll3/K1;->b:I

    sub-int/2addr v0, v2

    iput v0, v7, Ll3/K1;->b:I

    if-nez v0, :cond_4

    iget-object v0, v7, Ll3/K1;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Destroy task already scheduled"

    invoke-static {v1, v0}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, v6, Ll3/M1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_3

    iget-object v0, v6, Ll3/M1;->b:Ll3/P1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "grpc-shared-destroyer-%d"

    invoke-static {v0}, Ll3/b0;->e(Ljava/lang/String;)LN2/p;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, v6, Ll3/M1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v8, v6, Ll3/M1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Ll3/v0;

    new-instance v10, LU0/p;

    const/4 v5, 0x5

    move-object v0, v10

    move-object v1, v6

    move-object v2, v7

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, LU0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v9, v10}, Ll3/v0;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-interface {v8, v9, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    iput-object p0, v7, Ll3/K1;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v6

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
