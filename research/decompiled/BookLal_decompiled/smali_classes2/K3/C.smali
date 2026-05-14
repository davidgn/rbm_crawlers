.class public final LK3/C;
.super LR3/a;
.source "SourceFile"

# interfaces
.implements Lz3/g;


# instance fields
.field public final a:Lz3/g;

.field public final b:Ld3/a;

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public f:LT4/b;

.field public l:LH3/h;

.field public volatile m:Z

.field public volatile n:Z

.field public final o:Ljava/util/concurrent/atomic/AtomicReference;

.field public p:Ljava/util/Iterator;

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Lz3/g;Ld3/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LK3/C;->a:Lz3/g;

    iput-object p2, p0, LK3/C;->b:Ld3/a;

    iput p3, p0, LK3/C;->c:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, LK3/C;->d:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LK3/C;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final b(ZZLz3/g;LH3/h;)Z
    .locals 3

    iget-boolean v0, p0, LK3/C;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-object v1, p0, LK3/C;->p:Ljava/util/Iterator;

    invoke-interface {p4}, LH3/h;->clear()V

    return v2

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iget-object p1, p0, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object v1, p0, LK3/C;->p:Ljava/util/Iterator;

    invoke-interface {p4}, LH3/h;->clear()V

    invoke-interface {p3, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lz3/g;->onComplete()V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final c(LT4/b;)V
    .locals 3

    iget-object v0, p0, LK3/C;->f:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LK3/C;->f:LT4/b;

    instance-of v0, p1, LH3/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LH3/e;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, LH3/d;->g(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, LK3/C;->r:I

    iput-object v0, p0, LK3/C;->l:LH3/h;

    iput-boolean v2, p0, LK3/C;->m:Z

    iget-object p1, p0, LK3/C;->a:Lz3/g;

    invoke-interface {p1, p0}, Lz3/g;->c(LT4/b;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LK3/C;->r:I

    iput-object v0, p0, LK3/C;->l:LH3/h;

    iget-object v0, p0, LK3/C;->a:Lz3/g;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    iget v0, p0, LK3/C;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    return-void

    :cond_1
    new-instance v0, LO3/a;

    iget v1, p0, LK3/C;->c:I

    invoke-direct {v0, v1}, LO3/a;-><init>(I)V

    iput-object v0, p0, LK3/C;->l:LH3/h;

    iget-object v0, p0, LK3/C;->a:Lz3/g;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    iget v0, p0, LK3/C;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LK3/C;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/C;->n:Z

    iget-object v0, p0, LK3/C;->f:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LK3/C;->l:LH3/h;

    invoke-interface {v0}, LH3/h;->clear()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LK3/C;->p:Ljava/util/Iterator;

    iget-object v0, p0, LK3/C;->l:LH3/h;

    invoke-interface {v0}, LH3/h;->clear()V

    return-void
.end method

.method public final f(J)V
    .locals 1

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/C;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LK3/C;->h()V

    :cond_0
    return-void
.end method

.method public final g(I)I
    .locals 1

    iget p1, p0, LK3/C;->r:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h()V
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, LK3/C;->a:Lz3/g;

    iget-object v3, v1, LK3/C;->l:LH3/h;

    iget v0, v1, LK3/C;->r:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    iget-object v6, v1, LK3/C;->p:Ljava/util/Iterator;

    move v7, v4

    :goto_1
    const/4 v8, 0x0

    if-nez v6, :cond_7

    iget-boolean v9, v1, LK3/C;->m:Z

    :try_start_0
    invoke-interface {v3}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_2

    move v11, v4

    goto :goto_2

    :cond_2
    move v11, v5

    :goto_2
    invoke-virtual {v1, v9, v11, v2, v3}, LK3/C;->b(ZZLz3/g;LH3/h;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_7

    :try_start_1
    iget-object v6, v1, LK3/C;->b:Ld3/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_6

    if-eqz v0, :cond_5

    iget v6, v1, LK3/C;->q:I

    add-int/2addr v6, v4

    iget v9, v1, LK3/C;->d:I

    if-ne v6, v9, :cond_4

    iput v5, v1, LK3/C;->q:I

    iget-object v9, v1, LK3/C;->f:LT4/b;

    int-to-long v10, v6

    invoke-interface {v9, v10, v11}, LT4/b;->f(J)V

    goto :goto_3

    :cond_4
    iput v6, v1, LK3/C;->q:I

    :cond_5
    :goto_3
    move-object v6, v8

    goto :goto_1

    :cond_6
    iput-object v6, v1, LK3/C;->p:Ljava/util/Iterator;

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v3, v1, LK3/C;->f:LT4/b;

    invoke-interface {v3}, LT4/b;->cancel()V

    iget-object v3, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v4}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, v1, LK3/C;->f:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    iget-object v0, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v4}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v8, v1, LK3/C;->p:Ljava/util/Iterator;

    invoke-interface {v3}, LH3/h;->clear()V

    invoke-interface {v2, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :goto_4
    if-eqz v6, :cond_12

    iget-object v9, v1, LK3/C;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    :cond_8
    cmp-long v15, v13, v9

    if-eqz v15, :cond_d

    iget-boolean v15, v1, LK3/C;->m:Z

    invoke-virtual {v1, v15, v5, v2, v3}, LK3/C;->b(ZZLz3/g;LH3/h;)Z

    move-result v15

    if-eqz v15, :cond_9

    return-void

    :cond_9
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    const-string v11, "The iterator returned a null value"

    invoke-static {v15, v11}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-interface {v2, v15}, Lz3/g;->onNext(Ljava/lang/Object;)V

    iget-boolean v11, v1, LK3/C;->m:Z

    invoke-virtual {v1, v11, v5, v2, v3}, LK3/C;->b(ZZLz3/g;LH3/h;)Z

    move-result v11

    if-eqz v11, :cond_a

    return-void

    :cond_a
    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v11, :cond_8

    if-eqz v0, :cond_c

    iget v6, v1, LK3/C;->q:I

    add-int/2addr v6, v4

    iget v11, v1, LK3/C;->d:I

    if-ne v6, v11, :cond_b

    iput v5, v1, LK3/C;->q:I

    iget-object v11, v1, LK3/C;->f:LT4/b;

    int-to-long v4, v6

    invoke-interface {v11, v4, v5}, LT4/b;->f(J)V

    goto :goto_5

    :cond_b
    iput v6, v1, LK3/C;->q:I

    :cond_c
    :goto_5
    iput-object v8, v1, LK3/C;->p:Ljava/util/Iterator;

    move-object v6, v8

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, LS4/b;->D(Ljava/lang/Throwable;)V

    iput-object v8, v1, LK3/C;->p:Ljava/util/Iterator;

    iget-object v0, v1, LK3/C;->f:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    iget-object v0, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v3}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    iput-object v8, v1, LK3/C;->p:Ljava/util/Iterator;

    iget-object v3, v1, LK3/C;->f:LT4/b;

    invoke-interface {v3}, LT4/b;->cancel()V

    iget-object v3, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    :goto_6
    cmp-long v4, v13, v9

    if-nez v4, :cond_f

    iget-boolean v4, v1, LK3/C;->m:Z

    invoke-interface {v3}, LH3/h;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v6, :cond_e

    const/4 v5, 0x1

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v1, v4, v5, v2, v3}, LK3/C;->b(ZZLz3/g;LH3/h;)Z

    move-result v4

    if-eqz v4, :cond_f

    return-void

    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v4, v13, v4

    if-eqz v4, :cond_10

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v9, v4

    if-eqz v4, :cond_10

    iget-object v4, v1, LK3/C;->e:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v13

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_10
    if-nez v6, :cond_12

    :cond_11
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_12
    neg-int v4, v7

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_11

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, LK3/C;->p:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, LK3/C;->l:LH3/h;

    invoke-interface {v0}, LH3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, LK3/C;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/C;->m:Z

    invoke-virtual {p0}, LK3/C;->h()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LK3/C;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK3/C;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/C;->m:Z

    invoke-virtual {p0}, LK3/C;->h()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, LK3/C;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LK3/C;->r:I

    if-nez v0, :cond_1

    iget-object v0, p0, LK3/C;->l:LH3/h;

    invoke-interface {v0, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, LC3/c;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/C;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, LK3/C;->h()V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LK3/C;->p:Ljava/util/Iterator;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, LK3/C;->l:LH3/h;

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, LK3/C;->b:Ld3/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, p0, LK3/C;->p:Ljava/util/Iterator;

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, LK3/C;->p:Ljava/util/Iterator;

    :cond_3
    return-object v2
.end method
