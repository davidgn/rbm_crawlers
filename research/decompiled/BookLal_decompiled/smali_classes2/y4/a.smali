.class public abstract Ly4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LG3/b;

.field public static final b:LG3/b;

.field public static final c:LG3/b;

.field public static final d:LG3/b;

.field public static final e:LG3/b;

.field public static final f:LG3/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LG3/b;

    const-string v1, "NO_DECISION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly4/a;->a:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "CLOSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly4/a;->b:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly4/a;->c:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly4/a;->d:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "CONDITION_FALSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly4/a;->e:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "NO_THREAD_ELEMENTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly4/a;->f:LG3/b;

    return-void
.end method

.method public static final a(Lk4/l;Ljava/lang/Object;Lb4/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ly4/a;->b(Lk4/l;Ljava/lang/Object;LB0/c;)LB0/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Lt4/w;->h(Lb4/h;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static final b(Lk4/l;Ljava/lang/Object;LB0/c;)LB0/c;
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {p2, p0}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :cond_0
    new-instance p2, LB0/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in undelivered element handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    invoke-direct {p2, p1, p0, v0}, LB0/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object p2
.end method

.method public static final c(Ly4/u;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4

    :goto_0
    iget-wide v0, p0, Ly4/u;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ly4/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p0

    :cond_1
    :goto_1
    sget-object v0, Ly4/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ly4/a;->b:LG3/b;

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    check-cast v0, Ly4/d;

    check-cast v0, Ly4/u;

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Ly4/u;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/u;

    :cond_5
    sget-object v1, Ly4/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ly4/u;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ly4/d;->d()V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0
.end method

.method public static final d(Ljava/lang/Object;)Ly4/u;
    .locals 1

    sget-object v0, Ly4/a;->b:LG3/b;

    if-eq p0, v0, :cond_0

    check-cast p0, Ly4/u;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Does not contain segment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Lb4/h;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Ly4/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu4/b;

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lu4/b;->q(Lb4/h;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p1, v1, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ly4/g;

    invoke-direct {v0, p0}, Ly4/g;-><init>(Lb4/h;)V

    invoke-static {p1, v0}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final f(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Ly4/a;->b:LG3/b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final h(Lb4/h;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Ly4/a;->f:LG3/b;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ly4/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ly4/z;

    iget-object p0, p1, Ly4/z;->b:[Lt4/p0;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    return-void

    :cond_1
    aget-object p0, p0, v0

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object p0, p1, Ly4/z;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    throw v1

    :cond_2
    sget-object p1, Ly4/x;->c:Ly4/x;

    invoke-interface {p0, v1, p1}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/a;->l(Ljava/lang/Object;)V

    throw v1
.end method

.method public static final i(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lk4/l;)V
    .locals 8

    instance-of v0, p0, Ly4/h;

    if-eqz v0, :cond_b

    check-cast p0, Ly4/h;

    invoke-static {p1}, LY3/g;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lt4/o;

    invoke-direct {v0, p1, p2}, Lt4/o;-><init>(Ljava/lang/Object;Lk4/l;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance p2, Lt4/n;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Lt4/n;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, p2

    :goto_0
    iget-object p2, p0, Ly4/h;->e:Ld4/c;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    iget-object v1, p0, Ly4/h;->d:Lt4/s;

    invoke-virtual {v1}, Lt4/s;->r()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iput-object v0, p0, Ly4/h;->f:Ljava/lang/Object;

    iput v3, p0, Lt4/D;->c:I

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lt4/s;->q(Lb4/h;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Lt4/q0;->a()Lt4/O;

    move-result-object v1

    iget-wide v4, v1, Lt4/O;->c:J

    const-wide v6, 0x100000000L

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    iput-object v0, p0, Ly4/h;->f:Ljava/lang/Object;

    iput v3, p0, Lt4/D;->c:I

    iget-object p1, v1, Lt4/O;->e:LZ3/e;

    if-nez p1, :cond_3

    new-instance p1, LZ3/e;

    invoke-direct {p1}, LZ3/e;-><init>()V

    iput-object p1, v1, Lt4/O;->e:LZ3/e;

    :cond_3
    invoke-virtual {p1, p0}, LZ3/e;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v1, v3}, Lt4/O;->u(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v3

    sget-object v4, Lt4/t;->b:Lt4/t;

    invoke-interface {v3, v4}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v3

    check-cast v3, Lt4/W;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lt4/W;->c()Z

    move-result v4

    if-nez v4, :cond_5

    check-cast v3, Lt4/g0;

    invoke-virtual {v3}, Lt4/g0;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ly4/h;->c(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {p1}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly4/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Ly4/h;->l:Ljava/lang/Object;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v3

    invoke-static {v3, v0}, Ly4/a;->m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ly4/a;->f:LG3/b;

    if-eq v0, v4, :cond_6

    invoke-static {p2, v3, v0}, Lt4/w;->q(Lkotlin/coroutines/Continuation;Lb4/h;Ljava/lang/Object;)Lt4/v0;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    move-object v4, v2

    :goto_1
    :try_start_1
    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_7

    :try_start_2
    invoke-virtual {v4}, Lt4/v0;->S()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    invoke-static {v3, v0}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    invoke-virtual {v1}, Lt4/O;->v()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_8

    :goto_3
    invoke-virtual {v1}, Lt4/O;->s()V

    goto :goto_5

    :catchall_1
    move-exception p1

    if-eqz v4, :cond_9

    :try_start_3
    invoke-virtual {v4}, Lt4/v0;->S()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    invoke-static {v3, v0}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    :cond_a
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lt4/D;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, Lt4/O;->s()V

    throw p0

    :cond_b
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public static synthetic j(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Ly4/a;->i(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lk4/l;)V

    return-void
.end method

.method public static final k(JJJLjava/lang/String;)J
    .locals 22

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    const/4 v5, 0x1

    sget v6, Ly4/w;->a:I

    :try_start_0
    invoke-static/range {p6 .. p6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_0

    move-wide/from16 v5, p0

    goto/16 :goto_6

    :cond_0
    const/16 v8, 0xa

    invoke-static {v8}, LL4/d;->f(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    invoke-static {v11, v12}, Lkotlin/jvm/internal/i;->h(II)I

    move-result v12

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v12, :cond_4

    if-ne v9, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v12, 0x2d

    if-ne v11, v12, :cond_5

    const-wide/high16 v13, -0x8000000000000000L

    move v10, v5

    :cond_4
    move v11, v10

    goto :goto_2

    :cond_5
    const/16 v12, 0x2b

    if-ne v11, v12, :cond_1

    move v11, v10

    move v10, v5

    :goto_2
    const-wide v15, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v17, 0x0

    move-wide/from16 v5, v17

    move-wide/from16 v18, v15

    :goto_3
    if-ge v10, v9, :cond_9

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Character;->digit(II)I

    move-result v12

    if-gez v12, :cond_6

    goto :goto_1

    :cond_6
    cmp-long v20, v5, v18

    if-gez v20, :cond_7

    cmp-long v18, v18, v15

    if-nez v18, :cond_1

    int-to-long v2, v8

    div-long v18, v13, v2

    cmp-long v2, v5, v18

    if-gez v2, :cond_7

    goto :goto_1

    :cond_7
    int-to-long v2, v8

    mul-long/2addr v5, v2

    int-to-long v2, v12

    add-long v20, v13, v2

    cmp-long v12, v5, v20

    if-gez v12, :cond_8

    goto :goto_1

    :cond_8
    sub-long/2addr v5, v2

    const/4 v2, 0x1

    add-int/2addr v10, v2

    move-wide/from16 v2, p4

    goto :goto_3

    :cond_9
    if-eqz v11, :cond_a

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_4
    move-object v6, v2

    goto :goto_5

    :cond_a
    neg-long v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    :goto_5
    const/16 v2, 0x27

    const-string v3, "System property \'"

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v0, v5

    if-gtz v7, :cond_b

    move-wide/from16 v7, p4

    cmp-long v9, v5, v7

    if-gtz v9, :cond_c

    :goto_6
    return-wide v5

    :cond_b
    move-wide/from16 v7, p4

    :cond_c
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' should be in range "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    const-string v1, ", but is \'"

    invoke-static {v10, v0, v7, v8, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has unrecognized value \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l(Ljava/lang/String;IIII)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v0, p1

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Ly4/a;->k(JJJLjava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p1, Ly4/x;->b:Ly4/x;

    invoke-interface {p0, v0, p1}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object p0, Ly4/a;->f:LG3/b;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Ly4/z;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Ly4/z;-><init>(ILb4/h;)V

    sget-object p1, Ly4/x;->d:Ly4/x;

    invoke-interface {p0, v0, p1}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->l(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
