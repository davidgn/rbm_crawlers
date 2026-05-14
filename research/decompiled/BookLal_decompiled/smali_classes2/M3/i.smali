.class public final LM3/i;
.super LM3/a;
.source "SourceFile"


# instance fields
.field public final b:LD4/a;

.field public final c:I


# direct methods
.method public constructor <init>(Lz3/l;LD4/a;I)V
    .locals 0

    invoke-direct {p0, p1}, LM3/a;-><init>(Lz3/l;)V

    iput-object p2, p0, LM3/i;->b:LD4/a;

    iput p3, p0, LM3/i;->c:I

    return-void
.end method


# virtual methods
.method public final c(Lz3/m;)V
    .locals 4

    sget-object v0, LF3/b;->a:LF3/b;

    iget-object v1, p0, LM3/i;->b:LD4/a;

    iget-object v2, p0, LM3/a;->a:Lz3/l;

    instance-of v3, v2, Ljava/util/concurrent/Callable;

    if-eqz v3, :cond_3

    :try_start_0
    check-cast v2, Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1}, Lz3/m;->onComplete()V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, LD4/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz3/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of v2, v1, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_2

    :try_start_2
    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1}, Lz3/m;->onComplete()V

    goto :goto_0

    :cond_1
    new-instance v0, LM3/o;

    invoke-direct {v0, p1, v1}, LM3/o;-><init>(Lz3/m;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-virtual {v0}, LM3/o;->run()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1, v1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lz3/l;->b(Lz3/m;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1, v1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1, v1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    new-instance v0, LM3/h;

    iget v3, p0, LM3/i;->c:I

    invoke-direct {v0, p1, v1, v3}, LM3/h;-><init>(Lz3/m;LD4/a;I)V

    invoke-virtual {v2, v0}, Lz3/l;->b(Lz3/m;)V

    return-void
.end method
