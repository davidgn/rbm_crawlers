.class public final LK3/T;
.super LR3/c;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LT4/b;


# instance fields
.field public c:LT4/b;


# virtual methods
.method public final c(LT4/b;)V
    .locals 2

    iget-object v0, p0, LK3/T;->c:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LK3/T;->c:LT4/b;

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

    iget-object v0, p0, LK3/T;->c:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, LR3/c;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LR3/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LR3/c;->b:Ljava/lang/Object;

    iget-object v0, p0, LR3/c;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LR3/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
