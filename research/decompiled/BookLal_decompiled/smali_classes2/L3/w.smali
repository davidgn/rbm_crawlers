.class public final LL3/w;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/j;


# instance fields
.field public final a:LL3/v;

.field public final b:I


# direct methods
.method public constructor <init>(LL3/v;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LL3/w;->a:LL3/v;

    iput p2, p0, LL3/w;->b:I

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 0

    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void
.end method

.method public final onComplete()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LL3/w;->a:LL3/v;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, LL3/w;->b:I

    invoke-virtual {v1, v0}, LL3/v;->a(I)V

    iget-object v0, v1, LL3/v;->a:Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LL3/w;->a:LL3/v;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, LL3/w;->b:I

    invoke-virtual {v1, v0}, LL3/v;->a(I)V

    iget-object v0, v1, LL3/v;->a:Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LL3/w;->a:LL3/v;

    iget-object v1, v0, LL3/v;->a:Lz3/j;

    iget v2, p0, LL3/w;->b:I

    iget-object v3, v0, LL3/v;->d:[Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, v0, LL3/v;->b:Ld3/a;

    invoke-virtual {p1, v3}, Ld3/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The zipper returned a null value"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
