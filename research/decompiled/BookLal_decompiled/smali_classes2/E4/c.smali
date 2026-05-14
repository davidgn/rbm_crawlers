.class public final LE4/c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LE4/c;->a:I

    iput-object p2, p0, LE4/c;->b:Ljava/lang/Object;

    iput-object p3, p0, LE4/c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, LE4/c;->a:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    iget-object v2, v1, LE4/c;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/concurrent/futures/j;

    if-eqz v0, :cond_1

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/concurrent/futures/j;->d:Z

    iget-object v3, v2, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/concurrent/futures/m;->b:Landroidx/concurrent/futures/l;

    invoke-virtual {v3, v0}, Landroidx/concurrent/futures/i;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v2, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    iput-object v0, v2, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/j;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, LE4/c;->c:Ljava/lang/Object;

    check-cast v0, Lt4/A;

    invoke-virtual {v0}, Lt4/A;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/j;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    iget-object v2, v1, LE4/c;->b:Ljava/lang/Object;

    check-cast v2, LB4/g;

    invoke-virtual {v2, v0}, LB4/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, LE4/c;->c:Ljava/lang/Object;

    check-cast v2, LR0/i;

    iget-object v3, v2, LR0/i;->c:Ljava/lang/Object;

    check-cast v3, Lv4/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lv4/d;->r:LG3/b;

    :cond_3
    sget-object v5, Lv4/b;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    move v11, v10

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_3

    const/4 v4, 0x0

    move v11, v4

    :cond_5
    :goto_1
    sget-object v4, Lv4/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    const/16 v5, 0x3c

    shr-long v8, v6, v5

    long-to-int v8, v8

    const-wide v12, 0xfffffffffffffffL

    if-eqz v8, :cond_7

    if-eq v8, v10, :cond_6

    goto :goto_4

    :cond_6
    and-long v8, v6, v12

    const/4 v14, 0x3

    :goto_2
    int-to-long v14, v14

    shl-long/2addr v14, v5

    add-long/2addr v14, v8

    move-wide v8, v14

    goto :goto_3

    :cond_7
    and-long v8, v6, v12

    const/4 v14, 0x2

    goto :goto_2

    :goto_3
    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_4
    invoke-virtual {v3}, Lv4/b;->c()V

    if-eqz v11, :cond_c

    :goto_5
    sget-object v4, Lv4/b;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    sget-object v6, Lv4/d;->p:LG3/b;

    goto :goto_6

    :cond_8
    sget-object v6, Lv4/d;->q:LG3/b;

    :cond_9
    :goto_6
    invoke-virtual {v4, v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v10, v5}, Lkotlin/jvm/internal/p;->a(ILjava/lang/Object;)V

    check-cast v5, Lk4/l;

    sget-object v4, Lv4/b;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v5, v3}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_9

    goto :goto_5

    :cond_c
    :goto_7
    iget-object v3, v2, LR0/i;->c:Ljava/lang/Object;

    check-cast v3, Lv4/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lv4/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v11, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    sget-object v6, Lv4/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v10}, Lv4/b;->i(JZ)Z

    move-result v8

    const/4 v14, 0x0

    if-eqz v8, :cond_d

    sget-object v4, Lv4/b;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    new-instance v4, Lv4/e;

    invoke-direct {v4, v3}, Lv4/e;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_d
    and-long/2addr v6, v12

    cmp-long v4, v4, v6

    sget-object v15, Lv4/g;->a:Lv4/f;

    if-ltz v4, :cond_e

    :goto_8
    move-object v4, v15

    goto/16 :goto_d

    :cond_e
    sget-object v9, Lv4/d;->k:LG3/b;

    sget-object v4, Lv4/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv4/h;

    :goto_9
    sget-object v5, Lv4/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v10}, Lv4/b;->i(JZ)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v4, Lv4/b;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    new-instance v4, Lv4/e;

    invoke-direct {v4, v3}, Lv4/e;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_f
    invoke-virtual {v11, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    sget v5, Lv4/d;->b:I

    int-to-long v5, v5

    move-object/from16 v16, v11

    div-long v10, v7, v5

    rem-long v5, v7, v5

    long-to-int v6, v5

    iget-wide v12, v4, Ly4/u;->c:J

    cmp-long v5, v12, v10

    if-eqz v5, :cond_11

    invoke-virtual {v3, v10, v11, v4}, Lv4/b;->e(JLv4/h;)Lv4/h;

    move-result-object v5

    if-nez v5, :cond_10

    :goto_a
    move-object/from16 v11, v16

    const/4 v10, 0x1

    const-wide v12, 0xfffffffffffffffL

    goto :goto_9

    :cond_10
    move-object v10, v5

    goto :goto_b

    :cond_11
    move-object v10, v4

    :goto_b
    move-object v4, v3

    move-object v5, v10

    move v11, v6

    move-wide v12, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v4 .. v9}, Lv4/b;->o(Lv4/h;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lv4/d;->m:LG3/b;

    if-ne v4, v5, :cond_14

    move-object/from16 v5, v17

    instance-of v4, v5, Lt4/x0;

    if-eqz v4, :cond_12

    move-object v9, v5

    check-cast v9, Lt4/x0;

    goto :goto_c

    :cond_12
    move-object v9, v14

    :goto_c
    if-eqz v9, :cond_13

    invoke-interface {v9, v10, v11}, Lt4/x0;->b(Ly4/u;I)V

    :cond_13
    invoke-virtual {v3, v12, v13}, Lv4/b;->q(J)V

    invoke-virtual {v10}, Ly4/u;->h()V

    goto :goto_8

    :cond_14
    move-object/from16 v5, v17

    sget-object v6, Lv4/d;->o:LG3/b;

    if-ne v4, v6, :cond_16

    invoke-virtual {v3}, Lv4/b;->g()J

    move-result-wide v6

    cmp-long v4, v12, v6

    if-gez v4, :cond_15

    invoke-virtual {v10}, Ly4/d;->a()V

    :cond_15
    move-object v9, v5

    move-object v4, v10

    goto :goto_a

    :cond_16
    sget-object v3, Lv4/d;->n:LG3/b;

    if-eq v4, v3, :cond_1a

    invoke-virtual {v10}, Ly4/d;->a()V

    move-object v15, v4

    goto/16 :goto_8

    :goto_d
    instance-of v3, v4, Lv4/f;

    if-nez v3, :cond_17

    goto :goto_e

    :cond_17
    move-object v4, v14

    :goto_e
    sget-object v3, LY3/j;->a:LY3/j;

    if-nez v4, :cond_18

    goto :goto_f

    :cond_18
    sget-object v5, LX/o;->a:LX/o;

    invoke-virtual {v5, v4, v0}, LX/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v3

    :goto_f
    if-nez v14, :cond_19

    return-object v3

    :cond_19
    const/4 v10, 0x1

    const-wide v12, 0xfffffffffffffffL

    goto/16 :goto_7

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/io/IOException;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, LE4/c;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LE4/i;

    iget-object v0, v1, LE4/c;->c:Ljava/lang/Object;

    check-cast v0, LE4/d;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, LE4/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
