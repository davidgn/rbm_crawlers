.class public abstract LC4/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()LC4/A;
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, LC4/K;->e()LQ4/i;

    move-result-object v0

    invoke-static {v0}, LD4/c;->d(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract e()LQ4/i;
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, LC4/K;->e()LQ4/i;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, LC4/K;->c()LC4/A;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ls4/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, LC4/A;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Ls4/a;->a:Ljava/nio/charset/Charset;

    :cond_1
    invoke-static {v0, v1}, LD4/c;->s(LQ4/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, LQ4/i;->k(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
