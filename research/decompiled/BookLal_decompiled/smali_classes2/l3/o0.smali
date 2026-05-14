.class public final Ll3/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/I;


# instance fields
.field public final a:Lj3/J;

.field public final b:Ljava/lang/String;

.field public final c:Ll3/P1;

.field public final d:Ll3/R1;

.field public final e:Ll3/k;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Lj3/F;

.field public final h:LR0/i;

.field public final i:Lj3/i;

.field public final j:Lj3/w0;

.field public final k:LJ4/y;

.field public volatile l:Ljava/util/List;

.field public m:Ll3/T;

.field public final n:LJ2/j;

.field public o:Lj3/G;

.field public p:Lj3/G;

.field public q:Ll3/T0;

.field public final r:Ljava/util/ArrayList;

.field public final s:Ll3/h0;

.field public t:Ll3/l0;

.field public volatile u:Ll3/l0;

.field public volatile v:Lj3/r;

.field public w:Lj3/r0;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ll3/P1;Ll3/k;Ljava/util/concurrent/ScheduledExecutorService;Ll3/P1;Lj3/w0;Ll3/R1;Lj3/F;LR0/i;Ll3/n;Lj3/J;Lj3/i;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Ll3/o0;->r:Ljava/util/ArrayList;

    new-instance v4, Ll3/h0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Ll3/h0;-><init>(Lj3/I;I)V

    iput-object v4, v0, Ll3/o0;->s:Ll3/h0;

    sget-object v4, Lj3/q;->d:Lj3/q;

    invoke-static {v4}, Lj3/r;->a(Lj3/q;)Lj3/r;

    move-result-object v4

    iput-object v4, v0, Ll3/o0;->v:Lj3/r;

    const-string v4, "addressGroups"

    invoke-static {p1, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "addressGroups is empty"

    invoke-static {v4, v5}, LZ2/l;->f(ZLjava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "addressGroups contains null entry"

    invoke-static {v5, v6}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ll3/o0;->l:Ljava/util/List;

    new-instance v4, LJ4/y;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v1, v4, LJ4/y;->c:Ljava/lang/Object;

    iput-object v4, v0, Ll3/o0;->k:LJ4/y;

    move-object v1, p2

    iput-object v1, v0, Ll3/o0;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Ll3/o0;->c:Ll3/P1;

    move-object v1, p4

    iput-object v1, v0, Ll3/o0;->e:Ll3/k;

    move-object v1, p5

    iput-object v1, v0, Ll3/o0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LJ2/j;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, LJ2/j;-><init>(I)V

    iput-object v1, v0, Ll3/o0;->n:LJ2/j;

    move-object v1, p7

    iput-object v1, v0, Ll3/o0;->j:Lj3/w0;

    move-object v1, p8

    iput-object v1, v0, Ll3/o0;->d:Ll3/R1;

    move-object/from16 v1, p9

    iput-object v1, v0, Ll3/o0;->g:Lj3/F;

    move-object/from16 v1, p10

    iput-object v1, v0, Ll3/o0;->h:LR0/i;

    const-string v1, "channelTracer"

    move-object/from16 v4, p11

    invoke-static {v4, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logId"

    invoke-static {v2, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Ll3/o0;->a:Lj3/J;

    const-string v1, "channelLogger"

    invoke-static {v3, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Ll3/o0;->i:Lj3/i;

    return-void
.end method

.method public static f(Ll3/o0;Lj3/q;)V
    .locals 1

    iget-object v0, p0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    invoke-static {p1}, Lj3/r;->a(Lj3/q;)Lj3/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll3/o0;->h(Lj3/r;)V

    return-void
.end method

.method public static g(Ll3/o0;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v1}, Lj3/w0;->d()V

    iget-object v2, v0, Ll3/o0;->o:Lj3/G;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "Should have no reconnectTask scheduled"

    invoke-static {v2, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v2, v0, Ll3/o0;->k:LJ4/y;

    iget v4, v2, LJ4/y;->a:I

    if-nez v4, :cond_1

    iget v4, v2, LJ4/y;->b:I

    if-nez v4, :cond_1

    iget-object v4, v0, Ll3/o0;->n:LJ2/j;

    iput-boolean v3, v4, LJ2/j;->b:Z

    invoke-virtual {v4}, LJ2/j;->b()V

    :cond_1
    iget-object v3, v2, LJ4/y;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget v4, v2, LJ4/y;->a:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj3/y;

    iget-object v3, v3, Lj3/y;->a:Ljava/util/List;

    iget v4, v2, LJ4/y;->b:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    instance-of v4, v3, Lj3/C;

    if-eqz v4, :cond_2

    check-cast v3, Lj3/C;

    iget-object v4, v3, Lj3/C;->b:Ljava/net/InetSocketAddress;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    :goto_1
    iget-object v5, v2, LJ4/y;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget v2, v2, LJ4/y;->a:I

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/y;

    iget-object v2, v2, Lj3/y;->b:Lj3/b;

    sget-object v5, Lj3/y;->d:Lj3/a;

    iget-object v6, v2, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ll3/w;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const-string v7, "unknown-authority"

    iput-object v7, v6, Ll3/w;->a:Ljava/lang/String;

    sget-object v7, Lj3/b;->b:Lj3/b;

    iput-object v7, v6, Ll3/w;->b:Lj3/b;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v0, Ll3/o0;->b:Ljava/lang/String;

    :goto_2
    const-string v7, "authority"

    invoke-static {v5, v7}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v6, Ll3/w;->a:Ljava/lang/String;

    iput-object v2, v6, Ll3/w;->b:Lj3/b;

    iput-object v3, v6, Ll3/w;->c:Lj3/C;

    new-instance v2, Ll3/n0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v0, Ll3/o0;->a:Lj3/J;

    iput-object v3, v2, Ll3/n0;->d:Lj3/J;

    new-instance v3, Ll3/l0;

    iget-object v5, v0, Ll3/o0;->e:Ll3/k;

    new-instance v7, Ll3/j;

    iget-object v15, v5, Ll3/k;->a:Lm3/f;

    iget-boolean v8, v15, Lm3/f;->s:Z

    if-nez v8, :cond_6

    new-instance v8, LI4/a;

    iget-object v9, v15, Lm3/f;->o:Ll3/d;

    iget-object v10, v9, Ll3/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    invoke-direct {v8, v9, v13, v14}, LI4/a;-><init>(Ll3/d;J)V

    new-instance v12, LA2/h;

    const/16 v9, 0x1d

    invoke-direct {v12, v8, v9}, LA2/h;-><init>(Ljava/lang/Object;I)V

    move-object v10, v4

    check-cast v10, Ljava/net/InetSocketAddress;

    new-instance v4, Lm3/n;

    iget-object v11, v6, Ll3/w;->a:Ljava/lang/String;

    iget-object v9, v6, Ll3/w;->b:Lj3/b;

    iget-object v8, v6, Ll3/w;->c:Lj3/C;

    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v17, v9

    move-object v9, v15

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-wide v1, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v18

    invoke-direct/range {v8 .. v14}, Lm3/n;-><init>(Lm3/f;Ljava/net/InetSocketAddress;Ljava/lang/String;Lj3/b;Lj3/C;LA2/h;)V

    iget-boolean v8, v15, Lm3/f;->n:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, v4, Lm3/n;->G:Z

    iput-wide v1, v4, Lm3/n;->H:J

    iget-wide v1, v15, Lm3/f;->p:J

    iput-wide v1, v4, Lm3/n;->I:J

    :cond_4
    iget-object v1, v6, Ll3/w;->a:Ljava/lang/String;

    invoke-direct {v7, v5, v4, v1}, Ll3/j;-><init>(Ll3/k;Ll3/z;Ljava/lang/String;)V

    iget-object v1, v0, Ll3/o0;->h:LR0/i;

    invoke-direct {v3, v7, v1}, Ll3/l0;-><init>(Ll3/z;LR0/i;)V

    invoke-virtual {v3}, Ll3/W;->e()Lj3/J;

    move-result-object v1

    move-object/from16 v2, v19

    iput-object v1, v2, Ll3/n0;->d:Lj3/J;

    iget-object v1, v0, Ll3/o0;->g:Lj3/F;

    iget-object v1, v1, Lj3/F;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ll3/W;->e()Lj3/J;

    move-result-object v4

    iget-wide v4, v4, Lj3/J;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/I;

    iput-object v3, v0, Ll3/o0;->t:Ll3/l0;

    iget-object v1, v0, Ll3/o0;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lj0/d;

    invoke-direct {v1, v0, v3}, Lj0/d;-><init>(Ll3/o0;Ll3/l0;)V

    invoke-virtual {v3, v1}, Ll3/W;->a(Ll3/S0;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object/from16 v3, v17

    invoke-virtual {v3, v1}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v1, v2, Ll3/n0;->d:Lj3/J;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Ll3/o0;->i:Lj3/i;

    const-string v2, "Started transport {0}"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lj3/i;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The transport factory is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Lj3/r0;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj3/r0;->a:Lj3/q0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj3/r0;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p0, p0, Lj3/r0;->c:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e()Lj3/J;
    .locals 1

    iget-object v0, p0, Ll3/o0;->a:Lj3/J;

    return-object v0
.end method

.method public final h(Lj3/r;)V
    .locals 3

    iget-object v0, p0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    iget-object v0, p0, Ll3/o0;->v:Lj3/r;

    iget-object v0, v0, Lj3/r;->a:Lj3/q;

    iget-object v1, p1, Lj3/r;->a:Lj3/q;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ll3/o0;->v:Lj3/r;

    iget-object v0, v0, Lj3/r;->a:Lj3/q;

    sget-object v1, Lj3/q;->e:Lj3/q;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot transition out of SHUTDOWN to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-object p1, p0, Ll3/o0;->v:Lj3/r;

    iget-object v0, p0, Ll3/o0;->d:Ll3/R1;

    iget-object v0, v0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v0, Lj3/Q;

    invoke-interface {v0, p1}, Lj3/Q;->a(Lj3/r;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    iget-object v1, p0, Ll3/o0;->a:Lj3/J;

    iget-wide v1, v1, Lj3/J;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v1, v2, v3}, LE4/d;->c(JLjava/lang/String;)V

    const-string v1, "addressGroups"

    iget-object v2, p0, Ll3/o0;->l:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
