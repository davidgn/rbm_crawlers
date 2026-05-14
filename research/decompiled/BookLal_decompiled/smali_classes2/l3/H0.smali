.class public final Ll3/H0;
.super Lj3/k;
.source "SourceFile"


# static fields
.field public static final n:Ll3/E;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledFuture;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lj3/u;

.field public volatile d:Z

.field public e:Lj3/j;

.field public f:Lj3/k;

.field public g:Lj3/r0;

.field public h:Ljava/util/List;

.field public i:Ll3/G;

.field public final j:Lj3/u;

.field public final k:Lj3/h0;

.field public final l:Lj3/g;

.field public final synthetic m:Ll3/I0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ll3/H0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Ll3/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/E;-><init>(I)V

    sput-object v0, Ll3/H0;->n:Ll3/E;

    return-void
.end method

.method public constructor <init>(Ll3/I0;Lj3/u;Lj3/h0;Lj3/g;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/H0;->m:Ll3/I0;

    iget-object v0, p1, Ll3/I0;->d:Ll3/L0;

    sget-object v1, Ll3/L0;->d0:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p4, Lj3/g;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v1, v0, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object p1, p1, Ll3/I0;->d:Ll3/L0;

    iget-object p1, p1, Ll3/L0;->g:Ll3/J0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/H0;->h:Ljava/util/List;

    const-string v0, "callExecutor"

    invoke-static {v1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ll3/H0;->b:Ljava/util/concurrent/Executor;

    const-string v0, "scheduler"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lj3/u;->b()Lj3/u;

    move-result-object v0

    iput-object v0, p0, Ll3/H0;->c:Lj3/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p4, Lj3/g;->a:Lj3/v;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lj3/v;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    div-long/2addr v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    rem-long/2addr v8, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const-string v6, "ClientCall started after CallOptions deadline was exceeded. Deadline has been exceeded for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v6, "Deadline CallOptions will be exceeded in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, ".%09d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "s. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ll3/B;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0, v0}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, Ll3/J0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v4, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Ll3/H0;->a:Ljava/util/concurrent/ScheduledFuture;

    iput-object p2, p0, Ll3/H0;->j:Lj3/u;

    iput-object p3, p0, Ll3/H0;->k:Lj3/h0;

    iput-object p4, p0, Ll3/H0;->l:Lj3/g;

    return-void
.end method


# virtual methods
.method public final a(Lj3/r0;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/H0;->f:Lj3/k;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object p2, Ll3/H0;->n:Ll3/E;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "realCall already set to %s"

    invoke-static {v1, v3, v0}, LZ2/l;->n(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ll3/H0;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iput-object p2, p0, Ll3/H0;->f:Lj3/k;

    iget-object p2, p0, Ll3/H0;->e:Lj3/j;

    iput-object p1, p0, Ll3/H0;->g:Lj3/r0;

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const/4 p2, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    new-instance p2, Ll3/B;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Ll3/H0;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Ll3/H0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ll3/F;

    invoke-direct {v1, p0, p2, p1}, Ll3/F;-><init>(Ll3/H0;Lj3/j;Lj3/r0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    invoke-virtual {p0}, Ll3/H0;->c()V

    :goto_2
    iget-object p1, p0, Ll3/H0;->m:Ll3/I0;

    iget-object p1, p1, Ll3/I0;->d:Ll3/L0;

    iget-object p1, p1, Ll3/L0;->m:Lj3/w0;

    new-instance p2, Ll3/D;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Ll3/D;-><init>(Ll3/H0;I)V

    invoke-virtual {p1, p2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll3/H0;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/H0;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ll3/H0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/H0;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/H0;->d:Z

    iget-object v0, p0, Ll3/H0;->i:Ll3/G;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll3/H0;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Ll3/q;

    invoke-direct {v2, p0, v0}, Ll3/q;-><init>(Ll3/H0;Ll3/G;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Ll3/H0;->h:Ljava/util/List;

    iput-object v0, p0, Ll3/H0;->h:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lj3/r0;->f:Lj3/r0;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ll3/H0;->a(Lj3/r0;Z)V

    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Ll3/H0;->j:Lj3/u;

    invoke-virtual {v1}, Lj3/u;->a()Lj3/u;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Ll3/H0;->m:Ll3/I0;

    iget-object v3, p0, Ll3/H0;->k:Lj3/h0;

    iget-object v4, p0, Ll3/H0;->l:Lj3/g;

    invoke-virtual {v2, v3, v4}, Ll3/I0;->h(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Ll3/H0;->j:Lj3/u;

    invoke-virtual {v3, v1}, Lj3/u;->c(Lj3/u;)V

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ll3/H0;->f:Lj3/k;

    if-eqz v1, :cond_0

    monitor-exit p0

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const-string v5, "realCall already set to %s"

    invoke-static {v4, v5, v1}, LZ2/l;->n(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ll3/H0;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iput-object v2, p0, Ll3/H0;->f:Lj3/k;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Ll3/q;

    iget-object v2, p0, Ll3/H0;->c:Lj3/u;

    invoke-direct {v1, p0, v2}, Ll3/q;-><init>(Ll3/H0;Lj3/u;)V

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Ll3/H0;->m:Ll3/I0;

    iget-object v1, v1, Ll3/I0;->d:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->m:Lj3/w0;

    new-instance v2, Ll3/D;

    invoke-direct {v2, p0, v0}, Ll3/D;-><init>(Ll3/H0;I)V

    invoke-virtual {v1, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ll3/H0;->m:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v2, p0, Ll3/H0;->l:Lj3/g;

    sget-object v3, Ll3/L0;->d0:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lj3/g;->b:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_4

    iget-object v2, v0, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    :cond_4
    new-instance v0, Ll3/B;

    const/16 v3, 0x13

    invoke-direct {v0, v3, p0, v1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Ll3/H0;->j:Lj3/u;

    invoke-virtual {v2, v1}, Lj3/u;->c(Lj3/u;)V

    throw v0
.end method

.method public final getAttributes()Lj3/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/H0;->f:Lj3/k;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj3/k;->getAttributes()Lj3/b;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lj3/b;->b:Lj3/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final halfClose()V
    .locals 2

    new-instance v0, Ll3/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll3/D;-><init>(Ll3/H0;I)V

    invoke-virtual {p0, v0}, Ll3/H0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    iget-boolean v0, p0, Ll3/H0;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/H0;->f:Lj3/k;

    invoke-virtual {v0}, Lj3/k;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final request(I)V
    .locals 2

    iget-boolean v0, p0, Ll3/H0;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/H0;->f:Lj3/k;

    invoke-virtual {v0, p1}, Lj3/k;->request(I)V

    goto :goto_0

    :cond_0
    new-instance v0, LJ/a;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, LJ/a;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Ll3/H0;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final sendMessage(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Ll3/H0;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/H0;->f:Lj3/k;

    invoke-virtual {v0, p1}, Lj3/k;->sendMessage(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ll3/B;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/H0;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final setMessageCompression(Z)V
    .locals 2

    iget-boolean v0, p0, Ll3/H0;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/H0;->f:Lj3/k;

    invoke-virtual {v0, p1}, Lj3/k;->setMessageCompression(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ll3/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ll3/C;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Ll3/H0;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final start(Lj3/j;Lj3/f0;)V
    .locals 3

    iget-object v0, p0, Ll3/H0;->e:Lj3/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/H0;->e:Lj3/j;

    iget-object v0, p0, Ll3/H0;->g:Lj3/r0;

    iget-boolean v1, p0, Ll3/H0;->d:Z

    if-nez v1, :cond_1

    new-instance v2, Ll3/G;

    invoke-direct {v2, p1}, Ll3/G;-><init>(Lj3/j;)V

    iput-object v2, p0, Ll3/H0;->i:Ll3/G;

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object p2, p0, Ll3/H0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ll3/F;

    invoke-direct {v1, p0, p1, v0}, Ll3/F;-><init>(Ll3/H0;Lj3/j;Lj3/r0;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Ll3/H0;->f:Lj3/k;

    invoke-virtual {v0, p1, p2}, Lj3/k;->start(Lj3/j;Lj3/f0;)V

    goto :goto_2

    :cond_3
    new-instance v0, LJ/k;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, p2, v1}, LJ/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ll3/H0;->b(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "realCall"

    iget-object v2, p0, Ll3/H0;->f:Lj3/k;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
