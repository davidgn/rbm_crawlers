.class public final LK3/J;
.super LK3/I;
.source "SourceFile"


# instance fields
.field public final r:LH3/a;

.field public s:J


# direct methods
.method public constructor <init>(LH3/a;Lz3/o;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, LK3/I;-><init>(Lz3/o;I)V

    iput-object p1, p0, LK3/J;->r:LH3/a;

    return-void
.end method


# virtual methods
.method public final c(LT4/b;)V
    .locals 3

    iget-object v0, p0, LK3/I;->e:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LK3/I;->e:LT4/b;

    instance-of v0, p1, LH3/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LH3/e;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, LH3/d;->g(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v2, p0, LK3/I;->o:I

    iput-object v0, p0, LK3/I;->f:LH3/h;

    iput-boolean v2, p0, LK3/I;->m:Z

    iget-object p1, p0, LK3/J;->r:LH3/a;

    invoke-interface {p1, p0}, Lz3/g;->c(LT4/b;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v2, p0, LK3/I;->o:I

    iput-object v0, p0, LK3/I;->f:LH3/h;

    iget-object v0, p0, LK3/J;->r:LH3/a;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    iget v0, p0, LK3/I;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    return-void

    :cond_1
    new-instance v0, LO3/a;

    iget v1, p0, LK3/I;->b:I

    invoke-direct {v0, v1}, LO3/a;-><init>(I)V

    iput-object v0, p0, LK3/I;->f:LH3/h;

    iget-object v0, p0, LK3/J;->r:LH3/a;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    iget v0, p0, LK3/I;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 14

    iget-object v0, p0, LK3/J;->r:LH3/a;

    iget-object v1, p0, LK3/I;->f:LH3/h;

    iget-wide v2, p0, LK3/I;->p:J

    iget-wide v4, p0, LK3/J;->s:J

    const/4 v6, 0x1

    move v7, v6

    :cond_0
    :goto_0
    iget-object v8, p0, LK3/I;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :cond_1
    :goto_1
    cmp-long v10, v2, v8

    if-eqz v10, :cond_6

    iget-boolean v11, p0, LK3/I;->m:Z

    :try_start_0
    invoke-interface {v1}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_2

    move v13, v6

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {p0, v11, v13, v0}, LK3/I;->b(ZZLz3/g;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0, v12}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_5

    add-long/2addr v2, v11

    :cond_5
    add-long/2addr v4, v11

    iget v10, p0, LK3/I;->c:I

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    iget-object v10, p0, LK3/I;->e:LT4/b;

    invoke-interface {v10, v4, v5}, LT4/b;->f(J)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v2}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v3, p0, LK3/I;->e:LT4/b;

    invoke-interface {v3}, LT4/b;->cancel()V

    invoke-interface {v1}, LH3/h;->clear()V

    invoke-interface {v0, v2}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, LK3/I;->a:Lz3/o;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :cond_6
    :goto_3
    if-nez v10, :cond_7

    iget-boolean v8, p0, LK3/I;->m:Z

    invoke-interface {v1}, LH3/h;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v0}, LK3/I;->b(ZZLz3/g;)Z

    move-result v8

    if-eqz v8, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v7, v8, :cond_8

    iput-wide v2, p0, LK3/I;->p:J

    iput-wide v4, p0, LK3/J;->s:J

    neg-int v7, v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_8
    move v7, v8

    goto :goto_0
.end method

.method public final j()V
    .locals 4

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, LK3/I;->l:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, LK3/I;->m:Z

    iget-object v2, p0, LK3/J;->r:LH3/a;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lz3/g;->onNext(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, LK3/I;->n:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v1, p0, LK3/J;->r:LH3/a;

    invoke-interface {v1, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LK3/J;->r:LH3/a;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    :goto_0
    iget-object v0, p0, LK3/I;->a:Lz3/o;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :cond_3
    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final k()V
    .locals 9

    iget-object v0, p0, LK3/J;->r:LH3/a;

    iget-object v1, p0, LK3/I;->f:LH3/h;

    iget-wide v2, p0, LK3/I;->p:J

    const/4 v4, 0x1

    :cond_0
    :goto_0
    iget-object v5, p0, LK3/I;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    :cond_1
    :goto_1
    cmp-long v7, v2, v5

    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v1}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v8, p0, LK3/I;->l:Z

    if-eqz v8, :cond_2

    return-void

    :cond_2
    if-nez v7, :cond_3

    invoke-interface {v0}, Lz3/g;->onComplete()V

    iget-object v0, p0, LK3/I;->a:Lz3/o;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :cond_3
    invoke-interface {v0, v7}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v2, p0, LK3/I;->e:LT4/b;

    invoke-interface {v2}, LT4/b;->cancel()V

    invoke-interface {v0, v1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, LK3/I;->a:Lz3/o;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :cond_4
    iget-boolean v5, p0, LK3/I;->l:Z

    if-eqz v5, :cond_5

    return-void

    :cond_5
    invoke-interface {v1}, LH3/h;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Lz3/g;->onComplete()V

    iget-object v0, p0, LK3/I;->a:Lz3/o;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v4, v5, :cond_7

    iput-wide v2, p0, LK3/I;->p:J

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    move v4, v5

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LK3/I;->f:LH3/h;

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, LK3/I;->o:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-wide v1, p0, LK3/J;->s:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget v3, p0, LK3/I;->c:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, LK3/J;->s:J

    iget-object v3, p0, LK3/I;->e:LT4/b;

    invoke-interface {v3, v1, v2}, LT4/b;->f(J)V

    goto :goto_0

    :cond_0
    iput-wide v1, p0, LK3/J;->s:J

    :cond_1
    :goto_0
    return-object v0
.end method
