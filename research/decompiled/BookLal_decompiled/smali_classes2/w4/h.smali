.class public final Lw4/h;
.super Lx4/b;
.source "SourceFile"

# interfaces
.implements Lw4/f;


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lw4/h;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lw4/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/h;->_state$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lw4/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lw4/g;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lw4/g;

    iget v3, v2, Lw4/g;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lw4/g;->m:I

    goto :goto_0

    :cond_0
    new-instance v2, Lw4/g;

    check-cast v0, Ld4/c;

    invoke-direct {v2, v1, v0}, Lw4/g;-><init>(Lw4/h;Ld4/c;)V

    :goto_0
    iget-object v0, v2, Lw4/g;->f:Ljava/lang/Object;

    sget-object v3, Lc4/a;->a:Lc4/a;

    iget v4, v2, Lw4/g;->m:I

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v4, v2, Lw4/g;->e:Ljava/lang/Object;

    iget-object v10, v2, Lw4/g;->d:Lt4/W;

    iget-object v11, v2, Lw4/g;->c:Lw4/j;

    iget-object v12, v2, Lw4/g;->b:Lw4/b;

    iget-object v13, v2, Lw4/g;->a:Lw4/h;

    :try_start_0
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lw4/g;->e:Ljava/lang/Object;

    iget-object v10, v2, Lw4/g;->d:Lt4/W;

    iget-object v11, v2, Lw4/g;->c:Lw4/j;

    iget-object v12, v2, Lw4/g;->b:Lw4/b;

    iget-object v13, v2, Lw4/g;->a:Lw4/h;

    :try_start_1
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :cond_3
    iget-object v11, v2, Lw4/g;->c:Lw4/j;

    iget-object v4, v2, Lw4/g;->b:Lw4/b;

    iget-object v13, v2, Lw4/g;->a:Lw4/h;

    :try_start_2
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lx4/b;->a:[Lx4/c;

    if-nez v0, :cond_5

    new-array v0, v9, [Lw4/j;

    iput-object v0, v1, Lx4/b;->a:[Lx4/c;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    :cond_5
    iget v4, v1, Lx4/b;->b:I

    array-length v10, v0

    if-lt v4, v10, :cond_6

    array-length v4, v0

    mul-int/2addr v4, v9

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v4, "copyOf(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, [Lx4/c;

    iput-object v4, v1, Lx4/b;->a:[Lx4/c;

    check-cast v0, [Lx4/c;

    :cond_6
    :goto_1
    iget v4, v1, Lx4/b;->c:I

    :goto_2
    aget-object v10, v0, v4

    if-nez v10, :cond_7

    new-instance v10, Lw4/j;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    aput-object v10, v0, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    array-length v11, v0

    if-lt v4, v11, :cond_8

    move v4, v8

    :cond_8
    move-object v11, v10

    check-cast v11, Lw4/j;

    sget-object v12, Lw4/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    goto :goto_2

    :cond_9
    sget-object v0, Lw4/i;->a:LG3/b;

    invoke-virtual {v12, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v4, v1, Lx4/b;->c:I

    iget v0, v1, Lx4/b;->b:I

    add-int/2addr v0, v5

    iput v0, v1, Lx4/b;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    check-cast v10, Lw4/j;

    move-object/from16 v4, p1

    move-object v13, v1

    move-object v11, v10

    :goto_3
    :try_start_4
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v0

    sget-object v10, Lt4/t;->b:Lt4/t;

    invoke-interface {v0, v10}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v0

    check-cast v0, Lt4/W;

    move-object v10, v0

    move-object v12, v4

    move-object v0, v7

    :goto_4
    sget-object v4, Lw4/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lt4/W;->c()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_5

    :cond_a
    check-cast v10, Lt4/g0;

    invoke-virtual {v10}, Lt4/g0;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    :cond_c
    sget-object v0, Lx4/f;->a:LG3/b;

    if-ne v4, v0, :cond_d

    move-object v0, v7

    goto :goto_6

    :cond_d
    move-object v0, v4

    :goto_6
    iput-object v13, v2, Lw4/g;->a:Lw4/h;

    iput-object v12, v2, Lw4/g;->b:Lw4/b;

    iput-object v11, v2, Lw4/g;->c:Lw4/j;

    iput-object v10, v2, Lw4/g;->d:Lt4/W;

    iput-object v4, v2, Lw4/g;->e:Ljava/lang/Object;

    iput v9, v2, Lw4/g;->m:I

    invoke-interface {v12, v0, v2}, Lw4/b;->b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    return-object v3

    :cond_e
    :goto_7
    move-object v0, v4

    :cond_f
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lw4/i;->a:LG3/b;

    sget-object v14, Lw4/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v14, v11, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    sget-object v15, Lw4/i;->b:LG3/b;

    if-ne v14, v15, :cond_10

    goto :goto_4

    :cond_10
    iput-object v13, v2, Lw4/g;->a:Lw4/h;

    iput-object v12, v2, Lw4/g;->b:Lw4/b;

    iput-object v11, v2, Lw4/g;->c:Lw4/j;

    iput-object v10, v2, Lw4/g;->d:Lt4/W;

    iput-object v0, v2, Lw4/g;->e:Ljava/lang/Object;

    iput v6, v2, Lw4/g;->m:I

    new-instance v14, Lt4/f;

    invoke-static {v2}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v15

    invoke-direct {v14, v5, v15}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v14}, Lt4/f;->s()V

    :goto_8
    sget-object v15, Lw4/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v15, v11, v4, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    sget-object v5, LY3/j;->a:LY3/j;

    if-eqz v16, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v15, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v15, v4, :cond_14

    invoke-virtual {v14, v5}, Lt4/f;->resumeWith(Ljava/lang/Object;)V

    :goto_9
    invoke-virtual {v14}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object v4

    sget-object v14, Lc4/a;->a:Lc4/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v4, v14, :cond_12

    move-object v5, v4

    :cond_12
    if-ne v5, v3, :cond_13

    return-object v3

    :cond_13
    :goto_a
    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_14
    const/4 v5, 0x1

    goto :goto_8

    :goto_b
    monitor-enter v13

    :try_start_5
    iget v2, v13, Lx4/b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lx4/b;->b:I

    if-nez v2, :cond_15

    iput v8, v13, Lx4/b;->c:I

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_15
    :goto_c
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lw4/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v11, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v13

    throw v0

    :goto_d
    monitor-exit v13

    throw v0

    :goto_e
    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw4/h;->d(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lx4/f;->a:LG3/b;

    sget-object v1, Lw4/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 9

    if-nez p1, :cond_0

    sget-object p1, Lx4/f;->a:LG3/b;

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lw4/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    monitor-exit p0

    goto/16 :goto_5

    :cond_1
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lw4/h;->d:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_b

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lw4/h;->d:I

    iget-object v0, p0, Lx4/b;->a:[Lx4/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    :goto_0
    check-cast v0, [Lw4/j;

    if-eqz v0, :cond_9

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    if-eqz v3, :cond_8

    :goto_2
    sget-object v4, Lw4/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v6, Lw4/i;->b:LG3/b;

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v7, Lw4/i;->a:LG3/b;

    if-ne v5, v7, :cond_6

    :cond_4
    invoke-virtual {v4, v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v3, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast v5, Lt4/f;

    sget-object v3, LY3/j;->a:LY3/j;

    invoke-virtual {v5, v3}, Lt4/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_6

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lw4/h;->d:I

    if-ne v0, p1, :cond_a

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lw4/h;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_a
    :try_start_3
    iget-object p1, p0, Lx4/b;->a:[Lx4/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    move v8, v0

    move-object v0, p1

    move p1, v8

    goto :goto_0

    :goto_4
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_b
    add-int/lit8 p1, p1, 0x2

    :try_start_4
    iput p1, p0, Lw4/h;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    :goto_5
    return-void

    :goto_6
    monitor-exit p0

    throw p1
.end method
