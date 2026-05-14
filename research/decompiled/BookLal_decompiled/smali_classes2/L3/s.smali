.class public final LL3/s;
.super LR3/c;
.source "SourceFile"

# interfaces
.implements Lz3/j;


# instance fields
.field public c:LB3/b;


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget-object v0, p0, LL3/s;->c:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LL3/s;->c:LB3/b;

    iget-object p1, p0, LR3/c;->a:Lz3/g;

    invoke-interface {p1, p0}, Lz3/g;->c(LT4/b;)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, LR3/c;->b:Ljava/lang/Object;

    iget-object v0, p0, LL3/s;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, LR3/c;->a:Lz3/g;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LR3/c;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
