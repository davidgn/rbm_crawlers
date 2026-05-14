.class public final LC4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/Y;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# virtual methods
.method public a(Lj3/o;)Ll3/Y;
    .locals 0

    return-object p0
.end method

.method public b(Z)Ll3/Y;
    .locals 0

    return-object p0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LC4/g;->a:Z

    iget-object v1, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Lack of request message. GET request is only supported for unary requests"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, LC4/g;->e:Ljava/lang/Object;

    check-cast v0, Ll3/b;

    check-cast v0, Lm3/j;

    iget-object v0, v0, Lm3/j;->o:Li1/D;

    iget-object v1, p0, LC4/g;->b:Ljava/lang/Object;

    check-cast v1, Lj3/f0;

    iget-object v2, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Li1/D;->u(Lj3/f0;[B)V

    const/4 v0, 0x0

    iput-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    iput-object v0, p0, LC4/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lq3/a;)V
    .locals 5

    iget-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, [B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "writePayload should not be called multiple times"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    :try_start_0
    invoke-static {p1}, LL2/g;->b(Lq3/a;)[B

    move-result-object p1

    iput-object p1, p0, LC4/g;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, LC4/g;->c:Ljava/lang/Object;

    check-cast p1, Ll3/N1;

    iget-object v0, p1, Ll3/N1;->a:[Lj3/B;

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    iget-object v0, p1, Ll3/N1;->a:[Lj3/B;

    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    iget-object p1, p1, Ll3/N1;->a:[Lj3/B;

    array-length v0, p1

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    int-to-long v2, v0

    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_4

    aget-object v4, p1, v1

    invoke-virtual {v4, v2, v3}, Lj3/B;->b(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LC4/g;->e:Ljava/lang/Object;

    check-cast v0, LC4/h;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LC4/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, LC4/g;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, LC4/g;->c:Ljava/lang/Object;

    check-cast v0, LQ4/w;

    invoke-static {v0}, LD4/c;->d(Ljava/io/Closeable;)V

    :try_start_2
    iget-object v0, p0, LC4/g;->b:Ljava/lang/Object;

    check-cast v0, LE4/d;

    invoke-virtual {v0}, LE4/d;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public f(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, LC4/g;->j(Ljava/io/IOException;)V

    :cond_0
    const-string v0, "call"

    iget-object v1, p0, LC4/g;->b:Ljava/lang/Object;

    check-cast v1, LG4/i;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {v1, p0, p2, p1, p3}, LG4/i;->i(LC4/g;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g()Lj3/h0;
    .locals 7

    new-instance v6, Lj3/h0;

    iget-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lj3/g0;

    iget-object v0, p0, LC4/g;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, LC4/g;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lq3/b;

    iget-object v0, p0, LC4/g;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lq3/b;

    iget-boolean v5, p0, LC4/g;->a:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj3/h0;-><init>(Lj3/g0;Ljava/lang/String;Lq3/b;Lq3/b;Z)V

    return-object v6
.end method

.method public h(LC4/I;)LC4/J;
    .locals 8

    iget-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, LH4/e;

    :try_start_0
    const-string v1, "Content-Type"

    invoke-static {p1, v1}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1}, LH4/e;->h(LC4/I;)J

    move-result-wide v4

    invoke-interface {v0, p1}, LH4/e;->d(LC4/I;)LQ4/y;

    move-result-object p1

    new-instance v0, LG4/d;

    invoke-direct {v0, p0, p1, v4, v5}, LG4/d;-><init>(LC4/g;LQ4/y;J)V

    new-instance p1, LC4/J;

    invoke-static {v0}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, LC4/J;-><init>(Ljava/lang/Object;JLQ4/i;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "call"

    iget-object v1, p0, LC4/g;->b:Ljava/lang/Object;

    check-cast v1, LG4/i;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LC4/g;->j(Ljava/io/IOException;)V

    throw p1
.end method

.method public i(Z)LC4/H;
    .locals 2

    :try_start_0
    iget-object v0, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, LH4/e;

    invoke-interface {v0, p1}, LH4/e;->b(Z)LC4/H;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, LC4/H;->m:LC4/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "call"

    iget-object v1, p0, LC4/g;->b:Ljava/lang/Object;

    check-cast v1, LG4/i;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LC4/g;->j(Ljava/io/IOException;)V

    throw p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, LC4/g;->a:Z

    return v0
.end method

.method public j(Ljava/io/IOException;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, LC4/g;->a:Z

    iget-object v1, p0, LC4/g;->c:Ljava/lang/Object;

    check-cast v1, LG4/e;

    invoke-virtual {v1, p1}, LG4/e;->c(Ljava/io/IOException;)V

    iget-object v1, p0, LC4/g;->d:Ljava/lang/Object;

    check-cast v1, LH4/e;

    invoke-interface {v1}, LH4/e;->c()LG4/k;

    move-result-object v1

    iget-object v2, p0, LC4/g;->b:Ljava/lang/Object;

    check-cast v2, LG4/i;

    monitor-enter v1

    :try_start_0
    const-string v3, "call"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, p1, LJ4/C;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, LJ4/C;

    iget v3, v3, LJ4/C;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget p1, v1, LG4/k;->n:I

    add-int/2addr p1, v0

    iput p1, v1, LG4/k;->n:I

    if-le p1, v0, :cond_5

    iput-boolean v0, v1, LG4/k;->j:Z

    iget p1, v1, LG4/k;->l:I

    add-int/2addr p1, v0

    iput p1, v1, LG4/k;->l:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    check-cast p1, LJ4/C;

    iget p1, p1, LJ4/C;->a:I

    const/16 v3, 0x9

    if-ne p1, v3, :cond_1

    iget-boolean p1, v2, LG4/i;->r:Z

    if-nez p1, :cond_5

    :cond_1
    iput-boolean v0, v1, LG4/k;->j:Z

    iget p1, v1, LG4/k;->l:I

    add-int/2addr p1, v0

    iput p1, v1, LG4/k;->l:I

    goto :goto_1

    :cond_2
    iget-object v3, v1, LG4/k;->g:LJ4/o;

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    instance-of v3, p1, LJ4/a;

    if-eqz v3, :cond_5

    :cond_4
    iput-boolean v0, v1, LG4/k;->j:Z

    iget v3, v1, LG4/k;->m:I

    if-nez v3, :cond_5

    iget-object v2, v2, LG4/i;->a:LC4/C;

    iget-object v3, v1, LG4/k;->b:LC4/L;

    invoke-static {v2, v3, p1}, LG4/k;->d(LC4/C;LC4/L;Ljava/io/IOException;)V

    iget p1, v1, LG4/k;->l:I

    add-int/2addr p1, v0

    iput p1, v1, LG4/k;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
