.class public final LP3/p;
.super Lz3/o;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:LB3/a;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP3/p;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, LB3/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LB3/a;-><init>(I)V

    iput-object p1, p0, LP3/p;->b:LB3/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;
    .locals 2

    iget-boolean p2, p0, LP3/p;->c:Z

    sget-object v0, LF3/b;->a:LF3/b;

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    new-instance p2, LP3/n;

    iget-object v1, p0, LP3/p;->b:LB3/a;

    invoke-direct {p2, p1, v1}, LP3/n;-><init>(Ljava/lang/Runnable;LB3/a;)V

    iget-object p1, p0, LP3/p;->b:LB3/a;

    invoke-virtual {p1, p2}, LB3/a;->a(LB3/b;)Z

    :try_start_0
    iget-object p1, p0, LP3/p;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p2, p1}, LP3/n;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p0}, LP3/p;->b()V

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, LP3/p;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LP3/p;->c:Z

    iget-object v0, p0, LP3/p;->b:LB3/a;

    invoke-virtual {v0}, LB3/a;->b()V

    :cond_0
    return-void
.end method
