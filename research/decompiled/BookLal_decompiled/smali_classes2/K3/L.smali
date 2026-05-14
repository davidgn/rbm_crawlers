.class public final LK3/L;
.super LR3/a;
.source "SourceFile"

# interfaces
.implements Lz3/g;


# instance fields
.field public final a:Lz3/g;

.field public final b:LH3/g;

.field public final c:Ly3/c;

.field public d:LT4/b;

.field public volatile e:Z

.field public volatile f:Z

.field public l:Ljava/lang/Throwable;

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public n:Z


# direct methods
.method public constructor <init>(Lz3/g;IZLy3/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LK3/L;->m:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, LK3/L;->a:Lz3/g;

    iput-object p4, p0, LK3/L;->c:Ly3/c;

    if-eqz p3, :cond_0

    new-instance p1, LO3/b;

    invoke-direct {p1, p2}, LO3/b;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, LO3/a;

    invoke-direct {p1, p2}, LO3/a;-><init>(I)V

    :goto_0
    iput-object p1, p0, LK3/L;->b:LH3/g;

    return-void
.end method


# virtual methods
.method public final b(ZZLz3/g;)Z
    .locals 2

    iget-boolean v0, p0, LK3/L;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, LK3/L;->b:LH3/g;

    invoke-interface {p1}, LH3/h;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, LK3/L;->l:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iget-object p2, p0, LK3/L;->b:LH3/g;

    invoke-interface {p2}, LH3/h;->clear()V

    invoke-interface {p3, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lz3/g;->onComplete()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final c(LT4/b;)V
    .locals 2

    iget-object v0, p0, LK3/L;->d:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LK3/L;->d:LT4/b;

    iget-object v0, p0, LK3/L;->a:Lz3/g;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LK3/L;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/L;->e:Z

    iget-object v0, p0, LK3/L;->d:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LK3/L;->b:LH3/g;

    invoke-interface {v0}, LH3/h;->clear()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, LK3/L;->b:LH3/g;

    invoke-interface {v0}, LH3/h;->clear()V

    return-void
.end method

.method public final f(J)V
    .locals 1

    iget-boolean v0, p0, LK3/L;->n:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/L;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LK3/L;->h()V

    :cond_0
    return-void
.end method

.method public final g(I)I
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/L;->n:Z

    const/4 p1, 0x2

    return p1
.end method

.method public final h()V
    .locals 14

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, LK3/L;->b:LH3/g;

    iget-object v1, p0, LK3/L;->a:Lz3/g;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-boolean v4, p0, LK3/L;->f:Z

    invoke-interface {v0}, LH3/h;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, LK3/L;->b(ZZLz3/g;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, LK3/L;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    iget-boolean v11, p0, LK3/L;->f:Z

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {p0, v11, v13, v1}, LK3/L;->b(ZZLz3/g;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v12}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    iget-boolean v10, p0, LK3/L;->f:Z

    invoke-interface {v0}, LH3/h;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v1}, LK3/L;->b(ZZLz3/g;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    iget-object v4, p0, LK3/L;->m:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, LK3/L;->b:LH3/g;

    invoke-interface {v0}, LH3/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/L;->f:Z

    iget-boolean v0, p0, LK3/L;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/L;->a:Lz3/g;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LK3/L;->h()V

    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, LK3/L;->l:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/L;->f:Z

    iget-boolean v0, p0, LK3/L;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/L;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LK3/L;->h()V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LK3/L;->b:LH3/g;

    invoke-interface {v0, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LK3/L;->d:LT4/b;

    invoke-interface {p1}, LT4/b;->cancel()V

    new-instance p1, LC3/c;

    const-string v0, "Buffer is full"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, LK3/L;->c:Ly3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :goto_0
    invoke-virtual {p0, p1}, LK3/L;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-boolean p1, p0, LK3/L;->n:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LK3/L;->a:Lz3/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lz3/g;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LK3/L;->h()V

    :goto_1
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LK3/L;->b:LH3/g;

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
