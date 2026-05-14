.class public abstract Lt4/O;
.super Lt4/s;
.source "SourceFile"


# instance fields
.field public c:J

.field public d:Z

.field public e:LZ3/e;


# virtual methods
.method public final s()V
    .locals 4

    iget-wide v0, p0, Lt4/O;->c:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lt4/O;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lt4/O;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt4/O;->shutdown()V

    :cond_1
    return-void
.end method

.method public abstract shutdown()V
.end method

.method public abstract t()Ljava/lang/Thread;
.end method

.method public final u(Z)V
    .locals 4

    iget-wide v0, p0, Lt4/O;->c:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lt4/O;->c:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt4/O;->d:Z

    :cond_1
    return-void
.end method

.method public final v()Z
    .locals 3

    iget-object v0, p0, Lt4/O;->e:LZ3/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, LZ3/e;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LZ3/e;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lt4/D;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lt4/D;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public w(JLt4/L;)V
    .locals 1

    sget-object v0, Lt4/x;->n:Lt4/x;

    invoke-virtual {v0, p1, p2, p3}, Lt4/N;->B(JLt4/L;)V

    return-void
.end method
