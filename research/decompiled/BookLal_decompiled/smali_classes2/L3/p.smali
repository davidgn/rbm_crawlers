.class public final LL3/p;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/j;
.implements LB3/b;
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lz3/j;

.field public final b:Lz3/p;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lz3/j;Lz3/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LL3/p;->a:Lz3/j;

    iput-object p2, p0, LL3/p;->b:Lz3/p;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 0

    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LL3/p;->a:Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, LL3/p;->b:Lz3/p;

    invoke-virtual {v0, p0}, Lz3/p;->b(Ljava/lang/Runnable;)LB3/b;

    move-result-object v0

    invoke-static {p0, v0}, LF3/a;->e(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LL3/p;->d:Ljava/lang/Throwable;

    iget-object p1, p0, LL3/p;->b:Lz3/p;

    invoke-virtual {p1, p0}, Lz3/p;->b(Ljava/lang/Runnable;)LB3/b;

    move-result-object p1

    invoke-static {p0, p1}, LF3/a;->e(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LL3/p;->c:Ljava/lang/Object;

    iget-object p1, p0, LL3/p;->b:Lz3/p;

    invoke-virtual {p1, p0}, Lz3/p;->b(Ljava/lang/Runnable;)LB3/b;

    move-result-object p1

    invoke-static {p0, p1}, LF3/a;->e(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, LL3/p;->d:Ljava/lang/Throwable;

    const/4 v1, 0x0

    iget-object v2, p0, LL3/p;->a:Lz3/j;

    if-eqz v0, :cond_0

    iput-object v1, p0, LL3/p;->d:Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LL3/p;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iput-object v1, p0, LL3/p;->c:Ljava/lang/Object;

    invoke-interface {v2, v0}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lz3/j;->onComplete()V

    :goto_0
    return-void
.end method
