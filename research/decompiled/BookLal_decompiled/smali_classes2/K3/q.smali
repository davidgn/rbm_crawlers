.class public final LK3/q;
.super LR3/c;
.source "SourceFile"

# interfaces
.implements Lz3/g;


# instance fields
.field public c:LT4/b;

.field public d:J

.field public e:Z


# virtual methods
.method public final c(LT4/b;)V
    .locals 2

    iget-object v0, p0, LK3/q;->c:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LK3/q;->c:LT4/b;

    iget-object v0, p0, LR3/c;->a:Lz3/g;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, LR3/c;->b:Ljava/lang/Object;

    iget-object v0, p0, LK3/q;->c:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, LK3/q;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/q;->e:Z

    iget-object v0, p0, LR3/c;->a:Lz3/g;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LK3/q;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/q;->e:Z

    iget-object v0, p0, LR3/c;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, LK3/q;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LK3/q;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/q;->e:Z

    iget-object v0, p0, LK3/q;->c:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0, p1}, LR3/c;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LK3/q;->d:J

    return-void
.end method
