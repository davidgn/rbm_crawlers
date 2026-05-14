.class public final Ls3/l;
.super Lj3/S;
.source "SourceFile"


# static fields
.field public static final j:Lj3/a;


# instance fields
.field public final c:Ls3/f;

.field public final d:Lj3/w0;

.field public final e:Ls3/d;

.field public final f:Ll3/P1;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public h:Lj3/G;

.field public i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/a;

    const-string v1, "addressTrackerKey"

    invoke-direct {v0, v1}, Lj3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/l;->j:Lj3/a;

    return-void
.end method

.method public constructor <init>(Lj3/i;)V
    .locals 3

    sget-object v0, Ll3/P1;->b:Ll3/P1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ls3/c;

    invoke-direct {v1, p0, p1}, Ls3/c;-><init>(Ls3/l;Lj3/i;)V

    new-instance v2, Ls3/d;

    invoke-direct {v2, v1}, Ls3/d;-><init>(Ls3/c;)V

    iput-object v2, p0, Ls3/l;->e:Ls3/d;

    new-instance v1, Ls3/f;

    invoke-direct {v1}, Ls3/f;-><init>()V

    iput-object v1, p0, Ls3/l;->c:Ls3/f;

    invoke-virtual {p1}, Lj3/i;->c()Lj3/w0;

    move-result-object v1

    const-string v2, "syncContext"

    invoke-static {v1, v2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ls3/l;->d:Lj3/w0;

    invoke-virtual {p1}, Lj3/i;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string v1, "timeService"

    invoke-static {p1, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls3/l;->g:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Ls3/l;->f:Ll3/P1;

    return-void
.end method

.method public static g(Ljava/util/List;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/y;

    iget-object v2, v2, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0
.end method

.method public static h(Ls3/f;I)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/e;

    invoke-virtual {v1}, Ls3/e;->c()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lj3/O;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iget-object v3, v1, Lj3/O;->c:Ljava/lang/Object;

    check-cast v3, Ls3/i;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lj3/O;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj3/y;

    iget-object v7, v7, Lj3/y;->a:Ljava/util/List;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v6, v0, Ls3/l;->c:Ls3/f;

    iget-object v7, v6, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v7, v6, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls3/e;

    iput-object v3, v8, Ls3/e;->a:Ls3/i;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/SocketAddress;

    iget-object v8, v6, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ls3/e;

    invoke-direct {v9, v3}, Ls3/e;-><init>(Ls3/i;)V

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v4, v3, Ls3/i;->g:Ll3/I1;

    iget-object v4, v4, Ll3/I1;->a:Lj3/T;

    iget-object v7, v0, Ls3/l;->e:Ls3/d;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "newBalancerFactory"

    invoke-static {v4, v8}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v7, Ls3/d;->g:Lj3/T;

    invoke-virtual {v4, v8}, Lj3/T;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v8, v7, Ls3/d;->h:Lj3/S;

    invoke-virtual {v8}, Lj3/S;->f()V

    iget-object v8, v7, Ls3/d;->c:Ls3/b;

    iput-object v8, v7, Ls3/d;->h:Lj3/S;

    iput-object v9, v7, Ls3/d;->g:Lj3/T;

    sget-object v8, Lj3/q;->a:Lj3/q;

    iput-object v8, v7, Ls3/d;->i:Lj3/q;

    sget-object v8, Ls3/d;->l:Ll3/f;

    iput-object v8, v7, Ls3/d;->j:Lj3/B;

    iget-object v8, v7, Ls3/d;->e:Lj3/T;

    invoke-virtual {v4, v8}, Lj3/T;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance v8, Ls3/c;

    invoke-direct {v8, v7}, Ls3/c;-><init>(Ls3/d;)V

    invoke-virtual {v4, v8}, Lj3/T;->d(Lj3/i;)Lj3/S;

    move-result-object v10

    iput-object v10, v8, Ls3/c;->e:Ljava/lang/Object;

    iput-object v10, v7, Ls3/d;->h:Lj3/S;

    iput-object v4, v7, Ls3/d;->g:Lj3/T;

    iget-boolean v4, v7, Ls3/d;->k:Z

    if-nez v4, :cond_6

    invoke-virtual {v7}, Ls3/d;->h()V

    :cond_6
    :goto_3
    iget-object v4, v3, Ls3/i;->e:Ls3/h;

    if-nez v4, :cond_9

    iget-object v4, v3, Ls3/i;->f:Ls3/h;

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v0, Ls3/l;->h:Lj3/G;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lj3/G;->d()V

    iput-object v9, v0, Ls3/l;->i:Ljava/lang/Long;

    iget-object v4, v6, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls3/e;

    invoke-virtual {v6}, Ls3/e;->d()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ls3/e;->e()V

    :cond_8
    iput v2, v6, Ls3/e;->e:I

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v4, v0, Ls3/l;->i:Ljava/lang/Long;

    iget-object v8, v3, Ls3/i;->a:Ljava/lang/Long;

    const-wide/16 v9, 0x0

    if-nez v4, :cond_a

    move-object v4, v8

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v4, v0, Ls3/l;->f:Ll3/P1;

    invoke-virtual {v4}, Ll3/P1;->f()J

    move-result-wide v13

    iget-object v4, v0, Ls3/l;->i:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    sub-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_6
    iget-object v11, v0, Ls3/l;->h:Lj3/G;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lj3/G;->d()V

    iget-object v6, v6, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls3/e;

    iget-object v12, v11, Ls3/e;->b:Lj3/G;

    iget-object v13, v12, Lj3/G;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v13, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v12, v12, Lj3/G;->c:Ljava/lang/Object;

    check-cast v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v11, v11, Ls3/e;->c:Lj3/G;

    iget-object v12, v11, Lj3/G;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v11, v11, Lj3/G;->c:Ljava/lang/Object;

    check-cast v11, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_7

    :cond_b
    new-instance v15, LB/h;

    const/16 v6, 0x12

    invoke-direct {v15, v6, v0, v3, v2}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v22, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v13, v0, Ls3/l;->d:Lj3/w0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lj3/v0;

    invoke-direct {v2, v15}, Lj3/v0;-><init>(Ljava/lang/Runnable;)V

    new-instance v4, Lj3/u0;

    move-object v12, v4

    move-object v14, v2

    move-wide/from16 v16, v20

    invoke-direct/range {v12 .. v17}, Lj3/u0;-><init>(Lj3/w0;Lj3/v0;LB/h;J)V

    iget-object v6, v0, Ls3/l;->g:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v16, v6

    move-object/from16 v17, v4

    invoke-interface/range {v16 .. v22}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    new-instance v6, Lj3/G;

    invoke-direct {v6, v2, v4}, Lj3/G;-><init>(Lj3/v0;Ljava/util/concurrent/ScheduledFuture;)V

    iput-object v6, v0, Ls3/l;->h:Lj3/G;

    :cond_c
    sget-object v2, Lj3/b;->b:Lj3/b;

    iget-object v1, v1, Lj3/O;->b:Lj3/b;

    iget-object v2, v3, Ls3/i;->g:Ll3/I1;

    iget-object v2, v2, Ll3/I1;->b:Ljava/lang/Object;

    new-instance v3, Lj3/O;

    invoke-direct {v3, v5, v1, v2}, Lj3/O;-><init>(Ljava/util/List;Lj3/b;Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Ls3/d;->d(Lj3/O;)V

    const/4 v1, 0x1

    return v1
.end method

.method public final c(Lj3/r0;)V
    .locals 1

    iget-object v0, p0, Ls3/l;->e:Ls3/d;

    invoke-virtual {v0, p1}, Ls3/d;->c(Lj3/r0;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ls3/l;->e:Ls3/d;

    invoke-virtual {v0}, Ls3/d;->f()V

    return-void
.end method
