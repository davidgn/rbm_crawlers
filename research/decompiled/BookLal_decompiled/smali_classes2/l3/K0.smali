.class public final Ll3/K0;
.super Lj3/P;
.source "SourceFile"


# instance fields
.field public final a:LJ2/e;

.field public final b:Lj3/J;

.field public final c:Ll3/l;

.field public final d:Ll3/n;

.field public e:Ljava/util/List;

.field public f:Ll3/o0;

.field public g:Z

.field public h:Z

.field public i:Lj3/G;

.field public final synthetic j:Ll3/L0;


# direct methods
.method public constructor <init>(Ll3/L0;LJ2/e;Ll3/E0;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/K0;->j:Ll3/L0;

    iget-object v0, p2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ll3/K0;->e:Ljava/util/List;

    sget-object v1, Ll3/L0;->d0:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ll3/K0;->a:LJ2/e;

    const-string p2, "helper"

    invoke-static {p3, p2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Ll3/L0;->t:Lj3/h;

    invoke-virtual {p2}, Lj3/h;->f()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lj3/J;

    sget-object v1, Lj3/J;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    const-string v3, "Subchannel"

    invoke-direct {p3, v3, p2, v1, v2}, Lj3/J;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p3, p0, Ll3/K0;->b:Lj3/J;

    new-instance p2, Ll3/n;

    iget-object p1, p1, Ll3/L0;->l:Ll3/P1;

    invoke-virtual {p1}, Ll3/P1;->f()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subchannel for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v1, v2, v0}, Ll3/n;-><init>(Lj3/J;JLjava/lang/String;)V

    iput-object p2, p0, Ll3/K0;->d:Ll3/n;

    new-instance p3, Ll3/l;

    invoke-direct {p3, p2, p1}, Ll3/l;-><init>(Ll3/n;Ll3/P1;)V

    iput-object p3, p0, Ll3/K0;->c:Ll3/l;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Ll3/K0;->j:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    iget-boolean v0, p0, Ll3/K0;->g:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/K0;->e:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lj3/b;
    .locals 1

    iget-object v0, p0, Ll3/K0;->a:LJ2/e;

    iget-object v0, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Lj3/b;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Ll3/K0;->g:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/K0;->f:Ll3/o0;

    return-object v0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Ll3/K0;->j:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    iget-boolean v0, p0, Ll3/K0;->g:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/K0;->f:Ll3/o0;

    iget-object v1, v0, Ll3/o0;->u:Ll3/l0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ll3/o0;->j:Lj3/w0;

    new-instance v2, Ll3/i0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ll3/i0;-><init>(Ll3/o0;I)V

    invoke-virtual {v1, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, Ll3/K0;->j:Ll3/L0;

    iget-object v1, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v1}, Lj3/w0;->d()V

    iget-object v1, p0, Ll3/K0;->f:Ll3/o0;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Ll3/K0;->h:Z

    return-void

    :cond_0
    iget-boolean v1, p0, Ll3/K0;->h:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ll3/L0;->H:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ll3/K0;->i:Lj3/G;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lj3/G;->d()V

    const/4 v1, 0x0

    iput-object v1, p0, Ll3/K0;->i:Lj3/G;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iput-boolean v2, p0, Ll3/K0;->h:Z

    :goto_0
    iget-boolean v1, v0, Ll3/L0;->H:Z

    if-nez v1, :cond_3

    new-instance v3, Ll3/v0;

    new-instance v1, LA2/h;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, LA2/h;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v1}, Ll3/v0;-><init>(Ljava/lang/Runnable;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v0, Ll3/L0;->f:Ll3/k;

    iget-object v1, v1, Ll3/k;->a:Lm3/f;

    iget-object v7, v1, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x5

    iget-object v2, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual/range {v2 .. v7}, Lj3/w0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lj3/G;

    move-result-object v0

    iput-object v0, p0, Ll3/K0;->i:Lj3/G;

    return-void

    :cond_3
    iget-object v0, p0, Ll3/K0;->f:Ll3/o0;

    sget-object v1, Ll3/L0;->g0:Lj3/r0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ll3/j0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Ll3/j0;-><init>(Ll3/o0;Lj3/r0;I)V

    iget-object v0, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v0, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lj3/Q;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Ll3/K0;->j:Ll3/L0;

    iget-object v2, v1, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v2}, Lj3/w0;->d()V

    iget-boolean v2, v0, Ll3/K0;->g:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "already started"

    invoke-static {v2, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v2, v0, Ll3/K0;->h:Z

    xor-int/2addr v2, v3

    const-string v4, "already shutdown"

    invoke-static {v2, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v2, v1, Ll3/L0;->H:Z

    xor-int/2addr v2, v3

    const-string v4, "Channel is being terminated"

    invoke-static {v2, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-boolean v3, v0, Ll3/K0;->g:Z

    new-instance v2, Ll3/o0;

    iget-object v3, v0, Ll3/K0;->a:LJ2/e;

    iget-object v3, v3, LJ2/e;->b:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    iget-object v3, v1, Ll3/L0;->t:Lj3/h;

    invoke-virtual {v3}, Lj3/h;->f()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Ll3/L0;->f:Ll3/k;

    iget-object v3, v9, Ll3/k;->a:Lm3/f;

    iget-object v10, v3, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v13, Ll3/R1;

    const/4 v3, 0x3

    move-object/from16 v4, p1

    invoke-direct {v13, v3, v0, v4}, Ll3/R1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Ll3/L0;->K:Ll3/P1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, LR0/i;

    const/16 v3, 0xd

    invoke-direct {v15, v3}, LR0/i;-><init>(I)V

    iget-object v3, v0, Ll3/K0;->c:Ll3/l;

    iget-object v4, v0, Ll3/K0;->d:Ll3/n;

    iget-object v8, v1, Ll3/L0;->s:Ll3/P1;

    iget-object v11, v1, Ll3/L0;->p:Ll3/P1;

    iget-object v12, v1, Ll3/L0;->m:Lj3/w0;

    iget-object v14, v1, Ll3/L0;->O:Lj3/F;

    iget-object v5, v0, Ll3/K0;->b:Lj3/J;

    move-object/from16 v17, v5

    move-object v5, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v3

    invoke-direct/range {v5 .. v18}, Ll3/o0;-><init>(Ljava/util/List;Ljava/lang/String;Ll3/P1;Ll3/k;Ljava/util/concurrent/ScheduledExecutorService;Ll3/P1;Lj3/w0;Ll3/R1;Lj3/F;LR0/i;Ll3/n;Lj3/J;Lj3/i;)V

    sget-object v7, Lj3/D;->a:Lj3/D;

    iget-object v3, v1, Ll3/L0;->l:Ll3/P1;

    invoke-virtual {v3}, Ll3/P1;->f()J

    move-result-wide v8

    new-instance v3, Lj3/E;

    const-string v6, "Child Subchannel started"

    move-object v5, v3

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lj3/E;-><init>(Ljava/lang/String;Lj3/D;JLl3/o0;)V

    iget-object v4, v1, Ll3/L0;->M:Ll3/n;

    invoke-virtual {v4, v3}, Ll3/n;->b(Lj3/E;)V

    iput-object v2, v0, Ll3/K0;->f:Ll3/o0;

    iget-object v3, v1, Ll3/L0;->O:Lj3/F;

    iget-object v3, v3, Lj3/F;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ll3/o0;->e()Lj3/J;

    move-result-object v4

    iget-wide v4, v4, Lj3/J;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj3/I;

    iget-object v1, v1, Ll3/L0;->z:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Ll3/K0;->j:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    iput-object p1, p0, Ll3/K0;->e:Ljava/util/List;

    iget-object v0, p0, Ll3/K0;->f:Ll3/o0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "newAddressGroups"

    invoke-static {p1, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "newAddressGroups contains null entry"

    invoke-static {v2, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "newAddressGroups is empty"

    invoke-static {v1, v2}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ll3/B;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {p1, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/K0;->b:Lj3/J;

    invoke-virtual {v0}, Lj3/J;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
