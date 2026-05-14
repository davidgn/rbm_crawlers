.class public final LM3/h;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LB3/b;
.implements Lz3/m;


# static fields
.field public static final t:[LM3/g;

.field public static final u:[LM3/g;


# instance fields
.field public final a:Lz3/m;

.field public final b:LD4/a;

.field public final c:I

.field public final d:I

.field public volatile e:LH3/g;

.field public volatile f:Z

.field public final l:LS3/b;

.field public volatile m:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;

.field public o:LB3/b;

.field public p:J

.field public q:J

.field public r:I

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [LM3/g;

    sput-object v1, LM3/h;->t:[LM3/g;

    new-array v0, v0, [LM3/g;

    sput-object v0, LM3/h;->u:[LM3/g;

    return-void
.end method

.method public constructor <init>(Lz3/m;LD4/a;I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, LS3/b;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LM3/h;->l:LS3/b;

    iput-object p1, p0, LM3/h;->a:Lz3/m;

    iput-object p2, p0, LM3/h;->b:LD4/a;

    const p1, 0x7fffffff

    iput p1, p0, LM3/h;->c:I

    iput p3, p0, LM3/h;->d:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, LM3/h;->t:[LM3/g;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LM3/h;->n:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget-object v0, p0, LM3/h;->o:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LM3/h;->o:LB3/b;

    iget-object p1, p0, LM3/h;->a:Lz3/m;

    invoke-interface {p1, p0}, Lz3/m;->a(LB3/b;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, LM3/h;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/h;->m:Z

    invoke-virtual {p0}, LM3/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM3/h;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, LS3/d;->a:LS3/c;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 3

    iget-boolean v0, p0, LM3/h;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LM3/h;->l:LS3/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LM3/h;->e()Z

    iget-object v0, p0, LM3/h;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, LS3/d;->a:LS3/c;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, LM3/h;->a:Lz3/m;

    invoke-interface {v2, v0}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, LM3/h;->o:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    iget-object v0, p0, LM3/h;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LM3/g;

    sget-object v2, LM3/h;->u:[LM3/g;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LM3/g;

    if-eq v0, v2, :cond_1

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v3
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LM3/h;->g()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 13

    iget-object v0, p0, LM3/h;->a:Lz3/m;

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, LM3/h;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, LM3/h;->e:LH3/g;

    if-eqz v3, :cond_5

    :cond_2
    :goto_1
    invoke-virtual {p0}, LM3/h;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-interface {v3}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_4
    invoke-interface {v0, v4}, Lz3/m;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-boolean v3, p0, LM3/h;->f:Z

    iget-object v4, p0, LM3/h;->e:LH3/g;

    iget-object v5, p0, LM3/h;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [LM3/g;

    array-length v6, v5

    iget v7, p0, LM3/h;->c:I

    const v8, 0x7fffffff

    const/4 v9, 0x0

    if-ne v7, v8, :cond_1e

    if-eqz v3, :cond_9

    if-eqz v4, :cond_6

    invoke-interface {v4}, LH3/h;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    if-nez v6, :cond_9

    iget-object v1, p0, LM3/h;->l:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, LS3/d;->a:LS3/c;

    if-eq v1, v2, :cond_8

    if-nez v1, :cond_7

    invoke-interface {v0}, Lz3/m;->onComplete()V

    goto :goto_3

    :cond_7
    invoke-interface {v0, v1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    if-eqz v6, :cond_1b

    iget-wide v3, p0, LM3/h;->q:J

    iget v7, p0, LM3/h;->r:I

    if-le v6, v7, :cond_a

    aget-object v10, v5, v7

    iget-wide v10, v10, LM3/g;->a:J

    cmp-long v10, v10, v3

    if-eqz v10, :cond_f

    :cond_a
    if-gt v6, v7, :cond_b

    move v7, v9

    :cond_b
    move v10, v9

    :goto_4
    if-ge v10, v6, :cond_e

    aget-object v11, v5, v7

    iget-wide v11, v11, LM3/g;->a:J

    cmp-long v11, v11, v3

    if-nez v11, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_d

    move v7, v9

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    iput v7, p0, LM3/h;->r:I

    aget-object v3, v5, v7

    iget-wide v3, v3, LM3/g;->a:J

    iput-wide v3, p0, LM3/h;->q:J

    :cond_f
    move v3, v9

    move v4, v3

    :goto_6
    if-ge v3, v6, :cond_1a

    invoke-virtual {p0}, LM3/h;->c()Z

    move-result v10

    if-eqz v10, :cond_10

    return-void

    :cond_10
    aget-object v10, v5, v7

    :cond_11
    invoke-virtual {p0}, LM3/h;->c()Z

    move-result v11

    if-eqz v11, :cond_12

    return-void

    :cond_12
    iget-object v11, v10, LM3/g;->d:LH3/h;

    if-nez v11, :cond_13

    goto :goto_7

    :cond_13
    :try_start_0
    invoke-interface {v11}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_17

    if-nez v12, :cond_11

    :goto_7
    iget-boolean v11, v10, LM3/g;->c:Z

    iget-object v12, v10, LM3/g;->d:LH3/h;

    if-eqz v11, :cond_16

    if-eqz v12, :cond_14

    invoke-interface {v12}, LH3/h;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_16

    :cond_14
    invoke-virtual {p0, v10}, LM3/h;->h(LM3/g;)V

    invoke-virtual {p0}, LM3/h;->c()Z

    move-result v4

    if-eqz v4, :cond_15

    return-void

    :cond_15
    move v4, v1

    :cond_16
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_19

    move v7, v9

    goto :goto_8

    :cond_17
    invoke-interface {v0, v12}, Lz3/m;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, LM3/h;->c()Z

    move-result v12

    if-eqz v12, :cond_13

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v4}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v10}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v11, p0, LM3/h;->l:LS3/b;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v4}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, LM3/h;->c()Z

    move-result v4

    if-eqz v4, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0, v10}, LM3/h;->h(LM3/g;)V

    add-int/lit8 v3, v3, 0x1

    move v4, v1

    :cond_19
    :goto_8
    add-int/2addr v3, v1

    goto :goto_6

    :cond_1a
    iput v7, p0, LM3/h;->r:I

    aget-object v3, v5, v7

    iget-wide v5, v3, LM3/g;->a:J

    iput-wide v5, p0, LM3/h;->q:J

    move v9, v4

    :cond_1b
    if-eqz v9, :cond_1d

    iget v3, p0, LM3/h;->c:I

    if-ne v3, v8, :cond_1c

    goto/16 :goto_0

    :cond_1c
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    throw v0

    :goto_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_1d
    neg-int v2, v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_1e
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    throw v0

    :goto_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_a
.end method

.method public final h(LM3/g;)V
    .locals 7

    :goto_0
    iget-object v0, p0, LM3/h;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LM3/g;

    array-length v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-gez v4, :cond_3

    return-void

    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    sget-object v2, LM3/h;->t:[LM3/g;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [LM3/g;

    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, LM3/h;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/h;->f:Z

    invoke-virtual {p0}, LM3/h;->f()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LM3/h;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, LM3/h;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LM3/h;->f:Z

    invoke-virtual {p0}, LM3/h;->f()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, LM3/h;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LM3/h;->b:LD4/a;

    invoke-virtual {v0, p1}, LD4/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz3/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget v0, p0, LM3/h;->c:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    monitor-enter p0

    :try_start_1
    iget v0, p0, LM3/h;->s:I

    iget v1, p0, LM3/h;->c:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LM3/h;->s:I

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/concurrent/Callable;

    const/4 v0, 0x1

    const v2, 0x7fffffff

    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LM3/h;->a:Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_4
    iget-object v0, p0, LM3/h;->e:LH3/g;

    if-nez v0, :cond_6

    iget v0, p0, LM3/h;->c:I

    if-ne v0, v2, :cond_5

    new-instance v0, LO3/b;

    iget v1, p0, LM3/h;->d:I

    invoke-direct {v0, v1}, LO3/b;-><init>(I)V

    goto :goto_2

    :cond_5
    new-instance v0, LO3/a;

    iget v1, p0, LM3/h;->c:I

    invoke-direct {v0, v1}, LO3/a;-><init>(I)V

    :goto_2
    iput-object v0, p0, LM3/h;->e:LH3/g;

    :cond_6
    invoke-interface {v0, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scalar queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LM3/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, LM3/h;->g()V

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LM3/h;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, LM3/h;->f()V

    :goto_3
    iget p1, p0, LM3/h;->c:I

    if-ne p1, v2, :cond_9

    goto :goto_6

    :cond_9
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_3
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_a
    new-instance v0, LM3/g;

    iget-wide v2, p0, LM3/h;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, LM3/h;->p:J

    invoke-direct {v0, p0, v2, v3}, LM3/g;-><init>(LM3/h;J)V

    :goto_5
    iget-object v2, p0, LM3/h;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LM3/g;

    sget-object v4, LM3/h;->u:[LM3/g;

    if-ne v3, v4, :cond_b

    invoke-static {v0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto :goto_6

    :cond_b
    array-length v4, v3

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [LM3/g;

    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v5, v4

    :cond_c
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    :goto_6
    return-void

    :cond_d
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_c

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LM3/h;->o:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    invoke-virtual {p0, p1}, LM3/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
