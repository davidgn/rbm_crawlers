.class public final LP3/f;
.super Lz3/o;
.source "SourceFile"


# instance fields
.field public final a:LB3/a;

.field public final b:LP3/e;

.field public final c:LP3/g;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LP3/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LP3/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, LP3/f;->b:LP3/e;

    new-instance v0, LB3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB3/a;-><init>(I)V

    iput-object v0, p0, LP3/f;->a:LB3/a;

    iget-object v0, p1, LP3/e;->c:LB3/a;

    iget-boolean v0, v0, LB3/a;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, LP3/h;->e:LP3/g;

    goto :goto_1

    :cond_0
    iget-object v0, p1, LP3/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, LP3/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP3/g;

    if-eqz v0, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance v0, LP3/g;

    iget-object v1, p1, LP3/e;->f:LP3/l;

    invoke-direct {v0, v1}, LP3/g;-><init>(LP3/l;)V

    iget-object p1, p1, LP3/e;->c:LB3/a;

    invoke-virtual {p1, v0}, LB3/a;->a(LB3/b;)Z

    goto :goto_0

    :goto_1
    iput-object p1, p0, LP3/f;->c:LP3/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;
    .locals 2

    iget-object v0, p0, LP3/f;->a:LB3/a;

    iget-boolean v0, v0, LB3/a;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, LF3/b;->a:LF3/b;

    return-object p1

    :cond_0
    iget-object v0, p0, LP3/f;->c:LP3/g;

    iget-object v1, p0, LP3/f;->a:LB3/a;

    invoke-virtual {v0, p1, p2, v1}, LP3/j;->d(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;LB3/a;)LP3/n;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, LP3/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LP3/f;->a:LB3/a;

    invoke-virtual {v0}, LB3/a;->b()V

    iget-object v0, p0, LP3/f;->b:LP3/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, LP3/e;->a:J

    add-long/2addr v1, v3

    iget-object v3, p0, LP3/f;->c:LP3/g;

    iput-wide v1, v3, LP3/g;->c:J

    iget-object v0, v0, LP3/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
