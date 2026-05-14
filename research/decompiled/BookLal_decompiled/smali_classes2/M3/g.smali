.class public final LM3/g;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/m;


# instance fields
.field public final a:J

.field public final b:LM3/h;

.field public volatile c:Z

.field public volatile d:LH3/h;

.field public e:I


# direct methods
.method public constructor <init>(LM3/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, LM3/g;->a:J

    iput-object p1, p0, LM3/g;->b:LM3/h;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 2

    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, LH3/c;

    if-eqz v0, :cond_1

    check-cast p1, LH3/c;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, LH3/d;->g(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, LM3/g;->e:I

    iput-object p1, p0, LM3/g;->d:LH3/h;

    iput-boolean v1, p0, LM3/g;->c:Z

    iget-object p1, p0, LM3/g;->b:LM3/h;

    invoke-virtual {p1}, LM3/h;->f()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, LM3/g;->e:I

    iput-object p1, p0, LM3/g;->d:LH3/h;

    :cond_1
    return-void
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/g;->c:Z

    iget-object v0, p0, LM3/g;->b:LM3/h;

    invoke-virtual {v0}, LM3/h;->f()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LM3/g;->b:LM3/h;

    iget-object v0, v0, LM3/h;->l:LS3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LS3/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LM3/g;->b:LM3/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LM3/h;->e()Z

    const/4 p1, 0x1

    iput-boolean p1, p0, LM3/g;->c:Z

    iget-object p1, p0, LM3/g;->b:LM3/h;

    invoke-virtual {p1}, LM3/h;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LM3/g;->e:I

    if-nez v0, :cond_3

    iget-object v0, p0, LM3/g;->b:LM3/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, LM3/h;->a:Lz3/m;

    invoke-interface {v1, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_0
    iget-object v1, p0, LM3/g;->d:LH3/h;

    if-nez v1, :cond_1

    new-instance v1, LO3/b;

    iget v2, v0, LM3/h;->d:I

    invoke-direct {v1, v2}, LO3/b;-><init>(I)V

    iput-object v1, p0, LM3/g;->d:LH3/h;

    :cond_1
    invoke-interface {v1, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, LM3/h;->g()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, LM3/g;->b:LM3/h;

    invoke-virtual {p1}, LM3/h;->f()V

    :goto_0
    return-void
.end method
