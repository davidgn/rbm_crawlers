.class public final Ll3/l;
.super Lj3/i;
.source "SourceFile"


# instance fields
.field public final d:Ll3/n;

.field public final e:Ll3/P1;


# direct methods
.method public constructor <init>(Ll3/n;Ll3/P1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/l;->d:Ll3/n;

    const-string p1, "time"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ll3/l;->e:Ll3/P1;

    return-void
.end method

.method public static k(I)Ljava/util/logging/Level;
    .locals 1

    invoke-static {p0}, Ls/e;->d(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public final e(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Ll3/l;->d:Ll3/n;

    iget-object v1, v0, Ll3/n;->b:Lj3/J;

    invoke-static {p1}, Ll3/l;->k(I)Ljava/util/logging/Level;

    move-result-object v2

    sget-object v3, Ll3/n;->c:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2, p2}, Ll3/n;->a(Lj3/J;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Ll3/l;->j(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Ls/e;->d(I)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    sget-object p1, Lj3/D;->a:Lj3/D;

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_2
    sget-object p1, Lj3/D;->c:Lj3/D;

    goto :goto_0

    :cond_3
    sget-object p1, Lj3/D;->b:Lj3/D;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Ll3/l;->e:Ll3/P1;

    invoke-virtual {p1}, Ll3/P1;->f()J

    move-result-wide v4

    const-string p1, "description"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lj3/E;

    const/4 v6, 0x0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lj3/E;-><init>(Ljava/lang/String;Lj3/D;JLl3/o0;)V

    iget-object p1, v0, Ll3/n;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_4
    :goto_2
    return-void
.end method

.method public final varargs f(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Ll3/l;->k(I)Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {p0, p1}, Ll3/l;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ll3/n;->c:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Ll3/l;->e(ILjava/lang/String;)V

    return-void
.end method

.method public final j(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Ll3/l;->d:Ll3/n;

    iget-object p1, p1, Ll3/n;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return v1
.end method
