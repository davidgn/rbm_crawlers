.class public final LK3/j;
.super LK3/i;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Throwable;

.field public volatile e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz3/g;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LK3/j;->c:I

    .line 4
    invoke-direct {p0, p1}, LK3/i;-><init>(Lz3/g;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LK3/j;->l:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lz3/g;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LK3/j;->c:I

    .line 1
    invoke-direct {p0, p1}, LK3/i;-><init>(Lz3/g;)V

    .line 2
    new-instance p1, LO3/b;

    invoke-direct {p1, p2}, LO3/b;-><init>(I)V

    iput-object p1, p0, LK3/j;->l:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget v0, p0, LK3/j;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, LK3/j;->j()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LK3/j;->j()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    iget v0, p0, LK3/j;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LK3/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LK3/j;->l:Ljava/lang/Object;

    check-cast v0, LO3/b;

    invoke-virtual {v0}, LO3/b;->clear()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Throwable;)Z
    .locals 1

    iget v0, p0, LK3/j;->c:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LK3/j;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LK3/i;->b:LB3/c;

    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, LK3/j;->d:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/j;->e:Z

    invoke-virtual {p0}, LK3/j;->j()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_0
    iget-boolean v0, p0, LK3/j;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LK3/i;->b:LB3/c;

    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iput-object p1, p0, LK3/j;->d:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/j;->e:Z

    invoke-virtual {p0}, LK3/j;->j()V

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x0

    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, LK3/j;->c:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, LK3/i;->a:Lz3/g;

    iget-object v2, v0, LK3/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    cmp-long v11, v9, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_7

    iget-object v14, v0, LK3/i;->b:LB3/c;

    invoke-virtual {v14}, LB3/c;->c()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v14, v0, LK3/j;->e:Z

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    move/from16 v16, v3

    goto :goto_1

    :cond_3
    move/from16 v16, v12

    :goto_1
    if-eqz v14, :cond_5

    if-eqz v16, :cond_5

    iget-object v1, v0, LK3/j;->d:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, LK3/i;->b(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, LK3/i;->a()V

    goto :goto_3

    :cond_5
    if-eqz v16, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v1, v15}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_7
    :goto_2
    if-nez v11, :cond_b

    iget-object v5, v0, LK3/i;->b:LB3/c;

    invoke-virtual {v5}, LB3/c;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    iget-boolean v5, v0, LK3/j;->e:Z

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    move v12, v3

    :cond_9
    if-eqz v5, :cond_b

    if-eqz v12, :cond_b

    iget-object v1, v0, LK3/j;->d:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, LK3/i;->b(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, LK3/i;->a()V

    goto :goto_3

    :cond_b
    cmp-long v5, v9, v7

    if-eqz v5, :cond_c

    invoke-static {v0, v9, v10}, Landroid/support/v4/media/session/a;->u(Ljava/util/concurrent/atomic/AtomicLong;J)V

    :cond_c
    iget-object v5, v0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    :goto_3
    return-void

    :pswitch_0
    iget-object v1, v0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_7

    :cond_d
    iget-object v1, v0, LK3/i;->a:Lz3/g;

    iget-object v2, v0, LK3/j;->l:Ljava/lang/Object;

    check-cast v2, LO3/b;

    const/4 v3, 0x1

    move v4, v3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_4
    cmp-long v11, v9, v5

    if-eqz v11, :cond_14

    iget-object v12, v0, LK3/i;->b:LB3/c;

    invoke-virtual {v12}, LB3/c;->c()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v2}, LO3/b;->clear()V

    goto :goto_7

    :cond_f
    iget-boolean v12, v0, LK3/j;->e:Z

    invoke-virtual {v2}, LO3/b;->poll()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_10

    move v14, v3

    goto :goto_5

    :cond_10
    const/4 v14, 0x0

    :goto_5
    if-eqz v12, :cond_12

    if-eqz v14, :cond_12

    iget-object v1, v0, LK3/j;->d:Ljava/lang/Throwable;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, LK3/i;->b(Ljava/lang/Throwable;)Z

    goto :goto_7

    :cond_11
    invoke-virtual/range {p0 .. p0}, LK3/i;->a()V

    goto :goto_7

    :cond_12
    if-eqz v14, :cond_13

    goto :goto_6

    :cond_13
    invoke-interface {v1, v13}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_4

    :cond_14
    :goto_6
    if-nez v11, :cond_17

    iget-object v5, v0, LK3/i;->b:LB3/c;

    invoke-virtual {v5}, LB3/c;->c()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v2}, LO3/b;->clear()V

    goto :goto_7

    :cond_15
    iget-boolean v5, v0, LK3/j;->e:Z

    invoke-virtual {v2}, LO3/b;->isEmpty()Z

    move-result v6

    if-eqz v5, :cond_17

    if-eqz v6, :cond_17

    iget-object v1, v0, LK3/j;->d:Ljava/lang/Throwable;

    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, LK3/i;->b(Ljava/lang/Throwable;)Z

    goto :goto_7

    :cond_16
    invoke-virtual/range {p0 .. p0}, LK3/i;->a()V

    goto :goto_7

    :cond_17
    cmp-long v5, v9, v7

    if-eqz v5, :cond_18

    invoke-static {v0, v9, v10}, Landroid/support/v4/media/session/a;->u(Ljava/util/concurrent/atomic/AtomicLong;J)V

    :cond_18
    iget-object v5, v0, LK3/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_e

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LK3/j;->c:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LK3/j;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LK3/i;->b:LB3/c;

    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/i;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LK3/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, LK3/j;->j()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, LK3/j;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, LK3/i;->b:LB3/c;

    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/i;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, LK3/j;->l:Ljava/lang/Object;

    check-cast v0, LO3/b;

    invoke-virtual {v0, p1}, LO3/b;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LK3/j;->j()V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
