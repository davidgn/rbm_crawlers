.class public final Ls3/j;
.super Lj3/B;
.source "SourceFile"


# instance fields
.field public a:Ls3/e;


# virtual methods
.method public final g(Lj3/r0;)V
    .locals 3

    iget-object v0, p0, Ls3/j;->a:Ls3/e;

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result p1

    iget-object v1, v0, Ls3/e;->a:Ls3/i;

    iget-object v2, v1, Ls3/i;->e:Ls3/h;

    if-nez v2, :cond_0

    iget-object v1, v1, Ls3/i;->f:Ls3/h;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, v0, Ls3/e;->b:Lj3/G;

    iget-object p1, p1, Lj3/G;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    goto :goto_0

    :cond_1
    iget-object p1, v0, Ls3/e;->b:Lj3/G;

    iget-object p1, p1, Lj3/G;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    :goto_0
    return-void
.end method
