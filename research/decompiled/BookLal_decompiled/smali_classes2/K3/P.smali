.class public final LK3/P;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LB3/b;


# static fields
.field public static final n:[LK3/O;

.field public static final o:[LK3/O;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:I

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public volatile f:Ljava/io/Serializable;

.field public l:I

.field public volatile m:LH3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [LK3/O;

    sput-object v1, LK3/P;->n:[LK3/O;

    new-array v0, v0, [LK3/O;

    sput-object v0, LK3/P;->o:[LK3/O;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LK3/P;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LK3/P;->n:[LK3/O;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LK3/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LK3/P;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LK3/P;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, LK3/P;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    sget-object v1, LS3/f;->a:LS3/f;

    sget-object v2, LK3/P;->o:[LK3/O;

    iget-object v3, p0, LK3/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    iget-object v5, p0, LK3/P;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x1

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_8

    :cond_0
    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LK3/O;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    iget-object v1, v1, LK3/O;->a:Lz3/g;

    invoke-interface {v1}, Lz3/g;->onComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v6

    :cond_3
    check-cast p1, LS3/e;

    :cond_4
    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p0, :cond_4

    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [LK3/O;

    array-length v1, p2

    iget-object p1, p1, LS3/e;->a:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    array-length v1, p2

    :goto_3
    if-ge v0, v1, :cond_7

    aget-object v2, p2, v0

    iget-object v2, v2, LK3/O;->a:Lz3/g;

    invoke-interface {v2, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :cond_7
    return v6

    :cond_8
    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, LK3/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LK3/P;->o:[LK3/O;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK3/O;

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, LK3/P;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :goto_0
    iget-object v0, p0, LK3/P;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_2
    return-void
.end method

.method public final c(LT4/b;)V
    .locals 3

    iget-object v0, p0, LK3/P;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LR3/f;->b(Ljava/util/concurrent/atomic/AtomicReference;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, LH3/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LH3/e;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, LH3/d;->g(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, LK3/P;->l:I

    iput-object v0, p0, LK3/P;->m:LH3/h;

    sget-object p1, LS3/f;->a:LS3/f;

    iput-object p1, p0, LK3/P;->f:Ljava/io/Serializable;

    invoke-virtual {p0}, LK3/P;->f()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LK3/P;->l:I

    iput-object v0, p0, LK3/P;->m:LH3/h;

    iget v0, p0, LK3/P;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    return-void

    :cond_1
    new-instance v0, LO3/a;

    iget v1, p0, LK3/P;->b:I

    invoke-direct {v0, v1}, LO3/a;-><init>(I)V

    iput-object v0, p0, LK3/P;->m:LH3/h;

    iget v0, p0, LK3/P;->b:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 25

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, LK3/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK3/O;

    const/4 v3, 0x1

    move-object v4, v0

    move v5, v3

    :cond_1
    :goto_0
    iget-object v0, v1, LK3/P;->f:Ljava/io/Serializable;

    iget-object v6, v1, LK3/P;->m:LH3/h;

    if-eqz v6, :cond_3

    invoke-interface {v6}, LH3/h;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v3

    :goto_2
    invoke-virtual {v1, v0, v8}, LK3/P;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-nez v8, :cond_15

    array-length v0, v4

    array-length v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    const-wide/high16 v16, -0x8000000000000000L

    if-ge v12, v9, :cond_6

    aget-object v7, v4, v12

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    cmp-long v16, v18, v16

    if-eqz v16, :cond_5

    iget-wide v10, v7, LK3/O;->c:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    const-wide/16 v9, 0x1

    if-ne v0, v13, :cond_9

    iget-object v0, v1, LK3/P;->f:Ljava/io/Serializable;

    :try_start_0
    invoke-interface {v6}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-static {v6}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, v1, LK3/P;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    new-instance v0, LS3/e;

    invoke-direct {v0, v6}, LS3/e;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, v1, LK3/P;->f:Ljava/io/Serializable;

    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_7

    move v7, v3

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v1, v0, v7}, LK3/P;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, v1, LK3/P;->l:I

    if-eq v0, v3, :cond_1

    iget-object v0, v1, LK3/P;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    invoke-interface {v0, v9, v10}, LT4/b;->f(J)V

    goto :goto_0

    :cond_9
    const/4 v11, 0x0

    :goto_7
    int-to-long v12, v11

    cmp-long v0, v12, v14

    if-gez v0, :cond_12

    iget-object v0, v1, LK3/P;->f:Ljava/io/Serializable;

    :try_start_1
    invoke-interface {v6}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v0

    invoke-static {v8}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, v1, LK3/P;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    new-instance v0, LS3/e;

    invoke-direct {v0, v8}, LS3/e;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, v1, LK3/P;->f:Ljava/io/Serializable;

    const/4 v8, 0x0

    :goto_8
    if-nez v8, :cond_a

    move v7, v3

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v1, v0, v7}, LK3/P;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz v7, :cond_c

    move v8, v7

    goto :goto_e

    :cond_c
    array-length v0, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v12, v0, :cond_f

    aget-object v3, v4, v12

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    cmp-long v24, v22, v16

    if-eqz v24, :cond_e

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v22, v22, v20

    if-eqz v22, :cond_d

    move-object/from16 v22, v6

    move/from16 v23, v7

    iget-wide v6, v3, LK3/O;->c:J

    add-long/2addr v6, v9

    iput-wide v6, v3, LK3/O;->c:J

    goto :goto_b

    :cond_d
    move-object/from16 v22, v6

    move/from16 v23, v7

    :goto_b
    iget-object v3, v3, LK3/O;->a:Lz3/g;

    invoke-interface {v3, v8}, Lz3/g;->onNext(Ljava/lang/Object;)V

    goto :goto_c

    :cond_e
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    const/4 v13, 0x1

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v22

    move/from16 v7, v23

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK3/O;

    if-nez v13, :cond_11

    if-eq v0, v4, :cond_10

    goto :goto_d

    :cond_10
    move-object/from16 v6, v22

    move/from16 v8, v23

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_11
    :goto_d
    move-object v4, v0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_e
    if-lez v11, :cond_13

    iget v0, v1, LK3/P;->l:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14

    iget-object v0, v1, LK3/P;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    invoke-interface {v0, v12, v13}, LT4/b;->f(J)V

    goto :goto_f

    :cond_13
    const/4 v3, 0x1

    :cond_14
    :goto_f
    const-wide/16 v6, 0x0

    cmp-long v0, v14, v6

    if-eqz v0, :cond_15

    if-nez v8, :cond_15

    goto/16 :goto_0

    :cond_15
    neg-int v0, v5

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_16

    return-void

    :cond_16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [LK3/O;

    goto/16 :goto_0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, LK3/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LK3/P;->o:[LK3/O;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(LK3/O;)V
    .locals 7

    :goto_0
    iget-object v0, p0, LK3/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LK3/O;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

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

    sget-object v2, LK3/P;->n:[LK3/O;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [LK3/O;

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

    :goto_4
    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, LK3/P;->f:Ljava/io/Serializable;

    if-nez v0, :cond_0

    sget-object v0, LS3/f;->a:LS3/f;

    iput-object v0, p0, LK3/P;->f:Ljava/io/Serializable;

    invoke-virtual {p0}, LK3/P;->f()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LK3/P;->f:Ljava/io/Serializable;

    if-nez v0, :cond_0

    new-instance v0, LS3/e;

    invoke-direct {v0, p1}, LS3/e;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, LK3/P;->f:Ljava/io/Serializable;

    invoke-virtual {p0}, LK3/P;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LK3/P;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, LK3/P;->m:LH3/h;

    invoke-interface {v0, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, LC3/c;

    const-string v0, "Prefetch queue is full?!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/P;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, LK3/P;->f()V

    return-void
.end method
