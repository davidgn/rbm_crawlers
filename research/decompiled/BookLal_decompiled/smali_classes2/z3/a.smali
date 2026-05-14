.class public abstract Lz3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/c;


# virtual methods
.method public final b(Lz3/a;)LJ3/b;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "other is null"

    invoke-static {p1, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lz3/c;

    aput-object p0, v1, v0

    const/4 v2, 0x1

    aput-object p1, v1, v2

    new-instance p1, LJ3/b;

    invoke-direct {p1, v1, v0}, LJ3/b;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public final c(LE3/a;)LJ3/e;
    .locals 2

    sget-object v0, LG3/d;->d:Lz2/e;

    new-instance v1, LJ3/e;

    invoke-direct {v1, p0, v0, p1}, LJ3/e;-><init>(Lz3/a;LE3/b;LE3/a;)V

    return-object v1
.end method

.method public final d(Lz3/b;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lz3/a;->e(Lz3/b;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_0
    move-exception p1

    throw p1
.end method

.method public abstract e(Lz3/b;)V
.end method

.method public final f()Lz3/h;
    .locals 2

    new-instance v0, LL3/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LL3/d;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
