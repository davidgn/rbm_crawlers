.class public final Ll3/Y0;
.super Lj3/c;
.source "SourceFile"


# instance fields
.field public final a:Ll3/v;

.field public final b:Lj3/h0;

.field public final c:Lj3/f0;

.field public final d:Lj3/g;

.field public final e:Lj3/u;

.field public final f:Lj1/a;

.field public final g:[Lj3/B;

.field public final h:Ljava/lang/Object;

.field public i:Ll3/s;

.field public j:Z

.field public k:Ll3/N;


# direct methods
.method public constructor <init>(Ll3/v;Lj3/h0;Lj3/f0;Lj3/g;Lj1/a;[Lj3/B;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll3/Y0;->h:Ljava/lang/Object;

    iput-object p1, p0, Ll3/Y0;->a:Ll3/v;

    iput-object p2, p0, Ll3/Y0;->b:Lj3/h0;

    iput-object p3, p0, Ll3/Y0;->c:Lj3/f0;

    iput-object p4, p0, Ll3/Y0;->d:Lj3/g;

    invoke-static {}, Lj3/u;->b()Lj3/u;

    move-result-object p1

    iput-object p1, p0, Ll3/Y0;->e:Lj3/u;

    iput-object p5, p0, Ll3/Y0;->f:Lj1/a;

    iput-object p6, p0, Ll3/Y0;->g:[Lj3/B;

    return-void
.end method


# virtual methods
.method public final a(Lj3/f0;)V
    .locals 6

    iget-boolean v0, p0, Ll3/Y0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/Y0;->c:Lj3/f0;

    invoke-virtual {v0, p1}, Lj3/f0;->d(Lj3/f0;)V

    iget-object p1, p0, Ll3/Y0;->e:Lj3/u;

    invoke-virtual {p1}, Lj3/u;->a()Lj3/u;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Ll3/Y0;->a:Ll3/v;

    iget-object v3, p0, Ll3/Y0;->b:Lj3/h0;

    iget-object v4, p0, Ll3/Y0;->d:Lj3/g;

    iget-object v5, p0, Ll3/Y0;->g:[Lj3/B;

    invoke-interface {v2, v3, v0, v4, v5}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lj3/u;->c(Lj3/u;)V

    invoke-virtual {p0, v0}, Ll3/Y0;->c(Ll3/s;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lj3/u;->c(Lj3/u;)V

    throw v0
.end method

.method public final b(Lj3/r0;)V
    .locals 3

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot fail with OK status"

    invoke-static {v0, v1}, LZ2/l;->f(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/Y0;->j:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    new-instance v0, Ll3/U;

    invoke-static {p1}, Ll3/b0;->h(Lj3/r0;)Lj3/r0;

    move-result-object p1

    sget-object v1, Ll3/t;->a:Ll3/t;

    iget-object v2, p0, Ll3/Y0;->g:[Lj3/B;

    invoke-direct {v0, p1, v1, v2}, Ll3/U;-><init>(Lj3/r0;Ll3/t;[Lj3/B;)V

    invoke-virtual {p0, v0}, Ll3/Y0;->c(Ll3/s;)V

    return-void
.end method

.method public final c(Ll3/s;)V
    .locals 4

    iget-boolean v0, p0, Ll3/Y0;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already finalized"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-boolean v1, p0, Ll3/Y0;->j:Z

    iget-object v0, p0, Ll3/Y0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Ll3/Y0;->i:Ll3/s;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object p1, p0, Ll3/Y0;->i:Ll3/s;

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v2, v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p1, p0, Ll3/Y0;->f:Lj1/a;

    iget-object p1, p1, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/j;

    iget-object v0, p1, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ll3/j;->g(Ll3/j;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Ll3/Y0;->k:Ll3/N;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    const-string v0, "delayedStream is null"

    invoke-static {v1, v0}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/Y0;->k:Ll3/N;

    invoke-virtual {v0, p1}, Ll3/N;->t(Ll3/s;)Ll3/L;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ll3/L;->run()V

    :cond_4
    iget-object p1, p0, Ll3/Y0;->f:Lj1/a;

    iget-object p1, p1, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/j;

    iget-object v0, p1, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Ll3/j;->g(Ll3/j;)V

    :cond_5
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
