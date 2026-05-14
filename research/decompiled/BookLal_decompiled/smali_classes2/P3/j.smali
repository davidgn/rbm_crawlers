.class public LP3/j;
.super Lz3/o;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile b:Z


# direct methods
.method public constructor <init>(LP3/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, LP3/o;->a:Z

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sget-boolean v0, LP3/o;->a:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, LP3/o;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, LP3/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;
    .locals 1

    iget-boolean v0, p0, LP3/j;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, LF3/b;->a:LF3/b;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LP3/j;->d(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;LB3/a;)LP3/n;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, LP3/j;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LP3/j;->b:Z

    iget-object v0, p0, LP3/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final c(LK3/I;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LP3/j;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;

    return-void
.end method

.method public final d(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;LB3/a;)LP3/n;
    .locals 0

    new-instance p2, LP3/n;

    invoke-direct {p2, p1, p3}, LP3/n;-><init>(Ljava/lang/Runnable;LB3/a;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, LB3/a;->a(LB3/b;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object p1, p0, LP3/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p2, p1}, LP3/n;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, LB3/a;->d(LB3/b;)Z

    :cond_1
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method
