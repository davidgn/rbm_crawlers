.class public final LX/j;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:LX/p;

.field public b:I

.field public final synthetic c:LR0/i;


# direct methods
.method public constructor <init>(LR0/i;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, LX/j;->c:LR0/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, LX/j;

    iget-object v0, p0, LX/j;->c:LR0/i;

    invoke-direct {p1, v0, p2}, LX/j;-><init>(LR0/i;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/u;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, LX/j;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, LX/j;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, LX/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v2, v1, LX/j;->b:I

    const/4 v3, 0x1

    const/4 v5, 0x2

    iget-object v6, v1, LX/j;->c:LR0/i;

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static/range {p1 .. p1}, LS4/b;->E(Ljava/lang/Object;)V

    move-object v3, v6

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, LX/j;->a:LX/p;

    invoke-static/range {p1 .. p1}, LS4/b;->E(Ljava/lang/Object;)V

    move-object v3, v2

    move-object/from16 v18, v6

    const/4 v4, 0x0

    move-object/from16 v2, p1

    goto/16 :goto_9

    :cond_2
    invoke-static/range {p1 .. p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object v2, v6, LR0/i;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1b

    :goto_0
    iget-object v2, v6, LR0/i;->a:Ljava/lang/Object;

    check-cast v2, Lt4/u;

    invoke-interface {v2}, Lt4/u;->d()Lb4/h;

    move-result-object v2

    invoke-static {v2}, Lt4/w;->d(Lb4/h;)V

    iget-object v2, v6, LR0/i;->b:Ljava/lang/Object;

    check-cast v2, LX/p;

    iget-object v7, v6, LR0/i;->c:Ljava/lang/Object;

    check-cast v7, Lv4/b;

    iput-object v2, v1, LX/j;->a:LX/p;

    iput v3, v1, LX/j;->b:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lv4/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v14, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv4/h;

    :goto_1
    sget-object v9, Lv4/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10, v3}, Lv4/b;->i(JZ)Z

    move-result v9

    const-string v15, "Channel was closed"

    if-nez v9, :cond_19

    sget-object v13, Lv4/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v16

    sget v9, Lv4/d;->b:I

    int-to-long v9, v9

    div-long v11, v16, v9

    rem-long v9, v16, v9

    long-to-int v10, v9

    move-object/from16 v18, v6

    iget-wide v5, v8, Ly4/u;->c:J

    cmp-long v5, v5, v11

    if-eqz v5, :cond_3

    invoke-virtual {v7, v11, v12, v8}, Lv4/b;->e(JLv4/h;)Lv4/h;

    move-result-object v5

    if-nez v5, :cond_4

    :goto_2
    move-object/from16 v6, v18

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    move-object v5, v8

    :cond_4
    const/4 v6, 0x0

    move-object v8, v7

    move-object v9, v5

    move v11, v10

    move/from16 p1, v11

    move-wide/from16 v11, v16

    move-object v4, v13

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Lv4/b;->o(Lv4/h;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Lv4/d;->m:LG3/b;

    const-string v11, "unexpected"

    if-eq v6, v13, :cond_18

    sget-object v12, Lv4/d;->o:LG3/b;

    if-ne v6, v12, :cond_6

    invoke-virtual {v7}, Lv4/b;->g()J

    move-result-wide v8

    cmp-long v4, v16, v8

    if-gez v4, :cond_5

    invoke-virtual {v5}, Ly4/d;->a()V

    :cond_5
    move-object v8, v5

    goto :goto_2

    :cond_6
    sget-object v8, Lv4/d;->n:LG3/b;

    if-ne v6, v8, :cond_14

    invoke-static/range {p0 .. p0}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-static {v6}, Lt4/w;->g(Lkotlin/coroutines/Continuation;)Lt4/f;

    move-result-object v6

    move-object v8, v7

    move-object v9, v5

    move/from16 v10, p1

    move-object/from16 v19, v11

    move-object v3, v12

    move-wide/from16 v11, v16

    move-object/from16 v20, v2

    move-object v2, v13

    move-object v13, v6

    :try_start_0
    invoke-virtual/range {v8 .. v13}, Lv4/b;->o(Lv4/h;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_7

    move/from16 v2, p1

    invoke-virtual {v6, v5, v2}, Lt4/f;->b(Ly4/u;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_7
    iget-object v2, v7, Lv4/b;->b:Lk4/l;

    iget-object v13, v6, Lt4/f;->e:Lb4/h;

    if-ne v8, v3, :cond_12

    :try_start_1
    invoke-virtual {v7}, Lv4/b;->g()J

    move-result-wide v8

    cmp-long v3, v16, v8

    if-gez v3, :cond_8

    invoke-virtual {v5}, Ly4/d;->a()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_8
    :goto_3
    invoke-virtual {v14, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/h;

    :goto_4
    sget-object v5, Lv4/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    const/4 v14, 0x1

    invoke-virtual {v7, v8, v9, v14}, Lv4/b;->i(JZ)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v2, Lv4/b;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    if-nez v2, :cond_9

    new-instance v2, Lv4/i;

    invoke-direct {v2, v15}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    :cond_9
    invoke-static {v2}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object v2

    invoke-virtual {v6, v2}, Lt4/f;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v16

    sget v5, Lv4/d;->b:I

    int-to-long v8, v5

    div-long v10, v16, v8

    rem-long v8, v16, v8

    long-to-int v5, v8

    iget-wide v8, v3, Ly4/u;->c:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    invoke-virtual {v7, v10, v11, v3}, Lv4/b;->e(JLv4/h;)Lv4/h;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    move-object v3, v8

    :cond_c
    move-object v8, v7

    move-object v9, v3

    move v10, v5

    move-wide/from16 v11, v16

    move-object v14, v13

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Lv4/b;->o(Lv4/h;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lv4/d;->m:LG3/b;

    if-ne v8, v9, :cond_d

    invoke-virtual {v6, v3, v5}, Lt4/f;->b(Ly4/u;I)V

    goto :goto_6

    :cond_d
    sget-object v5, Lv4/d;->o:LG3/b;

    if-ne v8, v5, :cond_f

    invoke-virtual {v7}, Lv4/b;->g()J

    move-result-wide v8

    cmp-long v5, v16, v8

    if-gez v5, :cond_e

    invoke-virtual {v3}, Ly4/d;->a()V

    :cond_e
    move-object v13, v14

    goto :goto_4

    :cond_f
    sget-object v4, Lv4/d;->n:LG3/b;

    if-eq v8, v4, :cond_11

    invoke-virtual {v3}, Ly4/d;->a()V

    if-eqz v2, :cond_10

    new-instance v3, Ly4/p;

    invoke-direct {v3, v2, v8, v14}, Ly4/p;-><init>(Lk4/l;Ljava/lang/Object;Lb4/h;)V

    goto :goto_5

    :cond_10
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v6, v8, v3}, Lt4/f;->a(Ljava/lang/Object;Lk4/l;)V

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object v14, v13

    invoke-virtual {v5}, Ly4/d;->a()V

    if-eqz v2, :cond_13

    new-instance v3, Ly4/p;

    invoke-direct {v3, v2, v8, v14}, Ly4/p;-><init>(Lk4/l;Ljava/lang/Object;Lb4/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_13
    const/4 v3, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual {v6}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :goto_7
    invoke-virtual {v6}, Lt4/f;->y()V

    throw v0

    :cond_14
    move-object/from16 v20, v2

    invoke-virtual {v5}, Ly4/d;->a()V

    move-object v2, v6

    :goto_8
    if-ne v2, v0, :cond_15

    return-object v0

    :cond_15
    move-object/from16 v3, v20

    const/4 v4, 0x0

    :goto_9
    iput-object v4, v1, LX/j;->a:LX/p;

    const/4 v5, 0x2

    iput v5, v1, LX/j;->b:I

    invoke-interface {v3, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_16

    return-object v0

    :cond_16
    move-object/from16 v3, v18

    :goto_a
    iget-object v2, v3, LR0/i;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_17

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :cond_17
    move-object v6, v3

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_18
    move-object v2, v11

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    sget-object v0, Lv4/b;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_1a

    new-instance v0, Lv4/i;

    invoke-direct {v0, v15}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    :cond_1a
    sget v2, Ly4/v;->a:I

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
