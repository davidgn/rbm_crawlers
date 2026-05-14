.class public final LV0/f;
.super LW2/B;
.source "SourceFile"


# virtual methods
.method public final d(LV0/h;LV0/c;LV0/c;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, LV0/h;->b:LV0/c;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, LV0/h;->b:LV0/c;

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

.method public final e(LV0/h;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, LV0/h;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, LV0/h;->a:Ljava/lang/Object;

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

.method public final f(LV0/h;LV0/g;LV0/g;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, LV0/h;->c:LV0/g;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, LV0/h;->c:LV0/g;

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

.method public final u(LV0/g;LV0/g;)V
    .locals 0

    iput-object p2, p1, LV0/g;->b:LV0/g;

    return-void
.end method

.method public final v(LV0/g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, LV0/g;->a:Ljava/lang/Thread;

    return-void
.end method
