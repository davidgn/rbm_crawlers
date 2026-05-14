.class public final LK3/l;
.super LK3/i;
.source "SourceFile"


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LK3/i;->b:LB3/c;

    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, LK3/i;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/i;->c(Ljava/lang/Throwable;)V

    return-void
.end method
