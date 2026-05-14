.class public final LM3/p;
.super Lz3/l;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LD4/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LD4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM3/p;->a:Ljava/lang/Object;

    iput-object p2, p0, LM3/p;->b:LD4/a;

    return-void
.end method


# virtual methods
.method public final c(Lz3/m;)V
    .locals 3

    sget-object v0, LF3/b;->a:LF3/b;

    :try_start_0
    iget-object v1, p0, LM3/p;->b:LD4/a;

    iget-object v2, p0, LM3/p;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, LD4/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz3/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v2, v1, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_1

    :try_start_1
    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1}, Lz3/m;->onComplete()V

    return-void

    :cond_0
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

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Lz3/l;->b(Lz3/m;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1, v1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
