.class public final LN2/f;
.super LS4/b;
.source "SourceFile"


# virtual methods
.method public final A(LN2/l;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, LN2/l;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final d(LN2/m;LN2/d;LN2/d;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, LN2/m;->l:LN2/d;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, LN2/m;->l:LN2/d;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final e(LN2/m;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, LN2/m;->f:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, LN2/m;->f:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final f(LN2/m;LN2/l;LN2/l;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, LN2/m;->m:LN2/l;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, LN2/m;->m:LN2/l;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final n(LN2/m;)LN2/d;
    .locals 2

    sget-object v0, LN2/d;->d:LN2/d;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, LN2/m;->l:LN2/d;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, LN2/m;->l:LN2/d;

    :cond_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o(LN2/m;)LN2/l;
    .locals 2

    sget-object v0, LN2/l;->c:LN2/l;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, LN2/m;->m:LN2/l;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, LN2/m;->m:LN2/l;

    :cond_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final z(LN2/l;LN2/l;)V
    .locals 0

    iput-object p2, p1, LN2/l;->b:LN2/l;

    return-void
.end method
