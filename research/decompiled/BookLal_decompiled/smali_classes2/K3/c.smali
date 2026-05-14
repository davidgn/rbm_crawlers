.class public final LK3/c;
.super LK3/b;
.source "SourceFile"


# instance fields
.field public final r:Lz3/g;

.field public final s:Z


# direct methods
.method public constructor <init>(Lz3/g;Lcom/google/firebase/inappmessaging/internal/j;IZ)V
    .locals 0

    invoke-direct {p0, p2, p3}, LK3/b;-><init>(Lcom/google/firebase/inappmessaging/internal/j;I)V

    iput-object p1, p0, LK3/c;->r:Lz3/g;

    iput-boolean p4, p0, LK3/c;->s:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LK3/c;->r:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LK3/c;->s:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LK3/b;->e:LT4/b;

    invoke-interface {p1}, LT4/b;->cancel()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/b;->m:Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LK3/b;->p:Z

    invoke-virtual {p0}, LK3/c;->g()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LK3/b;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/b;->n:Z

    iget-object v0, p0, LK3/b;->a:LK3/e;

    invoke-virtual {v0}, LK3/e;->cancel()V

    iget-object v0, p0, LK3/b;->e:LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final f(J)V
    .locals 1

    iget-object v0, p0, LK3/b;->a:LK3/e;

    invoke-virtual {v0, p1, p2}, LK3/e;->f(J)V

    return-void
.end method

.method public final g()V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_c

    :cond_0
    :goto_0
    iget-boolean v0, p0, LK3/b;->n:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, LK3/b;->p:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, LK3/b;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, LK3/c;->s:Z

    if-nez v1, :cond_2

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v0, p0, LK3/c;->r:Lz3/g;

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, LK3/b;->l:LH3/h;

    invoke-interface {v1}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, LK3/c;->r:Lz3/g;

    invoke-interface {v1, v0}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, LK3/c;->r:Lz3/g;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    :goto_2
    return-void

    :cond_5
    if-nez v4, :cond_b

    :try_start_1
    iget-object v0, p0, LK3/b;->b:Lcom/google/firebase/inappmessaging/internal/j;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LT4/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v1, p0, LK3/b;->q:I

    if-eq v1, v3, :cond_7

    iget v1, p0, LK3/b;->f:I

    add-int/2addr v1, v3

    iget v4, p0, LK3/b;->d:I

    if-ne v1, v4, :cond_6

    iput v2, p0, LK3/b;->f:I

    iget-object v2, p0, LK3/b;->e:LT4/b;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, LT4/b;->f(J)V

    goto :goto_3

    :cond_6
    iput v1, p0, LK3/b;->f:I

    :cond_7
    :goto_3
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, LK3/b;->a:LK3/e;

    iget-boolean v1, v1, LK3/e;->l:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, LK3/c;->r:Lz3/g;

    invoke-interface {v1, v0}, Lz3/g;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iput-boolean v3, p0, LK3/b;->p:Z

    iget-object v1, p0, LK3/b;->a:LK3/e;

    new-instance v2, LK3/g;

    invoke-direct {v2, v0, v1}, LK3/g;-><init>(Ljava/lang/Object;Lz3/g;)V

    invoke-virtual {v1, v2}, LK3/e;->h(LT4/b;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v1, p0, LK3/b;->e:LT4/b;

    invoke-interface {v1}, LT4/b;->cancel()V

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, p0, LK3/c;->r:Lz3/g;

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    iput-boolean v3, p0, LK3/b;->p:Z

    iget-object v1, p0, LK3/b;->a:LK3/e;

    invoke-interface {v0, v1}, LT4/a;->a(Lz3/g;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v1, p0, LK3/b;->e:LT4/b;

    invoke-interface {v1}, LT4/b;->cancel()V

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, p0, LK3/c;->r:Lz3/g;

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v1, p0, LK3/b;->e:LT4/b;

    invoke-interface {v1}, LT4/b;->cancel()V

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, p0, LK3/c;->r:Lz3/g;

    iget-object v1, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, LK3/c;->r:Lz3/g;

    invoke-interface {v0, p0}, Lz3/g;->c(LT4/b;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LK3/b;->o:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/b;->m:Z

    invoke-virtual {p0}, LK3/c;->g()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
