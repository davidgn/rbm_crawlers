.class public final LI4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/w;


# instance fields
.field public final a:LQ4/m;

.field public b:Z

.field public final synthetic c:LG4/o;


# direct methods
.method public constructor <init>(LG4/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/c;->c:LG4/o;

    new-instance v0, LQ4/m;

    iget-object p1, p1, LG4/o;->f:Ljava/lang/Object;

    check-cast p1, LQ4/r;

    iget-object p1, p1, LQ4/r;->a:LQ4/w;

    invoke-interface {p1}, LQ4/w;->a()LQ4/A;

    move-result-object p1

    invoke-direct {v0, p1}, LQ4/m;-><init>(LQ4/A;)V

    iput-object v0, p0, LI4/c;->a:LQ4/m;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LI4/c;->a:LQ4/m;

    return-object v0
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LI4/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, LI4/c;->b:Z

    iget-object v0, p0, LI4/c;->c:LG4/o;

    iget-object v0, v0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    const-string v1, "0\r\n\r\n"

    invoke-virtual {v0, v1}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    iget-object v0, p0, LI4/c;->c:LG4/o;

    iget-object v1, p0, LI4/c;->a:LQ4/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, LQ4/m;->e:LQ4/A;

    sget-object v2, LQ4/A;->d:LQ4/z;

    iput-object v2, v1, LQ4/m;->e:LQ4/A;

    invoke-virtual {v0}, LQ4/A;->a()LQ4/A;

    invoke-virtual {v0}, LQ4/A;->b()LQ4/A;

    iget-object v0, p0, LI4/c;->c:LG4/o;

    const/4 v1, 0x3

    iput v1, v0, LG4/o;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LI4/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LI4/c;->c:LG4/o;

    iget-object v0, v0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    invoke-virtual {v0}, LQ4/r;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final o(LQ4/g;J)V
    .locals 4

    iget-boolean v0, p0, LI4/c;->b:Z

    const-string v1, "closed"

    if-nez v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LI4/c;->c:LG4/o;

    iget-object v2, v0, LG4/o;->f:Ljava/lang/Object;

    check-cast v2, LQ4/r;

    iget-boolean v3, v2, LQ4/r;->c:Z

    if-nez v3, :cond_1

    iget-object v1, v2, LQ4/r;->b:LQ4/g;

    invoke-virtual {v1, p2, p3}, LQ4/g;->G(J)V

    invoke-virtual {v2}, LQ4/r;->b()LQ4/h;

    iget-object v0, v0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v0, p1, p2, p3}, LQ4/r;->o(LQ4/g;J)V

    invoke-virtual {v0, v1}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
