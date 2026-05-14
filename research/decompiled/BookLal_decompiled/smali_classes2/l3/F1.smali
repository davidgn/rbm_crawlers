.class public final Ll3/F1;
.super Ll3/J1;
.source "SourceFile"


# virtual methods
.method public final t(Ll3/G1;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget v0, p1, Ll3/G1;->c:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Ll3/G1;->c:I

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final u(Ll3/G1;)V
    .locals 1

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p1, Ll3/G1;->c:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
