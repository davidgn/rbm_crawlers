.class public final Ll3/j;
.super Ll3/W;
.source "SourceFile"


# instance fields
.field public final a:Ll3/z;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile c:Lj3/r0;

.field public d:Lj3/r0;

.field public e:Lj3/r0;

.field public final f:Lj1/a;

.field public final synthetic g:Ll3/k;


# direct methods
.method public constructor <init>(Ll3/k;Ll3/z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/j;->g:Ll3/k;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const p3, -0x7fffffff

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lj1/a;

    const/4 p3, 0x6

    invoke-direct {p1, p0, p3}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Ll3/j;->f:Lj1/a;

    const-string p1, "delegate"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ll3/j;->a:Ll3/z;

    return-void
.end method

.method public static g(Ll3/j;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ll3/j;->d:Lj3/r0;

    iget-object v1, p0, Ll3/j;->e:Lj3/r0;

    const/4 v2, 0x0

    iput-object v2, p0, Ll3/j;->d:Lj3/r0;

    iput-object v2, p0, Ll3/j;->e:Lj3/r0;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-super {p0, v0}, Ll3/W;->c(Lj3/r0;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-super {p0, v1}, Ll3/W;->b(Lj3/r0;)V

    :cond_2
    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b(Lj3/r0;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Ll3/j;->c:Lj3/r0;

    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ll3/j;->e:Lj3/r0;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Ll3/j;->e:Lj3/r0;

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Ll3/W;->b(Lj3/r0;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lj3/r0;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    iput-object p1, p0, Ll3/j;->c:Lj3/r0;

    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ll3/j;->d:Lj3/r0;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Ll3/W;->c(Lj3/r0;)V

    return-void

    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;
    .locals 9

    iget-object v0, p3, Lj3/g;->c:Lj3/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/j;->g:Ll3/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ll3/j;->g:Ll3/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    if-eqz v0, :cond_4

    new-instance v8, Ll3/Y0;

    iget-object v2, p0, Ll3/j;->a:Ll3/z;

    iget-object v6, p0, Ll3/j;->f:Lj1/a;

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Ll3/Y0;-><init>(Ll3/v;Lj3/h0;Lj3/f0;Lj3/g;Lj1/a;[Lj3/B;)V

    iget-object p1, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Ll3/j;->f:Lj1/a;

    iget-object p1, p1, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ll3/j;

    iget-object p2, p1, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Ll3/j;->g(Ll3/j;)V

    :cond_1
    new-instance p1, Ll3/U;

    iget-object p2, p0, Ll3/j;->c:Lj3/r0;

    invoke-direct {p1, p2, p4}, Ll3/U;-><init>(Lj3/r0;[Lj3/B;)V

    return-object p1

    :cond_2
    new-instance p1, Ll3/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iget-object p2, p0, Ll3/j;->g:Ll3/k;

    iget-object p2, p2, Ll3/k;->b:Ll3/D0;

    invoke-virtual {v0, p1, p2, v8}, Lj3/e;->applyRequestMetadata(Lj3/d;Ljava/util/concurrent/Executor;Lj3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lj3/r0;->j:Lj3/r0;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    invoke-virtual {p2, p3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    invoke-virtual {v8, p1}, Ll3/Y0;->b(Lj3/r0;)V

    :goto_1
    iget-object v0, v8, Ll3/Y0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, v8, Ll3/Y0;->i:Ll3/s;

    if-nez p1, :cond_3

    new-instance p1, Ll3/N;

    invoke-direct {p1}, Ll3/N;-><init>()V

    iput-object p1, v8, Ll3/Y0;->k:Ll3/N;

    iput-object p1, v8, Ll3/Y0;->i:Ll3/s;

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    monitor-exit v0

    :goto_2
    return-object p1

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    iget-object v0, p0, Ll3/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_5

    new-instance p1, Ll3/U;

    iget-object p2, p0, Ll3/j;->c:Lj3/r0;

    invoke-direct {p1, p2, p4}, Ll3/U;-><init>(Lj3/r0;[Lj3/B;)V

    return-object p1

    :cond_5
    iget-object v0, p0, Ll3/j;->a:Ll3/z;

    invoke-interface {v0, p1, p2, p3, p4}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ll3/z;
    .locals 1

    iget-object v0, p0, Ll3/j;->a:Ll3/z;

    return-object v0
.end method
