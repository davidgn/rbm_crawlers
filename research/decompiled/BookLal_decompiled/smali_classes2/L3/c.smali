.class public final LL3/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/i;
.implements LB3/b;
.implements Lz3/j;
.implements Lz3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    .line 1
    iput p2, p0, LL3/c;->a:I

    iput-object p1, p0, LL3/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz3/j;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LL3/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    iput-object p1, p0, LL3/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LB3/b;)V
    .locals 1

    iget v0, p0, LL3/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    :pswitch_0
    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    :pswitch_1
    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, LL3/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_0
    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_1
    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_2
    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 9

    iget v0, p0, LL3/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, LM3/k;

    iget-object v1, v0, LM3/k;->d:LB3/a;

    invoke-virtual {v1, p0}, LB3/a;->c(LB3/b;)Z

    invoke-virtual {v0}, LM3/k;->onComplete()V

    return-void

    :pswitch_0
    iget-object v0, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, LM3/j;

    iget-object v1, v0, LM3/j;->d:LB3/a;

    invoke-virtual {v1, p0}, LB3/a;->c(LB3/b;)Z

    invoke-virtual {v0}, LM3/j;->onComplete()V

    return-void

    :pswitch_1
    iget-object v0, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, LK3/A;

    iget-object v1, v0, LK3/A;->d:LB3/a;

    invoke-virtual {v1, p0}, LB3/a;->c(LB3/b;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, v0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v3, 0x1

    const v5, 0x7fffffff

    iget v6, v0, LK3/A;->b:I

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v7

    :cond_0
    iget-object v2, v0, LK3/A;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO3/b;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LO3/b;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    iget-object v0, v0, LK3/A;->a:Lz3/g;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lz3/g;->onComplete()V

    goto :goto_0

    :cond_3
    if-eq v6, v5, :cond_4

    iget-object v1, v0, LK3/A;->n:LT4/b;

    invoke-interface {v1, v3, v4}, LT4/b;->f(J)V

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, LK3/A;->g()V

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eq v6, v5, :cond_7

    iget-object v1, v0, LK3/A;->n:LT4/b;

    invoke-interface {v1, v3, v4}, LT4/b;->f(J)V

    :cond_7
    invoke-virtual {v0}, LK3/A;->b()V

    :goto_0
    return-void

    :pswitch_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LF3/a;->a:LF3/a;

    if-eq v0, v1, :cond_9

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    if-eq v0, v1, :cond_9

    :try_start_0
    iget-object v1, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v1, Lz3/j;

    invoke-interface {v1}, Lz3/j;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    invoke-interface {v0}, LB3/b;->b()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    invoke-interface {v0}, LB3/b;->b()V

    :cond_8
    throw v1

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, LL3/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, LM3/k;

    iget-object v1, v0, LM3/k;->d:LB3/a;

    invoke-virtual {v1, p0}, LB3/a;->c(LB3/b;)Z

    invoke-virtual {v0, p1}, LM3/k;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, LM3/j;

    iget-object v1, v0, LM3/j;->d:LB3/a;

    invoke-virtual {v1, p0}, LB3/a;->c(LB3/b;)Z

    invoke-virtual {v0, p1}, LM3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, LK3/A;

    iget-object v1, v0, LK3/A;->d:LB3/a;

    invoke-virtual {v1, p0}, LB3/a;->c(LB3/b;)Z

    iget-object v2, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v0, LK3/A;->n:LT4/b;

    invoke-interface {p1}, LT4/b;->cancel()V

    invoke-virtual {v1}, LB3/a;->b()V

    iget-object p1, v0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, LK3/A;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_2
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LF3/a;->a:LF3/a;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB3/b;

    if-eq v1, v2, :cond_3

    :try_start_0
    iget-object p1, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast p1, Lz3/j;

    invoke-interface {p1, v0}, Lz3/j;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, LB3/b;->b()V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-interface {v1}, LB3/b;->b()V

    :cond_2
    throw p1

    :cond_3
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, LK3/A;

    iget-object v1, v0, LK3/A;->d:LB3/a;

    invoke-virtual {v1, p0}, LB3/a;->c(LB3/b;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iget-object v2, v0, LK3/A;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, v0, LK3/A;->a:Lz3/g;

    invoke-interface {v2, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    iget-object p1, v0, LK3/A;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LO3/b;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LO3/b;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, v0, LK3/A;->f:LS3/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, v0, LK3/A;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object p1, v0, LK3/A;->a:Lz3/g;

    invoke-interface {p1}, Lz3/g;->onComplete()V

    goto :goto_1

    :cond_3
    iget-object p1, v0, LK3/A;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/a;->u(Ljava/util/concurrent/atomic/AtomicLong;J)V

    iget p1, v0, LK3/A;->b:I

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_5

    iget-object p1, v0, LK3/A;->n:LT4/b;

    invoke-interface {p1, v1, v2}, LT4/b;->f(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, LK3/A;->h()LO3/b;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, LO3/b;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    invoke-virtual {v0}, LK3/A;->h()LO3/b;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1, p1}, LO3/b;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, v0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, LK3/A;->g()V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LL3/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-class v0, LL3/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
