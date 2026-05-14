.class public abstract LK3/b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lz3/g;
.implements LK3/f;
.implements LT4/b;


# instance fields
.field public final a:LK3/e;

.field public final b:Lcom/google/firebase/inappmessaging/internal/j;

.field public final c:I

.field public final d:I

.field public e:LT4/b;

.field public f:I

.field public l:LH3/h;

.field public volatile m:Z

.field public volatile n:Z

.field public final o:LS3/b;

.field public volatile p:Z

.field public q:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LK3/b;->b:Lcom/google/firebase/inappmessaging/internal/j;

    iput p2, p0, LK3/b;->c:I

    iput p2, p0, LK3/b;->d:I

    new-instance p1, LK3/e;

    invoke-direct {p1, p0}, LK3/e;-><init>(LK3/b;)V

    iput-object p1, p0, LK3/b;->a:LK3/e;

    new-instance p1, LS3/b;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LK3/b;->o:LS3/b;

    return-void
.end method


# virtual methods
.method public final c(LT4/b;)V
    .locals 3

    iget-object v0, p0, LK3/b;->e:LT4/b;

    invoke-static {v0, p1}, LR3/f;->e(LT4/b;LT4/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LK3/b;->e:LT4/b;

    instance-of v0, p1, LH3/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LH3/e;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, LH3/d;->g(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, LK3/b;->q:I

    iput-object v0, p0, LK3/b;->l:LH3/h;

    iput-boolean v2, p0, LK3/b;->m:Z

    invoke-virtual {p0}, LK3/b;->h()V

    invoke-virtual {p0}, LK3/b;->g()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LK3/b;->q:I

    iput-object v0, p0, LK3/b;->l:LH3/h;

    invoke-virtual {p0}, LK3/b;->h()V

    iget v0, p0, LK3/b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    return-void

    :cond_1
    new-instance v0, LO3/a;

    iget v1, p0, LK3/b;->c:I

    invoke-direct {v0, v1}, LO3/a;-><init>(I)V

    iput-object v0, p0, LK3/b;->l:LH3/h;

    invoke-virtual {p0}, LK3/b;->h()V

    iget v0, p0, LK3/b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_2
    return-void
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/b;->m:Z

    invoke-virtual {p0}, LK3/b;->g()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LK3/b;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LK3/b;->l:LH3/h;

    invoke-interface {v0, p1}, LH3/h;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LK3/b;->e:LT4/b;

    invoke-interface {p1}, LT4/b;->cancel()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, LK3/b;->g()V

    return-void
.end method
