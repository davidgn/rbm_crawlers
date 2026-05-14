.class public final LK3/y;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LB3/b;


# instance fields
.field public final a:J

.field public final b:LK3/z;

.field public final c:I

.field public final d:I

.field public volatile e:Z

.field public volatile f:LH3/h;

.field public l:J

.field public m:I


# direct methods
.method public constructor <init>(LK3/z;J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, LK3/y;->a:J

    iput-object p1, p0, LK3/y;->b:LK3/z;

    iget p1, p1, LK3/z;->d:I

    iput p1, p0, LK3/y;->d:I

    shr-int/lit8 p1, p1, 0x2

    iput p1, p0, LK3/y;->c:I

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget v0, p0, LK3/y;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, LK3/y;->l:J

    add-long/2addr v0, p1

    iget p1, p0, LK3/y;->c:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LK3/y;->l:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT4/b;

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, LK3/y;->l:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-static {p0}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final c(LT4/b;)V
    .locals 3

    invoke-static {p0, p1}, LR3/f;->b(Ljava/util/concurrent/atomic/AtomicReference;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, LH3/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LH3/e;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, LH3/d;->g(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, LK3/y;->m:I

    iput-object v0, p0, LK3/y;->f:LH3/h;

    iput-boolean v2, p0, LK3/y;->e:Z

    iget-object p1, p0, LK3/y;->b:LK3/z;

    invoke-virtual {p1}, LK3/z;->b()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LK3/y;->m:I

    iput-object v0, p0, LK3/y;->f:LH3/h;

    :cond_1
    iget v0, p0, LK3/y;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_2
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/y;->e:Z

    iget-object v0, p0, LK3/y;->b:LK3/z;

    invoke-virtual {v0}, LK3/z;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, LR3/f;->a:LR3/f;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, LK3/y;->b:LK3/z;

    iget-object v1, v0, LK3/z;->l:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/y;->e:Z

    iget-object p1, v0, LK3/z;->p:LT4/b;

    invoke-interface {p1}, LT4/b;->cancel()V

    iget-object p1, v0, LK3/z;->n:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LK3/z;->w:[LK3/y;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LK3/y;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LK3/z;->b()V

    goto :goto_1

    :cond_1
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, LK3/y;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget-object v0, p0, LK3/y;->b:LK3/z;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "Inner queue full?!"

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v1, p0, LK3/y;->f:LH3/h;

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, LH3/h;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v1, v0, LK3/z;->a:Lz3/g;

    invoke-interface {v1, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    iget-object p1, v0, LK3/z;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, LK3/y;->a(J)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, LK3/y;->f:LH3/h;

    if-nez v1, :cond_3

    new-instance v1, LO3/a;

    iget v3, v0, LK3/z;->d:I

    invoke-direct {v1, v3}, LO3/a;-><init>(I)V

    iput-object v1, p0, LK3/y;->f:LH3/h;

    :cond_3
    invoke-interface {v1, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, LC3/c;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LK3/z;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_5
    iget-object v1, p0, LK3/y;->f:LH3/h;

    if-nez v1, :cond_6

    new-instance v1, LO3/a;

    iget v3, v0, LK3/z;->d:I

    invoke-direct {v1, v3}, LO3/a;-><init>(I)V

    iput-object v1, p0, LK3/y;->f:LH3/h;

    :cond_6
    invoke-interface {v1, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, LC3/c;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LK3/z;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, LK3/z;->g()V

    goto :goto_1

    :cond_9
    iget-object p1, p0, LK3/y;->b:LK3/z;

    invoke-virtual {p1}, LK3/z;->b()V

    :goto_1
    return-void
.end method
