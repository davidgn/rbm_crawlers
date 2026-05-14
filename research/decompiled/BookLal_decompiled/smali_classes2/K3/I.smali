.class public abstract LK3/I;
.super LR3/a;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lz3/o;

.field public final b:I

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public e:LT4/b;

.field public f:LH3/h;

.field public volatile l:Z

.field public volatile m:Z

.field public n:Ljava/lang/Throwable;

.field public o:I

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>(Lz3/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LK3/I;->a:Lz3/o;

    iput p2, p0, LK3/I;->b:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LK3/I;->d:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, LK3/I;->c:I

    return-void
.end method


# virtual methods
.method public final b(ZZLz3/g;)Z
    .locals 2

    iget-boolean v0, p0, LK3/I;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LK3/I;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, LK3/I;->n:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LK3/I;->clear()V

    invoke-interface {p3, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LK3/I;->a:Lz3/o;

    invoke-interface {p1}, LB3/b;->b()V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lz3/g;->onComplete()V

    iget-object p1, p0, LK3/I;->a:Lz3/o;

    invoke-interface {p1}, LB3/b;->b()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LK3/I;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/I;->l:Z

    iget-object v0, p0, LK3/I;->e:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    iget-object v0, p0, LK3/I;->a:Lz3/o;

    invoke-interface {v0}, LB3/b;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LK3/I;->f:LH3/h;

    invoke-interface {v0}, LH3/h;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, LK3/I;->f:LH3/h;

    invoke-interface {v0}, LH3/h;->clear()V

    return-void
.end method

.method public final f(J)V
    .locals 1

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK3/I;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LK3/I;->l()V

    :cond_0
    return-void
.end method

.method public final g(I)I
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/I;->q:Z

    const/4 p1, 0x2

    return p1
.end method

.method public abstract h()V
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, LK3/I;->f:LH3/h;

    invoke-interface {v0}, LH3/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public final l()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LK3/I;->a:Lz3/o;

    invoke-virtual {v0, p0}, Lz3/o;->c(LK3/I;)V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, LK3/I;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/I;->m:Z

    invoke-virtual {p0}, LK3/I;->l()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LK3/I;->m:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, LK3/I;->n:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/I;->m:Z

    invoke-virtual {p0}, LK3/I;->l()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, LK3/I;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LK3/I;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LK3/I;->l()V

    return-void

    :cond_1
    iget-object v0, p0, LK3/I;->f:LH3/h;

    invoke-interface {v0, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LK3/I;->e:LT4/b;

    invoke-interface {p1}, LT4/b;->cancel()V

    new-instance p1, LC3/c;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LK3/I;->n:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/I;->m:Z

    :cond_2
    invoke-virtual {p0}, LK3/I;->l()V

    return-void
.end method

.method public final run()V
    .locals 2

    iget-boolean v0, p0, LK3/I;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LK3/I;->j()V

    goto :goto_0

    :cond_0
    iget v0, p0, LK3/I;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LK3/I;->k()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LK3/I;->h()V

    :goto_0
    return-void
.end method
