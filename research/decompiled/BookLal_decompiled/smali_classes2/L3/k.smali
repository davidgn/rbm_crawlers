.class public final LL3/k;
.super Lz3/h;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL3/k;->a:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 2

    sget-object v0, LG3/d;->b:LG3/a;

    new-instance v1, LB3/c;

    invoke-direct {v1, v0}, LB3/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lz3/j;->a(LB3/b;)V

    invoke-virtual {v1}, LB3/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, LL3/k;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, LB3/c;->c()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    invoke-interface {p1}, Lz3/j;->onComplete()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, LB3/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LL3/k;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
