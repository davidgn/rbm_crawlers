.class public final LK3/S;
.super Lz3/d;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:LE3/c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LE3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/S;->b:Ljava/lang/Object;

    iput-object p2, p0, LK3/S;->c:LE3/c;

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LK3/S;->c:LE3/c;

    iget-object v1, p0, LK3/S;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LE3/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LT4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_1

    :try_start_1
    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    invoke-static {p1}, LR3/d;->a(Lz3/g;)V

    return-void

    :cond_0
    new-instance v1, LR3/e;

    invoke-direct {v1, v0, p1}, LR3/e;-><init>(Ljava/lang/Object;Lz3/g;)V

    invoke-interface {p1, v1}, Lz3/g;->c(LT4/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LR3/d;->b(Ljava/lang/Throwable;Lz3/g;)V

    return-void

    :cond_1
    invoke-interface {v0, p1}, LT4/a;->a(Lz3/g;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0, p1}, LR3/d;->b(Ljava/lang/Throwable;Lz3/g;)V

    return-void
.end method
