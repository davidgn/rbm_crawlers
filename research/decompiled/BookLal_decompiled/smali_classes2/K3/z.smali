.class public final LK3/z;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LT4/b;


# static fields
.field public static final v:[LK3/y;

.field public static final w:[LK3/y;


# instance fields
.field public final a:Lz3/g;

.field public final b:Ld3/a;

.field public final c:I

.field public final d:I

.field public volatile e:LH3/g;

.field public volatile f:Z

.field public final l:LS3/b;

.field public volatile m:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public p:LT4/b;

.field public q:J

.field public r:J

.field public s:I

.field public t:I

.field public final u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [LK3/y;

    sput-object v1, LK3/z;->v:[LK3/y;

    new-array v0, v0, [LK3/y;

    sput-object v0, LK3/z;->w:[LK3/y;

    return-void
.end method

.method public constructor <init>(Lz3/g;Ld3/a;II)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, LS3/b;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LK3/z;->l:LS3/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LK3/z;->n:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, LK3/z;->a:Lz3/g;

    iput-object p2, p0, LK3/z;->b:Ld3/a;

    iput p3, p0, LK3/z;->c:I

    iput p4, p0, LK3/z;->d:I

    const/4 p1, 0x1

    shr-int/lit8 p2, p3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LK3/z;->u:I

    sget-object p1, LK3/z;->v:[LK3/y;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-boolean v0, p0, LK3/z;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, LK3/z;->e:LH3/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LH3/h;->clear()V

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, LK3/z;->l:LS3/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LK3/z;->e:LH3/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LH3/h;->clear()V

    :cond_2
    iget-object v0, p0, LK3/z;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, LS3/d;->a:LS3/c;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, LK3/z;->a:Lz3/g;

    invoke-interface {v2, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LK3/z;->g()V

    :cond_0
    return-void
.end method

.method public final c(LT4/b;)V
    .locals 2

    iget-object v0, p0, LK3/z;->p:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LK3/z;->p:LT4/b;

    iget-object v0, p0, LK3/z;->a:Lz3/g;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    iget-boolean v0, p0, LK3/z;->m:Z

    if-nez v0, :cond_1

    iget v0, p0, LK3/z;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 4

    iget-boolean v0, p0, LK3/z;->m:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/z;->m:Z

    iget-object v0, p0, LK3/z;->p:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    iget-object v0, p0, LK3/z;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LK3/y;

    sget-object v2, LK3/z;->w:[LK3/y;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK3/y;

    if-eq v0, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LK3/z;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, LS3/d;->a:LS3/c;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LK3/z;->e:LH3/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LH3/h;->clear()V

    :cond_2
    return-void
.end method

.method public final f(J)V
    .locals 1

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LK3/z;->b()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 24

    move-object/from16 v1, p0

    iget-object v2, v1, LK3/z;->a:Lz3/g;

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, LK3/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, LK3/z;->e:LH3/g;

    iget-object v5, v1, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v14

    if-eqz v0, :cond_9

    :goto_2
    move-wide v7, v14

    const/16 v18, 0x0

    :goto_3
    cmp-long v19, v5, v14

    if-eqz v19, :cond_5

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, LK3/z;->a()Z

    move-result v18

    if-eqz v18, :cond_3

    return-void

    :cond_3
    if-nez v10, :cond_4

    move-object/from16 v18, v10

    goto :goto_4

    :cond_4
    invoke-interface {v2, v10}, Lz3/g;->onNext(Ljava/lang/Object;)V

    add-long v16, v16, v12

    add-long/2addr v7, v12

    sub-long/2addr v5, v12

    move-object/from16 v18, v10

    goto :goto_3

    :cond_5
    :goto_4
    cmp-long v10, v7, v14

    if-eqz v10, :cond_7

    if-eqz v9, :cond_6

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_5

    :cond_6
    iget-object v5, v1, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    :cond_7
    :goto_5
    cmp-long v7, v5, v14

    if-eqz v7, :cond_9

    if-nez v18, :cond_8

    goto :goto_6

    :cond_8
    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    :cond_9
    :goto_6
    iget-boolean v0, v1, LK3/z;->f:Z

    iget-object v7, v1, LK3/z;->e:LH3/g;

    iget-object v8, v1, LK3/z;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [LK3/y;

    array-length v10, v8

    if-eqz v0, :cond_d

    if-eqz v7, :cond_a

    invoke-interface {v7}, LH3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    if-nez v10, :cond_d

    iget-object v0, v1, LK3/z;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v3, LS3/d;->a:LS3/c;

    if-eq v0, v3, :cond_c

    if-nez v0, :cond_b

    invoke-interface {v2}, Lz3/g;->onComplete()V

    goto :goto_7

    :cond_b
    invoke-interface {v2, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    return-void

    :cond_d
    move/from16 v18, v4

    if-eqz v10, :cond_25

    iget-wide v3, v1, LK3/z;->r:J

    iget v0, v1, LK3/z;->s:I

    if-le v10, v0, :cond_e

    aget-object v7, v8, v0

    iget-wide v11, v7, LK3/y;->a:J

    cmp-long v7, v11, v3

    if-eqz v7, :cond_13

    :cond_e
    if-gt v10, v0, :cond_f

    const/4 v0, 0x0

    :cond_f
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v10, :cond_12

    aget-object v11, v8, v0

    iget-wide v11, v11, LK3/y;->a:J

    cmp-long v11, v11, v3

    if-nez v11, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_11

    const/4 v0, 0x0

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_12
    :goto_9
    iput v0, v1, LK3/z;->s:I

    aget-object v3, v8, v0

    iget-wide v3, v3, LK3/y;->a:J

    iput-wide v3, v1, LK3/z;->r:J

    :cond_13
    move v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v10, :cond_24

    invoke-virtual/range {p0 .. p0}, LK3/z;->a()Z

    move-result v7

    if-eqz v7, :cond_14

    return-void

    :cond_14
    aget-object v7, v8, v3

    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, LK3/z;->a()Z

    move-result v12

    if-eqz v12, :cond_15

    return-void

    :cond_15
    iget-object v12, v7, LK3/y;->f:LH3/h;

    if-nez v12, :cond_16

    move v13, v10

    goto/16 :goto_10

    :cond_16
    move v13, v10

    move-object/from16 v22, v11

    move-wide v10, v14

    :goto_c
    cmp-long v23, v5, v14

    if-eqz v23, :cond_1a

    :try_start_0
    invoke-interface {v12}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_17

    move-object/from16 v22, v14

    const-wide/16 v14, 0x0

    goto :goto_d

    :cond_17
    invoke-interface {v2, v14}, Lz3/g;->onNext(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, LK3/z;->a()Z

    move-result v15

    if-eqz v15, :cond_18

    return-void

    :cond_18
    const-wide/16 v20, 0x1

    sub-long v5, v5, v20

    add-long v10, v10, v20

    move-object/from16 v22, v14

    const-wide/16 v14, 0x0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v10, v0

    invoke-static {v10}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v7}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v0, v1, LK3/z;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v10}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LK3/z;->p:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual/range {p0 .. p0}, LK3/z;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    invoke-virtual {v1, v7}, LK3/z;->j(LK3/y;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x1

    const/4 v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_13

    :cond_1a
    :goto_d
    cmp-long v12, v10, v14

    if-eqz v12, :cond_1c

    if-nez v9, :cond_1b

    iget-object v5, v1, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v14, v10

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    goto :goto_e

    :cond_1b
    const-wide v5, 0x7fffffffffffffffL

    :goto_e
    invoke-virtual {v7, v10, v11}, LK3/y;->a(J)V

    const-wide/16 v10, 0x0

    goto :goto_f

    :cond_1c
    move-wide v10, v14

    :goto_f
    cmp-long v12, v5, v10

    if-eqz v12, :cond_1e

    if-nez v22, :cond_1d

    goto :goto_10

    :cond_1d
    move v10, v13

    move-object/from16 v11, v22

    const-wide/16 v14, 0x0

    goto/16 :goto_b

    :cond_1e
    :goto_10
    iget-boolean v10, v7, LK3/y;->e:Z

    iget-object v11, v7, LK3/y;->f:LH3/h;

    if-eqz v10, :cond_1f

    if-eqz v11, :cond_20

    invoke-interface {v11}, LH3/h;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1f

    goto :goto_11

    :cond_1f
    const-wide/16 v10, 0x1

    goto :goto_12

    :cond_20
    :goto_11
    invoke-virtual {v1, v7}, LK3/z;->j(LK3/y;)V

    invoke-virtual/range {p0 .. p0}, LK3/z;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    const-wide/16 v10, 0x1

    add-long v16, v16, v10

    const/4 v0, 0x1

    :goto_12
    const-wide/16 v14, 0x0

    cmp-long v7, v5, v14

    if-nez v7, :cond_22

    move v10, v0

    const/4 v7, 0x1

    goto :goto_14

    :cond_22
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v13, :cond_23

    const/4 v3, 0x0

    :cond_23
    const/4 v7, 0x1

    :goto_13
    add-int/2addr v4, v7

    move v10, v13

    const-wide/16 v14, 0x0

    goto/16 :goto_a

    :cond_24
    const/4 v7, 0x1

    move v10, v0

    :goto_14
    iput v3, v1, LK3/z;->s:I

    aget-object v0, v8, v3

    iget-wide v3, v0, LK3/y;->a:J

    iput-wide v3, v1, LK3/z;->r:J

    move-wide/from16 v3, v16

    const-wide/16 v5, 0x0

    goto :goto_15

    :cond_25
    const/4 v7, 0x1

    move-wide v5, v14

    move-wide/from16 v3, v16

    const/4 v10, 0x0

    :goto_15
    cmp-long v0, v3, v5

    if-eqz v0, :cond_26

    iget-boolean v0, v1, LK3/z;->m:Z

    if-nez v0, :cond_26

    iget-object v0, v1, LK3/z;->p:LT4/b;

    invoke-interface {v0, v3, v4}, LT4/b;->f(J)V

    :cond_26
    if-eqz v10, :cond_27

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_27
    move/from16 v3, v18

    neg-int v0, v3

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method public final h()LH3/g;
    .locals 2

    iget-object v0, p0, LK3/z;->e:LH3/g;

    if-nez v0, :cond_1

    iget v0, p0, LK3/z;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    new-instance v0, LO3/b;

    iget v1, p0, LK3/z;->d:I

    invoke-direct {v0, v1}, LO3/b;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, LO3/a;

    iget v1, p0, LK3/z;->c:I

    invoke-direct {v0, v1}, LO3/a;-><init>(I)V

    :goto_0
    iput-object v0, p0, LK3/z;->e:LH3/g;

    :cond_1
    return-object v0
.end method

.method public final j(LK3/y;)V
    .locals 7

    :goto_0
    iget-object v0, p0, LK3/z;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LK3/y;

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

    sget-object v2, LK3/z;->v:[LK3/y;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [LK3/y;

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

    iget-boolean v0, p0, LK3/z;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/z;->f:Z

    invoke-virtual {p0}, LK3/z;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LK3/z;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, LK3/z;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/z;->f:Z

    invoke-virtual {p0}, LK3/z;->b()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 9

    iget-boolean v0, p0, LK3/z;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LK3/z;->b:Ld3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LT4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v0, p1, Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    :try_start_1
    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    const v2, 0x7fffffff

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const-string v4, "Scalar queue full?!"

    if-nez v3, :cond_6

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v3, p0, LK3/z;->e:LH3/g;

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_1

    invoke-interface {v3}, LH3/h;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    iget-object v3, p0, LK3/z;->a:Lz3/g;

    invoke-interface {v3, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    iget-object p1, p0, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_2
    iget p1, p0, LK3/z;->c:I

    if-eq p1, v2, :cond_5

    iget-boolean p1, p0, LK3/z;->m:Z

    if-nez p1, :cond_5

    iget p1, p0, LK3/z;->t:I

    add-int/2addr p1, v0

    iput p1, p0, LK3/z;->t:I

    iget v0, p0, LK3/z;->u:I

    if-ne p1, v0, :cond_5

    iput v1, p0, LK3/z;->t:I

    iget-object p1, p0, LK3/z;->p:LT4/b;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {p0}, LK3/z;->h()LH3/g;

    move-result-object v3

    :cond_4
    invoke-interface {v3, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/z;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, LK3/z;->h()LH3/g;

    move-result-object v0

    invoke-interface {v0, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/z;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, LK3/z;->g()V

    goto :goto_2

    :cond_9
    iget p1, p0, LK3/z;->c:I

    if-eq p1, v2, :cond_d

    iget-boolean p1, p0, LK3/z;->m:Z

    if-nez p1, :cond_d

    iget p1, p0, LK3/z;->t:I

    add-int/2addr p1, v0

    iput p1, p0, LK3/z;->t:I

    iget v0, p0, LK3/z;->u:I

    if-ne p1, v0, :cond_d

    iput v1, p0, LK3/z;->t:I

    iget-object p1, p0, LK3/z;->p:LT4/b;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LK3/z;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, LK3/z;->b()V

    return-void

    :cond_a
    new-instance v0, LK3/y;

    iget-wide v2, p0, LK3/z;->q:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, LK3/z;->q:J

    invoke-direct {v0, p0, v2, v3}, LK3/y;-><init>(LK3/z;J)V

    :goto_1
    iget-object v2, p0, LK3/z;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LK3/y;

    sget-object v4, LK3/z;->w:[LK3/y;

    if-ne v3, v4, :cond_b

    invoke-static {v0}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto :goto_2

    :cond_b
    array-length v4, v3

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [LK3/y;

    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v5, v4

    :cond_c
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1, v0}, LT4/a;->a(Lz3/g;)V

    :cond_d
    :goto_2
    return-void

    :cond_e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_c

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LK3/z;->p:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0, p1}, LK3/z;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
