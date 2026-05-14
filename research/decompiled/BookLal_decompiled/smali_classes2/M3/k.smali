.class public final LM3/k;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LB3/b;
.implements Lz3/m;


# instance fields
.field public final a:Lz3/b;

.field public final b:LS3/b;

.field public final c:Lcom/google/firebase/inappmessaging/internal/s;

.field public final d:LB3/a;

.field public e:LB3/b;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lz3/b;Lcom/google/firebase/inappmessaging/internal/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LM3/k;->a:Lz3/b;

    iput-object p2, p0, LM3/k;->c:Lcom/google/firebase/inappmessaging/internal/s;

    new-instance p1, LS3/b;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LM3/k;->b:LS3/b;

    new-instance p1, LB3/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LB3/a;-><init>(I)V

    iput-object p1, p0, LM3/k;->d:LB3/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget-object v0, p0, LM3/k;->e:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LM3/k;->e:LB3/b;

    iget-object p1, p0, LM3/k;->a:Lz3/b;

    invoke-interface {p1, p0}, Lz3/b;->a(LB3/b;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/k;->f:Z

    iget-object v0, p0, LM3/k;->e:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    iget-object v0, p0, LM3/k;->d:LB3/a;

    invoke-virtual {v0}, LB3/a;->b()V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LM3/k;->b:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, LM3/k;->a:Lz3/b;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lz3/b;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LM3/k;->b:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LM3/k;->b()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {v0}, LS3/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, LM3/k;->a:Lz3/b;

    invoke-interface {v0, p1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LM3/k;->c:Lcom/google/firebase/inappmessaging/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/s;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz3/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, LL3/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LL3/c;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    iget-boolean v1, p0, LM3/k;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, LM3/k;->d:LB3/a;

    invoke-virtual {v1, v0}, LB3/a;->a(LB3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lz3/a;

    invoke-virtual {p1, v0}, Lz3/a;->d(Lz3/b;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LM3/k;->e:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    invoke-virtual {p0, p1}, LM3/k;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
