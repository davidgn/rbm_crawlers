.class public Landroidx/lifecycle/B;
.super Landroidx/lifecycle/A;
.source "SourceFile"


# virtual methods
.method public i(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/A;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/A;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/A;->g:I

    iput-object p1, p0, Landroidx/lifecycle/A;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/A;->c(Landroidx/lifecycle/z;)V

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/A;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/A;->k:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/A;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {}, Lm/b;->Y()Lm/b;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/A;->j:LA2/h;

    iget-object p1, p1, Lm/b;->b:Lm/d;

    iget-object v1, p1, Lm/d;->d:Landroid/os/Handler;

    if-nez v1, :cond_3

    iget-object v1, p1, Lm/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p1, Lm/d;->d:Landroid/os/Handler;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lm/d;->Y(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p1, Lm/d;->d:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_3
    iget-object p1, p1, Lm/d;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
