.class public abstract Ll3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ll3/V0;

.field public final b:Ljava/lang/Object;

.field public final c:Ll3/R1;

.field public final d:Ll3/V0;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ll3/N1;

.field public i:Z

.field public j:Ll3/u;

.field public k:Lj3/x;

.field public l:Z

.field public m:LU0/p;

.field public volatile n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>(ILl3/N1;Ll3/R1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll3/a;->b:Ljava/lang/Object;

    const-string v0, "transportTracer"

    invoke-static {p3, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Ll3/a;->c:Ll3/R1;

    new-instance v0, Ll3/V0;

    invoke-direct {v0, p0, p1, p2, p3}, Ll3/V0;-><init>(Ll3/a;ILl3/N1;Ll3/R1;)V

    iput-object v0, p0, Ll3/a;->d:Ll3/V0;

    iput-object v0, p0, Ll3/a;->a:Ll3/V0;

    sget-object p1, Lj3/x;->d:Lj3/x;

    iput-object p1, p0, Ll3/a;->k:Lj3/x;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll3/a;->l:Z

    iput-object p2, p0, Ll3/a;->h:Ll3/N1;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final b(Lj3/r0;Ll3/t;Lj3/f0;)V
    .locals 4

    iget-boolean v0, p0, Ll3/a;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/a;->i:Z

    iget-object v1, p0, Ll3/a;->h:Ll3/N1;

    iget-object v2, v1, Ll3/N1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Ll3/N1;->a:[Lj3/B;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Lj3/B;->g(Lj3/r0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll3/a;->j:Ll3/u;

    invoke-interface {v0, p1, p2, p3}, Ll3/u;->f(Lj3/r0;Ll3/t;Lj3/f0;)V

    iget-object p2, p0, Ll3/a;->c:Ll3/R1;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lj3/r0;->f()Z

    :cond_1
    return-void
.end method

.method public abstract c(Z)V
.end method

.method public final d(Lj3/f0;)V
    .locals 4

    iget-boolean v0, p0, Ll3/a;->o:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Received headers on closed stream"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/a;->h:Ll3/N1;

    iget-object v0, v0, Ll3/N1;->a:[Lj3/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ll3/b0;->f:Lj3/a0;

    invoke-virtual {p1, v0}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v0, Lj3/n;->b:Lj3/n;

    sget-object v1, Ll3/b0;->d:Lj3/a0;

    invoke-virtual {p1, v1}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p0, Ll3/a;->k:Lj3/x;

    iget-object v2, v2, Lj3/x;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/w;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lj3/w;->a:Lj3/o;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string v0, "Can\'t find decompressor for "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lm3/i;

    invoke-virtual {v0, p1}, Lm3/i;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    if-eq v2, v0, :cond_3

    iget-object v0, p0, Ll3/a;->a:Ll3/V0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const-string v3, "Already set full stream decompressor"

    invoke-static {v1, v3}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-object v2, v0, Ll3/V0;->e:Lj3/o;

    :cond_3
    iget-object v0, p0, Ll3/a;->j:Ll3/u;

    invoke-interface {v0, p1}, Ll3/u;->b(Lj3/f0;)V

    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Ll3/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ll3/a;->f:Z

    if-eqz v1, :cond_0

    iget v1, p0, Ll3/a;->e:I

    const v2, 0x8000

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Ll3/a;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Lj3/r0;Ll3/t;ZLj3/f0;)V
    .locals 7

    const-string v0, "status"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ll3/a;->o:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/a;->o:Z

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v1

    iput-boolean v1, p0, Ll3/a;->p:Z

    iget-object v1, p0, Ll3/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Ll3/a;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Ll3/a;->l:Z

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    iput-object p3, p0, Ll3/a;->m:LU0/p;

    invoke-virtual {p0, p1, p2, p4}, Ll3/a;->b(Lj3/r0;Ll3/t;Lj3/f0;)V

    goto :goto_1

    :cond_1
    new-instance v6, LU0/p;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LU0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v6, p0, Ll3/a;->m:LU0/p;

    if-eqz p3, :cond_2

    iget-object p1, p0, Ll3/a;->a:Ll3/V0;

    invoke-virtual {p1}, Ll3/V0;->close()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ll3/a;->a:Ll3/V0;

    invoke-virtual {p1}, Ll3/V0;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    iget-object p3, p1, Ll3/V0;->q:Ll3/y;

    iget p3, p3, Ll3/y;->c:I

    if-nez p3, :cond_4

    move p3, p2

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_5

    invoke-virtual {p1}, Ll3/V0;->close()V

    goto :goto_1

    :cond_5
    iput-boolean p2, p1, Ll3/V0;->t:Z

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Lj3/r0;ZLj3/f0;)V
    .locals 1

    sget-object v0, Ll3/t;->a:Ll3/t;

    invoke-virtual {p0, p1, v0, p2, p3}, Ll3/a;->f(Lj3/r0;Ll3/t;ZLj3/f0;)V

    return-void
.end method
