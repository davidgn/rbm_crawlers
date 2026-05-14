.class public final Ll3/L0;
.super Lj3/V;
.source "SourceFile"

# interfaces
.implements Lj3/I;


# static fields
.field public static final d0:Ljava/util/logging/Logger;

.field public static final e0:Ljava/util/regex/Pattern;

.field public static final f0:Lj3/r0;

.field public static final g0:Lj3/r0;

.field public static final h0:Lj3/r0;

.field public static final i0:Ll3/R0;

.field public static final j0:Ll3/x0;

.field public static final k0:Ll3/E;


# instance fields
.field public A:Ljava/util/LinkedHashSet;

.field public final B:Ljava/lang/Object;

.field public final C:Ljava/util/HashSet;

.field public final D:Ll3/J;

.field public final E:LR0/i;

.field public final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public G:Z

.field public H:Z

.field public volatile I:Z

.field public final J:Ljava/util/concurrent/CountDownLatch;

.field public final K:Ll3/P1;

.field public final L:LR0/i;

.field public final M:Ll3/n;

.field public final N:Ll3/l;

.field public final O:Lj3/F;

.field public final P:Ll3/I0;

.field public Q:Ll3/R0;

.field public R:Z

.field public final S:Z

.field public final T:Ll3/e;

.field public final U:J

.field public final V:J

.field public final W:Z

.field public final X:Ll3/h0;

.field public Y:Lj3/G;

.field public Z:Ll3/T;

.field public final a:Lj3/J;

.field public final a0:Lj1/a;

.field public final b:Ljava/lang/String;

.field public final b0:Ll3/m1;

.field public final c:Lj3/l0;

.field public c0:I

.field public final d:LG4/o;

.field public final e:Ll3/R1;

.field public final f:Ll3/k;

.field public final g:Ll3/J0;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lj1/a;

.field public final j:Ll3/D0;

.field public final k:Ll3/D0;

.field public final l:Ll3/P1;

.field public final m:Lj3/w0;

.field public final n:Lj3/x;

.field public final o:Lj3/p;

.field public final p:Ll3/P1;

.field public final q:J

.field public final r:Le1/m;

.field public final s:Ll3/P1;

.field public final t:Lj3/h;

.field public u:Lj3/B;

.field public v:Z

.field public w:Ll3/E0;

.field public volatile x:Lj3/B;

.field public y:Z

.field public final z:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Ll3/L0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/L0;->d0:Ljava/util/logging/Logger;

    const-string v0, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll3/L0;->e0:Ljava/util/regex/Pattern;

    sget-object v0, Lj3/r0;->m:Lj3/r0;

    const-string v1, "Channel shutdownNow invoked"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    sput-object v1, Ll3/L0;->f0:Lj3/r0;

    const-string v1, "Channel shutdown invoked"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    sput-object v1, Ll3/L0;->g0:Lj3/r0;

    const-string v1, "Subchannel shutdown invoked"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    sput-object v0, Ll3/L0;->h0:Lj3/r0;

    new-instance v0, Ll3/R0;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ll3/R0;-><init>(Ll3/P0;Ljava/util/HashMap;Ljava/util/HashMap;Ll3/A1;Ljava/lang/Object;Ljava/util/Map;)V

    sput-object v0, Ll3/L0;->i0:Ll3/R0;

    new-instance v0, Ll3/x0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll3/L0;->j0:Ll3/x0;

    new-instance v0, Ll3/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll3/E;-><init>(I)V

    sput-object v0, Ll3/L0;->k0:Ll3/E;

    return-void
.end method

.method public constructor <init>(Ll3/M0;Lm3/f;Ll3/P1;Lj1/a;Ll3/P1;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    sget-object v4, Ll3/P1;->b:Ll3/P1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lj3/w0;

    new-instance v5, Ll3/A0;

    invoke-direct {v5, v0}, Ll3/A0;-><init>(Ll3/L0;)V

    invoke-direct {v13, v5}, Lj3/w0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v13, v0, Ll3/L0;->m:Lj3/w0;

    new-instance v5, Le1/m;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Le1/m;->a:Ljava/lang/Object;

    sget-object v6, Lj3/q;->d:Lj3/q;

    iput-object v6, v5, Le1/m;->b:Ljava/lang/Object;

    iput-object v5, v0, Ll3/L0;->r:Le1/m;

    new-instance v5, Ljava/util/HashSet;

    const/16 v6, 0x10

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v5, v6, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Ll3/L0;->z:Ljava/util/HashSet;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Ll3/L0;->B:Ljava/lang/Object;

    new-instance v5, Ljava/util/HashSet;

    const/4 v14, 0x1

    invoke-direct {v5, v14, v7}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v5, v0, Ll3/L0;->C:Ljava/util/HashSet;

    new-instance v5, LR0/i;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v0, v5, LR0/i;->d:Ljava/lang/Object;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, LR0/i;->a:Ljava/lang/Object;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, LR0/i;->b:Ljava/lang/Object;

    iput-object v5, v0, Ll3/L0;->E:LR0/i;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v5, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, v0, Ll3/L0;->J:Ljava/util/concurrent/CountDownLatch;

    iput v14, v0, Ll3/L0;->c0:I

    sget-object v5, Ll3/L0;->i0:Ll3/R0;

    iput-object v5, v0, Ll3/L0;->Q:Ll3/R0;

    iput-boolean v15, v0, Ll3/L0;->R:Z

    new-instance v5, Ll3/e;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ll3/e;-><init>(I)V

    iput-object v5, v0, Ll3/L0;->T:Ll3/e;

    new-instance v12, Li1/D;

    const/16 v5, 0x8

    invoke-direct {v12, v0, v5}, Li1/D;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Ll3/h0;

    invoke-direct {v5, v0, v6}, Ll3/h0;-><init>(Lj3/I;I)V

    iput-object v5, v0, Ll3/L0;->X:Ll3/h0;

    new-instance v5, Lj1/a;

    const/4 v6, 0x7

    invoke-direct {v5, v0, v6}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v0, Ll3/L0;->a0:Lj1/a;

    iget-object v11, v1, Ll3/M0;->e:Ljava/lang/String;

    const-string v5, "target"

    invoke-static {v11, v5}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v0, Ll3/L0;->b:Ljava/lang/String;

    new-instance v5, Lj3/J;

    sget-object v6, Lj3/J;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    const-string v8, "Channel"

    invoke-direct {v5, v8, v11, v6, v7}, Lj3/J;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v5, v0, Ll3/L0;->a:Lj3/J;

    iput-object v4, v0, Ll3/L0;->l:Ll3/P1;

    iget-object v6, v1, Ll3/M0;->a:Lj1/a;

    const-string v7, "executorPool"

    invoke-static {v6, v7}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Ll3/L0;->i:Lj1/a;

    iget-object v6, v6, Lj1/a;->b:Ljava/lang/Object;

    check-cast v6, Ll3/L1;

    invoke-static {v6}, Ll3/M1;->a(Ll3/L1;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/util/concurrent/Executor;

    const-string v6, "executor"

    invoke-static {v10, v6}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v0, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    new-instance v9, Ll3/D0;

    iget-object v6, v1, Ll3/M0;->b:Lj1/a;

    const-string v7, "offloadExecutorPool"

    invoke-static {v6, v7}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v6}, Ll3/D0;-><init>(Lj1/a;)V

    iput-object v9, v0, Ll3/L0;->k:Ll3/D0;

    new-instance v8, Ll3/k;

    invoke-direct {v8, v2, v9}, Ll3/k;-><init>(Lm3/f;Ll3/D0;)V

    iput-object v8, v0, Ll3/L0;->f:Ll3/k;

    new-instance v7, Ll3/J0;

    iget-object v2, v2, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v7, v2}, Ll3/J0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v7, v0, Ll3/L0;->g:Ll3/J0;

    new-instance v2, Ll3/n;

    invoke-virtual {v4}, Ll3/P1;->f()J

    move-result-wide v14

    const-string v6, "Channel for \'"

    move-object/from16 v16, v7

    const-string v7, "\'"

    invoke-static {v6, v11, v7}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v14, v15, v6}, Ll3/n;-><init>(Lj3/J;JLjava/lang/String;)V

    iput-object v2, v0, Ll3/L0;->M:Ll3/n;

    new-instance v14, Ll3/l;

    invoke-direct {v14, v2, v4}, Ll3/l;-><init>(Ll3/n;Ll3/P1;)V

    iput-object v14, v0, Ll3/L0;->N:Ll3/l;

    sget-object v7, Ll3/b0;->m:Ll3/g1;

    iget-boolean v2, v1, Ll3/M0;->n:Z

    iput-boolean v2, v0, Ll3/L0;->W:Z

    new-instance v4, Ll3/R1;

    iget-object v5, v1, Ll3/M0;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Ll3/R1;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Ll3/L0;->e:Ll3/R1;

    new-instance v15, Ll3/C1;

    iget v5, v1, Ll3/M0;->j:I

    iget v6, v1, Ll3/M0;->k:I

    invoke-direct {v15, v2, v5, v6, v4}, Ll3/C1;-><init>(ZIILl3/R1;)V

    iget-object v2, v1, Ll3/M0;->w:Li1/D;

    iget-object v2, v2, Li1/D;->b:Ljava/lang/Object;

    check-cast v2, Lm3/g;

    iget v4, v2, Lm3/g;->h:I

    invoke-static {v4}, Ls/e;->d(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v2, 0x50

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v2, Lm3/g;->h:I

    invoke-static {v2}, Le1/i;->n(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " not handled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    const/16 v2, 0x1bb

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LG4/o;

    move-object v5, v2

    move-object/from16 v4, v16

    move-object/from16 v17, v8

    move-object v8, v13

    move-object/from16 v16, v9

    move-object v9, v15

    move-object v15, v10

    move-object v10, v4

    move-object v4, v11

    move-object v11, v14

    move-object v14, v12

    move-object/from16 v12, v16

    invoke-direct/range {v5 .. v12}, LG4/o;-><init>(Ljava/lang/Integer;Ll3/g1;Lj3/w0;Ll3/C1;Ll3/J0;Ll3/l;Ll3/D0;)V

    iput-object v2, v0, Ll3/L0;->d:LG4/o;

    iget-object v5, v1, Ll3/M0;->d:Lj3/l0;

    iput-object v5, v0, Ll3/L0;->c:Lj3/l0;

    invoke-static {v4, v5, v2}, Ll3/L0;->s(Ljava/lang/String;Lj3/l0;LG4/o;)Lj3/B;

    move-result-object v2

    iput-object v2, v0, Ll3/L0;->u:Lj3/B;

    new-instance v2, Ll3/D0;

    move-object/from16 v4, p4

    invoke-direct {v2, v4}, Ll3/D0;-><init>(Lj1/a;)V

    iput-object v2, v0, Ll3/L0;->j:Ll3/D0;

    new-instance v2, Ll3/J;

    invoke-direct {v2, v15, v13}, Ll3/J;-><init>(Ljava/util/concurrent/Executor;Lj3/w0;)V

    iput-object v2, v0, Ll3/L0;->D:Ll3/J;

    invoke-virtual {v2, v14}, Ll3/J;->a(Ll3/S0;)Ljava/lang/Runnable;

    move-object/from16 v2, p3

    iput-object v2, v0, Ll3/L0;->s:Ll3/P1;

    iget-boolean v2, v1, Ll3/M0;->p:Z

    iput-boolean v2, v0, Ll3/L0;->S:Z

    new-instance v4, Ll3/I0;

    iget-object v5, v0, Ll3/L0;->u:Lj3/B;

    invoke-virtual {v5}, Lj3/B;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ll3/I0;-><init>(Ll3/L0;Ljava/lang/String;)V

    iput-object v4, v0, Ll3/L0;->P:Ll3/I0;

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/g;

    new-instance v7, Lj3/m;

    invoke-direct {v7, v4, v6}, Lj3/m;-><init>(Lj3/h;Lr3/g;)V

    move-object v4, v7

    goto :goto_1

    :cond_2
    iput-object v4, v0, Ll3/L0;->t:Lj3/h;

    const-string v4, "stopwatchSupplier"

    invoke-static {v3, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Ll3/L0;->p:Ll3/P1;

    iget-wide v3, v1, Ll3/M0;->i:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    iput-wide v3, v0, Ll3/L0;->q:J

    goto :goto_3

    :cond_3
    sget-wide v5, Ll3/M0;->z:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_4

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const-string v5, "invalid idleTimeoutMillis %s"

    invoke-static {v15, v5, v3, v4}, LZ2/l;->g(ZLjava/lang/String;J)V

    iget-wide v3, v1, Ll3/M0;->i:J

    iput-wide v3, v0, Ll3/L0;->q:J

    :goto_3
    new-instance v3, Ll3/m1;

    new-instance v4, Ll3/y0;

    const/4 v5, 0x6

    invoke-direct {v4, v0, v5}, Ll3/y0;-><init>(Ll3/L0;I)V

    move-object/from16 v5, v17

    iget-object v5, v5, Ll3/k;->a:Lm3/f;

    iget-object v5, v5, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, LJ2/j;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, LJ2/j;-><init>(I)V

    invoke-direct {v3, v4, v13, v5, v6}, Ll3/m1;-><init>(Ll3/y0;Lj3/w0;Ljava/util/concurrent/ScheduledExecutorService;LJ2/j;)V

    iput-object v3, v0, Ll3/L0;->b0:Ll3/m1;

    iget-object v3, v1, Ll3/M0;->g:Lj3/x;

    const-string v4, "decompressorRegistry"

    invoke-static {v3, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Ll3/L0;->n:Lj3/x;

    iget-object v3, v1, Ll3/M0;->h:Lj3/p;

    const-string v4, "compressorRegistry"

    invoke-static {v3, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Ll3/L0;->o:Lj3/p;

    iget-wide v3, v1, Ll3/M0;->l:J

    iput-wide v3, v0, Ll3/L0;->V:J

    iget-wide v3, v1, Ll3/M0;->m:J

    iput-wide v3, v0, Ll3/L0;->U:J

    new-instance v3, Ll3/P1;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Ll3/P1;-><init>(I)V

    iput-object v3, v0, Ll3/L0;->K:Ll3/P1;

    new-instance v3, LR0/i;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, LR0/i;-><init>(I)V

    iput-object v3, v0, Ll3/L0;->L:LR0/i;

    iget-object v1, v1, Ll3/M0;->o:Lj3/F;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Ll3/L0;->O:Lj3/F;

    iget-object v1, v1, Lj3/F;->a:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual/range {p0 .. p0}, Ll3/L0;->e()Lj3/J;

    move-result-object v3

    iget-wide v3, v3, Lj3/J;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/I;

    if-nez v2, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll3/L0;->R:Z

    :cond_5
    return-void
.end method

.method public static n(Ll3/L0;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ll3/L0;->v(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Ll3/L0;->D:Ll3/J;

    invoke-virtual {v1, v0}, Ll3/J;->h(Lj3/B;)V

    iget-object v0, p0, Ll3/L0;->N:Ll3/l;

    const-string v2, "Entering IDLE state"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ll3/l;->e(ILjava/lang/String;)V

    sget-object v0, Lj3/q;->d:Lj3/q;

    iget-object v2, p0, Ll3/L0;->r:Le1/m;

    invoke-virtual {v2, v0}, Le1/m;->b(Lj3/q;)V

    iget-object v0, p0, Ll3/L0;->B:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ll3/L0;->X:Ll3/h0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    iget-object v5, v1, LB/y;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ll3/L0;->r()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static o(Ll3/L0;)V
    .locals 6

    iget-boolean v0, p0, Ll3/L0;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll3/L0;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/o0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ll3/j0;

    sget-object v3, Ll3/L0;->f0:Lj3/r0;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Ll3/j0;-><init>(Ll3/o0;Lj3/r0;I)V

    iget-object v4, v1, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v4, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Ll3/j0;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v5}, Ll3/j0;-><init>(Ll3/o0;Lj3/r0;I)V

    invoke-virtual {v4, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ll3/L0;->C:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static p(Ll3/L0;)V
    .locals 3

    iget-boolean v0, p0, Ll3/L0;->I:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/L0;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/L0;->C:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/L0;->N:Ll3/l;

    const/4 v1, 0x2

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Ll3/l;->e(ILjava/lang/String;)V

    iget-object v0, p0, Ll3/L0;->O:Lj3/F;

    iget-object v0, v0, Lj3/F;->a:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ll3/L0;->e()Lj3/J;

    move-result-object v1

    iget-wide v1, v1, Lj3/J;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/I;

    iget-object v0, p0, Ll3/L0;->i:Lj1/a;

    iget-object v1, p0, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lj1/a;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Ll3/L0;->j:Ll3/D0;

    invoke-virtual {v0}, Ll3/D0;->a()V

    iget-object v0, p0, Ll3/L0;->k:Ll3/D0;

    invoke-virtual {v0}, Ll3/D0;->a()V

    iget-object v0, p0, Ll3/L0;->f:Ll3/k;

    invoke-virtual {v0}, Ll3/k;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/L0;->I:Z

    iget-object p0, p0, Ll3/L0;->J:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static s(Ljava/lang/String;Lj3/l0;LG4/o;)Lj3/B;
    .locals 7

    const-string v0, "/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p1, v3, p2}, Lj3/l0;->g(Ljava/net/URI;LG4/o;)Ll3/Q;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Ll3/L0;->e0:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1

    :try_start_1
    new-instance v3, Ljava/net/URI;

    iget-object v5, p1, Lj3/l0;->d:Lj3/m0;

    monitor-enter v5
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v6, p1, Lj3/l0;->d:Lj3/m0;

    iget-object v6, v6, Lj3/m0;->b:Ljava/lang/String;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v6, v4, v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {p1, v3, p2}, Lj3/l0;->g(Ljava/net/URI;LG4/o;)Ll3/Q;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    return-object v3

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string p2, "cannot find a NameResolver for "

    invoke-static {p2, p0, v4}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final e()Lj3/J;
    .locals 1

    iget-object v0, p0, Ll3/L0;->a:Lj3/J;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/L0;->t:Lj3/h;

    invoke-virtual {v0}, Lj3/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lj3/h0;Lj3/g;)Lj3/k;
    .locals 1

    iget-object v0, p0, Ll3/L0;->t:Lj3/h;

    invoke-virtual {v0, p1, p2}, Lj3/h;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    return-object p1
.end method

.method public final h(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    iget-object v0, p0, Ll3/L0;->J:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final i()V
    .locals 2

    new-instance v0, Ll3/y0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll3/y0;-><init>(Ll3/L0;I)V

    iget-object v1, p0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()Lj3/q;
    .locals 4

    iget-object v0, p0, Ll3/L0;->r:Le1/m;

    iget-object v0, v0, Le1/m;->b:Ljava/lang/Object;

    check-cast v0, Lj3/q;

    if-eqz v0, :cond_1

    sget-object v1, Lj3/q;->d:Lj3/q;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Ll3/L0;->m:Lj3/w0;

    new-instance v2, Ll3/y0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Ll3/y0;-><init>(Ll3/L0;I)V

    invoke-virtual {v1, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Channel state API is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Lj3/q;Lcom/google/firebase/firestore/remote/g;)V
    .locals 2

    new-instance v0, LJ/k;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p2, p1, v1}, LJ/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {p1, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic l()Lj3/V;
    .locals 0

    invoke-virtual {p0}, Ll3/L0;->u()V

    return-object p0
.end method

.method public final m()Lj3/V;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "shutdownNow() called"

    iget-object v2, p0, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v2, v0, v1}, Ll3/l;->e(ILjava/lang/String;)V

    invoke-virtual {p0}, Ll3/L0;->u()V

    iget-object v0, p0, Ll3/L0;->P:Ll3/I0;

    iget-object v1, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->m:Lj3/w0;

    new-instance v2, Ll3/G0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ll3/G0;-><init>(Ll3/I0;I)V

    invoke-virtual {v1, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Ll3/y0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ll3/y0;-><init>(Ll3/L0;I)V

    iget-object v1, p0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final q(Z)V
    .locals 2

    iget-object v0, p0, Ll3/L0;->b0:Ll3/m1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ll3/m1;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Ll3/m1;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, v0, Ll3/m1;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    iget-object v0, p0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ll3/L0;->y:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ll3/L0;->X:Ll3/h0;

    iget-object v0, v0, LB/y;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ll3/L0;->q(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ll3/L0;->t()V

    :goto_0
    iget-object v0, p0, Ll3/L0;->w:Ll3/E0;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    const-string v1, "Exiting idle mode"

    iget-object v2, p0, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v2, v0, v1}, Ll3/l;->e(ILjava/lang/String;)V

    new-instance v0, Ll3/E0;

    invoke-direct {v0, p0}, Ll3/E0;-><init>(Ll3/L0;)V

    iget-object v1, p0, Ll3/L0;->e:Ll3/R1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LR0/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, LR0/i;->d:Ljava/lang/Object;

    iput-object v0, v2, LR0/i;->a:Ljava/lang/Object;

    iget-object v3, v1, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v3, Lj3/U;

    iget-object v1, v1, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lj3/U;->b(Ljava/lang/String;)Lj3/T;

    move-result-object v3

    iput-object v3, v2, LR0/i;->c:Ljava/lang/Object;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lj3/T;->d(Lj3/i;)Lj3/S;

    move-result-object v1

    iput-object v1, v2, LR0/i;->b:Ljava/lang/Object;

    iput-object v2, v0, Ll3/E0;->d:LR0/i;

    iput-object v0, p0, Ll3/L0;->w:Ll3/E0;

    new-instance v1, LJ2/e;

    iget-object v2, p0, Ll3/L0;->u:Lj3/B;

    invoke-direct {v1, p0, v0, v2}, LJ2/e;-><init>(Ll3/L0;Ll3/E0;Lj3/B;)V

    iget-object v0, p0, Ll3/L0;->u:Lj3/B;

    invoke-virtual {v0, v1}, Lj3/B;->f(LJ2/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/L0;->v:Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find policy \'"

    const-string v3, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-static {v2, v1, v3}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public final t()V
    .locals 10

    iget-wide v0, p0, Ll3/L0;->q:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Ll3/L0;->b0:Ll3/m1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, v3, Ll3/m1;->d:LJ2/j;

    invoke-virtual {v4, v2}, LJ2/j;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v4, v0

    const/4 v6, 0x1

    iput-boolean v6, v3, Ll3/m1;->f:Z

    iget-wide v6, v3, Ll3/m1;->e:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    iget-object v6, v3, Ll3/m1;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v6, :cond_3

    :cond_1
    iget-object v6, v3, Ll3/m1;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v6, :cond_2

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    new-instance v6, Ll3/l1;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ll3/l1;-><init>(Ll3/m1;I)V

    iget-object v7, v3, Ll3/m1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v7, v6, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v3, Ll3/m1;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    iput-wide v4, v3, Ll3/m1;->e:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    iget-object v1, p0, Ll3/L0;->a:Lj3/J;

    iget-wide v1, v1, Lj3/J;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v1, v2, v3}, LE4/d;->c(JLjava/lang/String;)V

    const-string v1, "target"

    iget-object v2, p0, Ll3/L0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 5

    const-string v0, "shutdown() called"

    iget-object v1, p0, Ll3/L0;->N:Ll3/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ll3/l;->e(ILjava/lang/String;)V

    iget-object v0, p0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ll3/y0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ll3/y0;-><init>(Ll3/L0;I)V

    iget-object v1, p0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ll3/L0;->P:Ll3/I0;

    iget-object v2, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v2, v2, Ll3/L0;->m:Lj3/w0;

    new-instance v3, Ll3/G0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ll3/G0;-><init>(Ll3/I0;I)V

    invoke-virtual {v2, v3}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Ll3/y0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ll3/y0;-><init>(Ll3/L0;I)V

    invoke-virtual {v1, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Z)V
    .locals 3

    iget-object v0, p0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Ll3/L0;->v:Z

    const-string v2, "nameResolver is not started"

    invoke-static {v1, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v1, p0, Ll3/L0;->w:Ll3/E0;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "lbHelper is null"

    invoke-static {v1, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ll3/L0;->u:Lj3/B;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1}, Lj3/w0;->d()V

    iget-object v1, p0, Ll3/L0;->Y:Lj3/G;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lj3/G;->d()V

    iput-object v2, p0, Ll3/L0;->Y:Lj3/G;

    iput-object v2, p0, Ll3/L0;->Z:Ll3/T;

    :cond_2
    iget-object v1, p0, Ll3/L0;->u:Lj3/B;

    invoke-virtual {v1}, Lj3/B;->e()V

    iput-boolean v0, p0, Ll3/L0;->v:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Ll3/L0;->b:Ljava/lang/String;

    iget-object v0, p0, Ll3/L0;->c:Lj3/l0;

    iget-object v1, p0, Ll3/L0;->d:LG4/o;

    invoke-static {p1, v0, v1}, Ll3/L0;->s(Ljava/lang/String;Lj3/l0;LG4/o;)Lj3/B;

    move-result-object p1

    iput-object p1, p0, Ll3/L0;->u:Lj3/B;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Ll3/L0;->u:Lj3/B;

    :cond_4
    :goto_1
    iget-object p1, p0, Ll3/L0;->w:Ll3/E0;

    if-eqz p1, :cond_5

    iget-object p1, p1, Ll3/E0;->d:LR0/i;

    iget-object v0, p1, LR0/i;->b:Ljava/lang/Object;

    check-cast v0, Lj3/S;

    invoke-virtual {v0}, Lj3/S;->f()V

    iput-object v2, p1, LR0/i;->b:Ljava/lang/Object;

    iput-object v2, p0, Ll3/L0;->w:Ll3/E0;

    :cond_5
    iput-object v2, p0, Ll3/L0;->x:Lj3/B;

    return-void
.end method
