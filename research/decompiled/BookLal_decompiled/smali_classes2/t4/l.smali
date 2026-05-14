.class public final Lt4/l;
.super Lt4/g0;
.source "SourceFile"

# interfaces
.implements Lt4/k;


# virtual methods
.method public final R(Ld4/c;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lt4/T;

    if-nez v1, :cond_2

    instance-of p1, v0, Lt4/n;

    if-nez p1, :cond_1

    invoke-static {v0}, Lt4/w;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast v0, Lt4/n;

    iget-object p1, v0, Lt4/n;->a:Ljava/lang/Throwable;

    throw p1

    :cond_2
    invoke-virtual {p0, v0}, Lt4/g0;->O(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lt4/b0;

    invoke-static {p1}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lt4/b0;-><init>(Lkotlin/coroutines/Continuation;Lt4/l;)V

    invoke-virtual {v0}, Lt4/f;->s()V

    new-instance p1, Lt4/I;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lt4/I;-><init>(Ljava/lang/Object;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p1}, Lt4/g0;->E(ZZLk4/l;)Lt4/G;

    move-result-object p1

    new-instance v1, Lt4/H;

    invoke-direct {v1, p1}, Lt4/H;-><init>(Lt4/G;)V

    invoke-virtual {v0, v1}, Lt4/f;->u(Lt4/l0;)V

    invoke-virtual {v0}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final S(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Lt4/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lt4/n;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lt4/g0;->G(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lt4/T;

    if-nez v1, :cond_1

    instance-of v1, v0, Lt4/n;

    if-nez v1, :cond_0

    invoke-static {v0}, Lt4/w;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lt4/n;

    iget-object v0, v0, Lt4/n;->a:Ljava/lang/Throwable;

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
