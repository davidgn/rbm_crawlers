.class public abstract LD3/a;
.super Lz3/d;
.source "SourceFile"


# virtual methods
.method public final f()V
    .locals 5

    move-object v0, p0

    check-cast v0, LK3/Q;

    :goto_0
    iget-object v1, v0, LK3/Q;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK3/P;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LK3/P;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-instance v3, LK3/P;

    iget v4, v0, LK3/Q;->d:I

    invoke-direct {v3, v1, v4}, LK3/P;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    :cond_1
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v3

    :cond_2
    iget-object v1, v2, LK3/P;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, LK3/Q;->b:Lz3/d;

    invoke-virtual {v0, v2}, Lz3/d;->d(Lz3/g;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_1

    goto :goto_0
.end method
