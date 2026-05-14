.class public final LK3/A;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LT4/b;


# instance fields
.field public final a:Lz3/g;

.field public final b:I

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d:LB3/a;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:LS3/b;

.field public final l:LE3/c;

.field public final m:Ljava/util/concurrent/atomic/AtomicReference;

.field public n:LT4/b;

.field public volatile o:Z


# direct methods
.method public constructor <init>(Lz3/g;LE3/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LK3/A;->a:Lz3/g;

    iput-object p2, p0, LK3/A;->l:LE3/c;

    iput p3, p0, LK3/A;->b:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LK3/A;->c:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, LB3/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LB3/a;-><init>(I)V

    iput-object p1, p0, LK3/A;->d:LB3/a;

    new-instance p1, LS3/b;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LK3/A;->f:LS3/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LK3/A;->m:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LK3/A;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LO3/b;->clear()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LK3/A;->g()V

    :cond_0
    return-void
.end method

.method public final c(LT4/b;)V
    .locals 2

    iget-object v0, p0, LK3/A;->n:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LK3/A;->n:LT4/b;

    iget-object v0, p0, LK3/A;->a:Lz3/g;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    const v0, 0x7fffffff

    iget v1, p0, LK3/A;->b:I

    if-ne v1, v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/A;->o:Z

    iget-object v0, p0, LK3/A;->n:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    iget-object v0, p0, LK3/A;->d:LB3/a;

    invoke-virtual {v0}, LB3/a;->b()V

    return-void
.end method

.method public final f(J)V
    .locals 1

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/A;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LK3/A;->b()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LK3/A;->a:Lz3/g;

    iget-object v2, v0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v0, LK3/A;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x1

    move v5, v4

    :cond_0
    iget-object v6, v0, LK3/A;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_0
    cmp-long v12, v10, v6

    const/4 v13, 0x0

    if-eqz v12, :cond_9

    iget-boolean v14, v0, LK3/A;->o:Z

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, LK3/A;->a()V

    return-void

    :cond_1
    iget-object v14, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Throwable;

    if-eqz v14, :cond_2

    iget-object v2, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, LK3/A;->a()V

    invoke-interface {v1, v2}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-nez v14, :cond_3

    move v14, v4

    goto :goto_1

    :cond_3
    move v14, v13

    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LO3/b;

    if-eqz v15, :cond_4

    invoke-virtual {v15}, LO3/b;->poll()Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    move/from16 v16, v4

    goto :goto_3

    :cond_5
    move/from16 v16, v13

    :goto_3
    if-eqz v14, :cond_7

    if-eqz v16, :cond_7

    iget-object v2, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v1, v2}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Lz3/g;->onComplete()V

    :goto_4
    return-void

    :cond_7
    if-eqz v16, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v1, v15}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_0

    :cond_9
    :goto_5
    if-nez v12, :cond_10

    iget-boolean v6, v0, LK3/A;->o:Z

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, LK3/A;->a()V

    return-void

    :cond_a
    iget-object v6, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_b

    iget-object v2, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, LK3/A;->a()V

    invoke-interface {v1, v2}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_c

    move v6, v4

    goto :goto_6

    :cond_c
    move v6, v13

    :goto_6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LO3/b;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, LO3/b;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    move v13, v4

    :cond_e
    if-eqz v6, :cond_10

    if-eqz v13, :cond_10

    iget-object v2, v0, LK3/A;->f:LS3/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v1, v2}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_f
    invoke-interface {v1}, Lz3/g;->onComplete()V

    :goto_7
    return-void

    :cond_10
    cmp-long v6, v10, v8

    if-eqz v6, :cond_11

    iget-object v6, v0, LK3/A;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, v10, v11}, Landroid/support/v4/media/session/a;->u(Ljava/util/concurrent/atomic/AtomicLong;J)V

    iget v6, v0, LK3/A;->b:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_11

    iget-object v6, v0, LK3/A;->n:LT4/b;

    invoke-interface {v6, v10, v11}, LT4/b;->f(J)V

    :cond_11
    neg-int v5, v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void
.end method

.method public final h()LO3/b;
    .locals 3

    :goto_0
    iget-object v0, p0, LK3/A;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO3/b;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, LO3/b;

    sget v2, Lz3/d;->a:I

    invoke-direct {v1, v2}, LO3/b;-><init>(I)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, LK3/A;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, LK3/A;->f:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LK3/A;->d:LB3/a;

    invoke-virtual {p1}, LB3/a;->b()V

    invoke-virtual {p0}, LK3/A;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LK3/A;->l:LE3/c;

    invoke-interface {v0, p1}, LE3/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz3/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LK3/A;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, LL3/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LL3/c;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    iget-boolean v1, p0, LK3/A;->o:Z

    if-nez v1, :cond_0

    iget-object v1, p0, LK3/A;->d:LB3/a;

    invoke-virtual {v1, v0}, LB3/a;->a(LB3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LK3/A;->n:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0, p1}, LK3/A;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
