.class public Ll3/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/s;


# instance fields
.field public volatile a:Z

.field public b:Ll3/u;

.field public c:Ll3/s;

.field public d:Lj3/r0;

.field public e:Ljava/util/List;

.field public f:Ll3/M;

.field public g:J

.field public h:J

.field public i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/N;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lj3/o;)V
    .locals 3

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    new-instance v1, Ll3/B;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/N;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->b(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Ll3/C;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ll3/C;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Ll3/N;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    new-instance v1, Ll3/K;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Ll3/K;-><init>(Ll3/N;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lj3/r0;)V
    .locals 5

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "May only be called after start"

    invoke-static {v0, v3}, LZ2/l;->m(ZLjava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    if-nez v0, :cond_2

    sget-object v3, Ll3/Z0;->a:Ll3/Z0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v4, "realStream already set to %s"

    invoke-static {v2, v4, v0}, LZ2/l;->n(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object v3, p0, Ll3/N;->c:Ll3/s;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Ll3/N;->h:J

    iput-object p1, p0, Ll3/N;->d:Lj3/r0;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    move v1, v2

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    new-instance v0, Ll3/B;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/N;->p(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ll3/N;->q()V

    invoke-virtual {p0, p1}, Ll3/N;->s(Lj3/r0;)V

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    sget-object v1, Ll3/t;->a:Ll3/t;

    new-instance v2, Lj3/f0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Ll3/u;->f(Lj3/r0;Ll3/t;Lj3/f0;)V

    :goto_3
    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Lj3/v;)V
    .locals 3

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    new-instance v1, Ll3/B;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lq3/a;)V
    .locals 2

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/N;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->f(Lq3/a;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ll3/B;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/N;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/N;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->flush()V

    goto :goto_1

    :cond_1
    new-instance v0, Ll3/L;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ll3/L;-><init>(Ll3/N;I)V

    invoke-virtual {p0, v0}, Ll3/N;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final g(Ll3/u;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/N;->d:Lj3/r0;

    iget-boolean v1, p0, Ll3/N;->a:Z

    if-nez v1, :cond_1

    new-instance v2, Ll3/M;

    invoke-direct {v2, p1}, Ll3/M;-><init>(Ll3/u;)V

    iput-object v2, p0, Ll3/N;->f:Ll3/M;

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object p1, p0, Ll3/N;->b:Ll3/u;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Ll3/N;->g:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v1, Ll3/t;->a:Ll3/t;

    new-instance v2, Lj3/f0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Ll3/u;->f(Lj3/r0;Ll3/t;Lj3/f0;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Ll3/N;->r(Ll3/u;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Lj3/x;)V
    .locals 3

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    new-instance v1, Ll3/B;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Ll3/N;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    new-instance v0, Ll3/L;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ll3/L;-><init>(Ll3/N;I)V

    invoke-virtual {p0, v0}, Ll3/N;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k()Lj3/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ll3/s;->k()Lj3/b;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lj3/b;->b:Lj3/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l(I)V
    .locals 2

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/N;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->l(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ll3/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ll3/K;-><init>(Ll3/N;II)V

    invoke-virtual {p0, v0}, Ll3/N;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final m(I)V
    .locals 3

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    new-instance v1, Ll3/K;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Ll3/K;-><init>(Ll3/N;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(LC4/v;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Ll3/N;->h:J

    iget-wide v3, p0, Ll3/N;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->n(LC4/v;)V

    goto :goto_0

    :cond_1
    const-string v0, "buffered_nanos"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Ll3/N;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, LC4/v;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waiting_for_connection"

    iget-object p1, p1, LC4/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    new-instance v1, Ll3/L;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ll3/L;-><init>(Ll3/N;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Ll3/N;->b:Ll3/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called after start"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll3/N;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ll3/N;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final q()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ll3/N;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/N;->e:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ll3/N;->a:Z

    iget-object v2, p0, Ll3/N;->f:Ll3/M;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    monitor-enter v2

    :try_start_1
    iget-object v4, v2, Ll3/M;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, v2, Ll3/M;->c:Ljava/util/List;

    iput-boolean v1, v2, Ll3/M;->b:Z

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v4, v2, Ll3/M;->c:Ljava/util/List;

    iput-object v3, v2, Ll3/M;->c:Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object v3, v4

    goto :goto_1

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_3
    :try_start_3
    iget-object v1, p0, Ll3/N;->e:Ljava/util/List;

    iput-object v0, p0, Ll3/N;->e:Ljava/util/List;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final r(Ll3/u;)V
    .locals 2

    iget-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ll3/N;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0, p1}, Ll3/s;->g(Ll3/u;)V

    return-void
.end method

.method public s(Lj3/r0;)V
    .locals 0

    return-void
.end method

.method public final t(Ll3/s;)Ll3/L;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "stream"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/N;->c:Ll3/s;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "realStream already set to %s"

    invoke-static {v3, v4, v0}, LZ2/l;->n(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Ll3/N;->c:Ll3/s;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Ll3/N;->h:J

    iget-object p1, p0, Ll3/N;->b:Ll3/u;

    if-nez p1, :cond_2

    iput-object v1, p0, Ll3/N;->e:Ljava/util/List;

    iput-boolean v2, p0, Ll3/N;->a:Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Ll3/N;->r(Ll3/u;)V

    new-instance p1, Ll3/L;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ll3/L;-><init>(Ll3/N;I)V

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
