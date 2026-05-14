.class public final Ll3/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/s;


# static fields
.field public static final E:Lj3/a0;

.field public static final F:Lj3/a0;

.field public static final G:Lj3/r0;

.field public static final H:Ljava/util/Random;


# instance fields
.field public final synthetic A:Lj3/h0;

.field public final synthetic B:Lj3/g;

.field public final synthetic C:Lj3/u;

.field public final synthetic D:Lj1/a;

.field public final a:Lj3/h0;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lj3/w0;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lj3/f0;

.field public final f:Ll3/B1;

.field public final g:Ll3/d0;

.field public final h:Z

.field public final i:Ljava/lang/Object;

.field public final j:Ll3/e;

.field public final k:J

.field public final l:J

.field public final m:Ll3/A1;

.field public final n:LC4/v;

.field public volatile o:Ll3/x1;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public s:Lj3/r0;

.field public t:J

.field public u:Ll3/u;

.field public v:Lj0/d;

.field public w:Lj0/d;

.field public x:J

.field public y:Lj3/r0;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lj3/f0;->d:Lj3/n;

    sget-object v1, Lj3/c0;->d:Ljava/util/BitSet;

    new-instance v1, Lj3/a0;

    const-string v2, "grpc-previous-rpc-attempts"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/B0;->E:Lj3/a0;

    new-instance v1, Lj3/a0;

    const-string v2, "grpc-retry-pushback-ms"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/B0;->F:Lj3/a0;

    sget-object v0, Lj3/r0;->f:Lj3/r0;

    const-string v1, "Stream thrown away because RetriableStream committed"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    sput-object v0, Ll3/B0;->G:Lj3/r0;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ll3/B0;->H:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lj1/a;Lj3/h0;Lj3/f0;Lj3/g;Ll3/B1;Ll3/d0;Ll3/A1;Lj3/u;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ll3/B0;->D:Lj1/a;

    iput-object v2, v0, Ll3/B0;->A:Lj3/h0;

    iput-object v3, v0, Ll3/B0;->B:Lj3/g;

    move-object/from16 v6, p8

    iput-object v6, v0, Ll3/B0;->C:Lj3/u;

    iget-object v1, v1, Lj1/a;->b:Ljava/lang/Object;

    check-cast v1, Ll3/L0;

    iget-object v6, v1, Ll3/L0;->T:Ll3/e;

    iget-wide v7, v1, Ll3/L0;->U:J

    iget-wide v9, v1, Ll3/L0;->V:J

    iget-object v3, v3, Lj3/g;->b:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_0

    iget-object v3, v1, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v1, v1, Ll3/L0;->f:Ll3/k;

    iget-object v1, v1, Ll3/k;->a:Lm3/f;

    iget-object v1, v1, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Lj3/w0;

    new-instance v12, Ll3/n1;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-direct {v11, v12}, Lj3/w0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v11, v0, Ll3/B0;->c:Lj3/w0;

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, v0, Ll3/B0;->i:Ljava/lang/Object;

    new-instance v11, LC4/v;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, LC4/v;-><init>(I)V

    iput-object v11, v0, Ll3/B0;->n:LC4/v;

    new-instance v11, Ll3/x1;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v12, 0x8

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v11

    invoke-direct/range {v13 .. v21}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    iput-object v11, v0, Ll3/B0;->o:Ll3/x1;

    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v11, v0, Ll3/B0;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v11, v0, Ll3/B0;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v11, v0, Ll3/B0;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, v0, Ll3/B0;->a:Lj3/h0;

    iput-object v6, v0, Ll3/B0;->j:Ll3/e;

    iput-wide v7, v0, Ll3/B0;->k:J

    iput-wide v9, v0, Ll3/B0;->l:J

    iput-object v3, v0, Ll3/B0;->b:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Ll3/B0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v1, p3

    iput-object v1, v0, Ll3/B0;->e:Lj3/f0;

    iput-object v4, v0, Ll3/B0;->f:Ll3/B1;

    if-eqz v4, :cond_1

    iget-wide v1, v4, Ll3/B1;->b:J

    iput-wide v1, v0, Ll3/B0;->x:J

    :cond_1
    iput-object v5, v0, Ll3/B0;->g:Ll3/d0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v1

    :goto_1
    const-string v4, "Should not provide both retryPolicy and hedgingPolicy"

    invoke-static {v3, v4}, LZ2/l;->f(ZLjava/lang/String;)V

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, v0, Ll3/B0;->h:Z

    move-object/from16 v1, p7

    iput-object v1, v0, Ll3/B0;->m:Ll3/A1;

    return-void
.end method

.method public static p(Ll3/B0;Ll3/z1;)V
    .locals 0

    invoke-virtual {p0, p1}, Ll3/B0;->r(Ll3/z1;)LU0/n;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LU0/n;->run()V

    :cond_0
    return-void
.end method

.method public static q(Ll3/B0;Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ll3/B0;->v()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/B0;->w:Lj0/d;

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lj0/d;->b:Z

    iget-object v1, v1, Lj0/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    new-instance v2, Lj0/d;

    iget-object v3, p0, Ll3/B0;->i:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lj0/d;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Ll3/B0;->w:Lj0/d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Ll3/B0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ll3/B;

    const/16 v3, 0x15

    invoke-direct {v1, v3, p0, v2}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p0, p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-virtual {v2, p0}, Lj0/d;->d(Ljava/util/concurrent/ScheduledFuture;)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lj3/o;)V
    .locals 2

    new-instance v0, Ll3/o1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll3/o1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    new-instance v0, Ll3/r1;

    invoke-direct {v0, p1}, Ll3/r1;-><init>(Z)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    new-instance v0, Ll3/q1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ll3/q1;-><init>(II)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final d(Lj3/r0;)V
    .locals 13

    new-instance v0, Ll3/z1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/z1;-><init>(I)V

    new-instance v1, Ll3/Z0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ll3/z1;->a:Ll3/s;

    invoke-virtual {p0, v0}, Ll3/B0;->r(Ll3/z1;)LU0/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Ll3/B0;->s:Lj3/r0;

    invoke-virtual {v0}, LU0/n;->run()V

    iget-object v0, p0, Ll3/B0;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Ll3/t;->a:Ll3/t;

    new-instance v1, Lj3/f0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Ll3/B0;->x(Lj3/r0;Ll3/t;Lj3/f0;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v1, Ll3/x1;->c:Ljava/util/Collection;

    iget-object v2, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v2, v2, Ll3/x1;->f:Ll3/z1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v1, Ll3/x1;->f:Ll3/z1;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Ll3/B0;->y:Lj3/r0;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ll3/B0;->o:Ll3/x1;

    new-instance v12, Ll3/x1;

    iget-boolean v10, v2, Ll3/x1;->h:Z

    iget v11, v2, Ll3/x1;->e:I

    iget-object v4, v2, Ll3/x1;->b:Ljava/util/List;

    iget-object v5, v2, Ll3/x1;->c:Ljava/util/Collection;

    iget-object v6, v2, Ll3/x1;->d:Ljava/util/Collection;

    iget-object v7, v2, Ll3/x1;->f:Ll3/z1;

    iget-boolean v9, v2, Ll3/x1;->a:Z

    const/4 v8, 0x1

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    iput-object v12, p0, Ll3/B0;->o:Ll3/x1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object v0, v1, Ll3/z1;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->d(Lj3/r0;)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Lj3/v;)V
    .locals 2

    new-instance v0, Ll3/o1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ll3/o1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final f(Lq3/a;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Ll3/B0;->o:Ll3/x1;

    iget-boolean v1, v0, Ll3/x1;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v0, v0, Ll3/z1;->a:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->flush()V

    return-void

    :cond_0
    new-instance v0, Ll3/p1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/p1;-><init>(I)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final g(Ll3/u;)V
    .locals 6

    iput-object p1, p0, Ll3/B0;->u:Ll3/u;

    iget-object p1, p0, Ll3/B0;->D:Lj1/a;

    iget-object p1, p1, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/L0;

    iget-object p1, p1, Ll3/L0;->E:LR0/i;

    iget-object v0, p1, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, LR0/i;->c:Ljava/lang/Object;

    check-cast v1, Lj3/r0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    iget-object p1, p1, LR0/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ll3/B0;->d(Lj3/r0;)V

    return-void

    :cond_1
    iget-object p1, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->b:Ljava/util/List;

    new-instance v1, Ll3/w1;

    invoke-direct {v1, p0}, Ll3/w1;-><init>(Ll3/B0;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Ll3/B0;->s(IZ)Ll3/z1;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p0, Ll3/B0;->h:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v3, p0, Ll3/B0;->o:Ll3/x1;

    invoke-virtual {v3, v0}, Ll3/x1;->a(Ll3/z1;)Ll3/x1;

    move-result-object v3

    iput-object v3, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v3, p0, Ll3/B0;->o:Ll3/x1;

    invoke-virtual {p0, v3}, Ll3/B0;->w(Ll3/x1;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Ll3/B0;->m:Ll3/A1;

    if-eqz v3, :cond_4

    iget-object v4, v3, Ll3/A1;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v3, v3, Ll3/A1;->b:I

    if-le v4, v3, :cond_3

    const/4 p1, 0x1

    :cond_3
    if-eqz p1, :cond_5

    :cond_4
    new-instance v2, Lj0/d;

    iget-object p1, p0, Ll3/B0;->i:Ljava/lang/Object;

    invoke-direct {v2, p1}, Lj0/d;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Ll3/B0;->w:Lj0/d;

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_6

    iget-object p1, p0, Ll3/B0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ll3/B;

    const/16 v3, 0x15

    invoke-direct {v1, v3, p0, v2}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Ll3/B0;->g:Ll3/d0;

    iget-wide v3, v3, Ll3/d0;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, Lj0/d;->d(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Ll3/B0;->u(Ll3/z1;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final h(Lj3/x;)V
    .locals 2

    new-instance v0, Ll3/o1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ll3/o1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/z1;

    iget-object v1, v1, Ll3/z1;->a:Ll3/s;

    invoke-interface {v1}, Ll3/O1;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    new-instance v0, Ll3/p1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll3/p1;-><init>(I)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final k()Lj3/b;
    .locals 1

    iget-object v0, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v0, v0, Ll3/z1;->a:Ll3/s;

    invoke-interface {v0}, Ll3/s;->k()Lj3/b;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lj3/b;->b:Lj3/b;

    return-object v0
.end method

.method public final l(I)V
    .locals 2

    iget-object v0, p0, Ll3/B0;->o:Ll3/x1;

    iget-boolean v1, v0, Ll3/x1;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v0, v0, Ll3/z1;->a:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->l(I)V

    return-void

    :cond_0
    new-instance v0, Ll3/q1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ll3/q1;-><init>(II)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final m(I)V
    .locals 2

    new-instance v0, Ll3/q1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll3/q1;-><init>(II)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final n(LC4/v;)V
    .locals 5

    iget-object v0, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    iget-object v2, p0, Ll3/B0;->n:LC4/v;

    invoke-virtual {p1, v2, v1}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Ll3/x1;->f:Ll3/z1;

    if-eqz v0, :cond_0

    new-instance v0, LC4/v;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LC4/v;-><init>(I)V

    iget-object v1, v1, Ll3/x1;->f:Ll3/z1;

    iget-object v1, v1, Ll3/z1;->a:Ll3/s;

    invoke-interface {v1, v0}, Ll3/s;->n(LC4/v;)V

    const-string v1, "committed"

    invoke-virtual {p1, v0, v1}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, LC4/v;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LC4/v;-><init>(I)V

    iget-object v1, v1, Ll3/x1;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/z1;

    new-instance v3, LC4/v;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LC4/v;-><init>(I)V

    iget-object v2, v2, Ll3/z1;->a:Ll3/s;

    invoke-interface {v2, v3}, Ll3/s;->n(LC4/v;)V

    iget-object v2, v0, LC4/v;->b:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "open"

    invoke-virtual {p1, v0, v1}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final o()V
    .locals 2

    new-instance v0, Ll3/p1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ll3/p1;-><init>(I)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method

.method public final r(Ll3/z1;)LU0/n;
    .locals 19

    move-object/from16 v8, p0

    iget-object v9, v8, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v0, v8, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit v9

    return-object v1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v8, Ll3/B0;->o:Ll3/x1;

    iget-object v3, v0, Ll3/x1;->c:Ljava/util/Collection;

    iget-object v0, v8, Ll3/B0;->o:Ll3/x1;

    iget-object v2, v0, Ll3/x1;->f:Ll3/z1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const-string v6, "Already committed"

    invoke-static {v2, v6}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v2, v0, Ll3/x1;->c:Ljava/util/Collection;

    move-object/from16 v6, p1

    invoke-interface {v2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object v11, v1

    move-object v12, v2

    move/from16 v16, v4

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iget-object v7, v0, Ll3/x1;->b:Ljava/util/List;

    move-object v12, v2

    move/from16 v16, v5

    move-object v11, v7

    :goto_1
    new-instance v2, Ll3/x1;

    iget-boolean v5, v0, Ll3/x1;->h:Z

    iget v7, v0, Ll3/x1;->e:I

    iget-object v13, v0, Ll3/x1;->d:Ljava/util/Collection;

    iget-boolean v15, v0, Ll3/x1;->g:Z

    move-object v10, v2

    move-object/from16 v14, p1

    move/from16 v17, v5

    move/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    iput-object v2, v8, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v8, Ll3/B0;->j:Ll3/e;

    iget-wide v10, v8, Ll3/B0;->t:J

    neg-long v10, v10

    iget-object v0, v0, Ll3/e;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, v8, Ll3/B0;->v:Lj0/d;

    if-eqz v0, :cond_3

    iput-boolean v4, v0, Lj0/d;->b:Z

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    iput-object v1, v8, Ll3/B0;->v:Lj0/d;

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    iget-object v0, v8, Ll3/B0;->w:Lj0/d;

    if-eqz v0, :cond_4

    iput-boolean v4, v0, Lj0/d;->b:Z

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    iput-object v1, v8, Ll3/B0;->w:Lj0/d;

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    new-instance v10, LU0/n;

    const/4 v7, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, LU0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    monitor-exit v9

    return-object v10

    :goto_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s(IZ)Ll3/z1;
    .locals 7

    :cond_0
    iget-object v0, p0, Ll3/B0;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ll3/z1;

    invoke-direct {v0, p1}, Ll3/z1;-><init>(I)V

    new-instance v1, Ll3/v1;

    invoke-direct {v1, p0, v0}, Ll3/v1;-><init>(Ll3/B0;Ll3/z1;)V

    new-instance v2, Ll3/t1;

    invoke-direct {v2, v1}, Ll3/t1;-><init>(Ll3/v1;)V

    new-instance v1, Lj3/f0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v3, p0, Ll3/B0;->e:Lj3/f0;

    invoke-virtual {v1, v3}, Lj3/f0;->d(Lj3/f0;)V

    if-lez p1, :cond_2

    sget-object v3, Ll3/B0;->E:Lj3/a0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lj3/f0;->f(Lj3/c0;Ljava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Ll3/B0;->B:Lj3/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, Lj3/g;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v2

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lj3/f;->e:Ljava/util/List;

    new-instance v3, Lj3/g;

    invoke-direct {v3, v2}, Lj3/g;-><init>(Lj3/f;)V

    invoke-static {v3, v1, p1, p2}, Ll3/b0;->c(Lj3/g;Lj3/f0;IZ)[Lj3/B;

    move-result-object p1

    new-instance p2, Ll3/f1;

    iget-object v2, p0, Ll3/B0;->A:Lj3/h0;

    invoke-direct {p2, v2, v1, v3}, Ll3/f1;-><init>(Lj3/h0;Lj3/f0;Lj3/g;)V

    iget-object v4, p0, Ll3/B0;->D:Lj1/a;

    invoke-virtual {v4, p2}, Lj1/a;->r(Ll3/f1;)Ll3/v;

    move-result-object p2

    iget-object v4, p0, Ll3/B0;->C:Lj3/u;

    invoke-virtual {v4}, Lj3/u;->a()Lj3/u;

    move-result-object v5

    :try_start_0
    invoke-interface {p2, v2, v1, v3, p1}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4, v5}, Lj3/u;->c(Lj3/u;)V

    iput-object p1, v0, Ll3/z1;->a:Ll3/s;

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {v4, v5}, Lj3/u;->c(Lj3/u;)V

    throw p1
.end method

.method public final t(Ll3/u1;)V
    .locals 2

    iget-object v0, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    iget-boolean v1, v1, Ll3/x1;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v1, Ll3/x1;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v1, Ll3/x1;->c:Ljava/util/Collection;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/z1;

    invoke-interface {p1, v1}, Ll3/u1;->a(Ll3/z1;)V

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final u(Ll3/z1;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    iget-object v4, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Ll3/B0;->o:Ll3/x1;

    if-eqz v0, :cond_1

    iget-object v6, v5, Ll3/x1;->f:Ll3/z1;

    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    iget-boolean v6, v5, Ll3/x1;->g:Z

    if-eqz v6, :cond_1

    monitor-exit v4

    goto :goto_1

    :cond_1
    iget-object v6, v5, Ll3/x1;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_5

    invoke-virtual {v5, p1}, Ll3/x1;->e(Ll3/z1;)Ll3/x1;

    move-result-object v0

    iput-object v0, p0, Ll3/B0;->o:Ll3/x1;

    invoke-virtual {p0}, Ll3/B0;->i()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v4

    return-void

    :cond_2
    new-instance v1, LA2/h;

    const/16 v0, 0x19

    invoke-direct {v1, p0, v0}, LA2/h;-><init>(Ljava/lang/Object;I)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    iget-object p1, p0, Ll3/B0;->c:Lj3/w0;

    invoke-virtual {p1, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v0, p1, Ll3/z1;->a:Ll3/s;

    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v1, Ll3/x1;->f:Ll3/z1;

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Ll3/B0;->y:Lj3/r0;

    goto :goto_2

    :cond_4
    sget-object p1, Ll3/B0;->G:Lj3/r0;

    :goto_2
    invoke-interface {v0, p1}, Ll3/s;->d(Lj3/r0;)V

    return-void

    :cond_5
    :try_start_1
    iget-boolean v6, p1, Ll3/z1;->b:Z

    if-eqz v6, :cond_6

    monitor-exit v4

    return-void

    :cond_6
    add-int/lit16 v6, v2, 0x80

    iget-object v7, v5, Ll3/x1;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v5, Ll3/x1;->b:Ljava/util/List;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v5, v5, Ll3/x1;->b:Ljava/util/List;

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/u1;

    invoke-interface {v4, p1}, Ll3/u1;->a(Ll3/z1;)V

    instance-of v4, v4, Ll3/w1;

    if-eqz v4, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_8

    iget-object v4, p0, Ll3/B0;->o:Ll3/x1;

    iget-object v5, v4, Ll3/x1;->f:Ll3/z1;

    if-eqz v5, :cond_a

    if-eq v5, p1, :cond_a

    goto :goto_4

    :cond_a
    iget-boolean v4, v4, Ll3/x1;->g:Z

    if-eqz v4, :cond_8

    :cond_b
    :goto_4
    move v2, v6

    goto/16 :goto_0

    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final v()V
    .locals 13

    iget-object v0, p0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/B0;->w:Lj0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v1, Lj0/d;->b:Z

    iget-object v1, v1, Lj0/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Ll3/B0;->w:Lj0/d;

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Ll3/B0;->o:Ll3/x1;

    iget-boolean v3, v1, Ll3/x1;->h:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ll3/x1;

    iget-boolean v9, v1, Ll3/x1;->g:Z

    iget-boolean v10, v1, Ll3/x1;->a:Z

    iget-object v5, v1, Ll3/x1;->b:Ljava/util/List;

    iget-object v6, v1, Ll3/x1;->c:Ljava/util/Collection;

    iget-object v7, v1, Ll3/x1;->d:Ljava/util/Collection;

    iget-object v8, v1, Ll3/x1;->f:Ll3/z1;

    iget v12, v1, Ll3/x1;->e:I

    const/4 v11, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    move-object v1, v3

    :goto_1
    iput-object v1, p0, Ll3/B0;->o:Ll3/x1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final w(Ll3/x1;)Z
    .locals 2

    iget-object v0, p1, Ll3/x1;->f:Ll3/z1;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/B0;->g:Ll3/d0;

    iget v0, v0, Ll3/d0;->a:I

    iget v1, p1, Ll3/x1;->e:I

    if-ge v1, v0, :cond_0

    iget-boolean p1, p1, Ll3/x1;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final x(Lj3/r0;Ll3/t;Lj3/f0;)V
    .locals 7

    new-instance v6, LU0/p;

    const/4 v5, 0x4

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LU0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Ll3/B0;->c:Lj3/w0;

    invoke-virtual {p1, v6}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ll3/B0;->o:Ll3/x1;

    iget-boolean v1, v0, Ll3/x1;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v0, v0, Ll3/z1;->a:Ll3/s;

    iget-object v1, p0, Ll3/B0;->a:Lj3/h0;

    invoke-virtual {v1, p1}, Lj3/h0;->d(Ljava/lang/Object;)Lq3/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/O1;->f(Lq3/a;)V

    return-void

    :cond_0
    new-instance v0, Ll3/s1;

    invoke-direct {v0, p0, p1}, Ll3/s1;-><init>(Ll3/B0;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/B0;->t(Ll3/u1;)V

    return-void
.end method
