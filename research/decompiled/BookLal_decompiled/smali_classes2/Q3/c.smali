.class public final LQ3/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LT4/b;
.implements LB3/b;


# instance fields
.field public final a:LQ1/b;

.field public final b:Ly3/c;

.field public final c:Ly3/c;

.field public final d:LK3/G;


# direct methods
.method public constructor <init>(LQ1/b;)V
    .locals 3

    sget-object v0, LG3/d;->e:Ly3/c;

    sget-object v1, LG3/d;->c:Ly3/c;

    sget-object v2, LK3/G;->a:LK3/G;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LQ3/c;->a:LQ1/b;

    iput-object v0, p0, LQ3/c;->b:Ly3/c;

    iput-object v1, p0, LQ3/c;->c:Ly3/c;

    iput-object v2, p0, LQ3/c;->d:LK3/G;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    invoke-static {p0}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final c(LT4/b;)V
    .locals 1

    invoke-static {p0, p1}, LR3/f;->b(Ljava/util/concurrent/atomic/AtomicReference;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LQ3/c;->d:LK3/G;

    invoke-virtual {v0, p0}, LK3/G;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LT4/b;->cancel()V

    invoke-virtual {p0, v0}, LQ3/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    invoke-static {p0}, LR3/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final f(J)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    invoke-interface {v0, p1, p2}, LT4/b;->f(J)V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LR3/f;->a:LR3/f;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, LQ3/c;->c:Ly3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LR3/f;->a:LR3/f;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, LQ3/c;->b:Ly3/c;

    invoke-virtual {v0, p1}, Ly3/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v1, LC3/b;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, LL4/l;->y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LR3/f;->a:LR3/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, LQ3/c;->a:LQ1/b;

    invoke-virtual {v0, p1}, LQ1/b;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT4/b;

    invoke-interface {v0}, LT4/b;->cancel()V

    invoke-virtual {p0, p1}, LQ3/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
