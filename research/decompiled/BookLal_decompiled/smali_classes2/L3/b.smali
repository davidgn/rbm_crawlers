.class public final LL3/b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/j;
.implements LB3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LL3/b;->a:I

    sget-object v0, LG3/d;->d:Lz2/e;

    sget-object v1, LG3/d;->e:Ly3/c;

    sget-object v2, LG3/d;->c:Ly3/c;

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object v0, p0, LL3/b;->b:Ljava/lang/Object;

    .line 3
    iput-object v1, p0, LL3/b;->c:Ljava/lang/Object;

    .line 4
    iput-object v2, p0, LL3/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz3/j;LE3/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LL3/b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    iput-object p1, p0, LL3/b;->b:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, LL3/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget v0, p0, LL3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/b;->d:Ljava/lang/Object;

    check-cast v0, LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LL3/b;->d:Ljava/lang/Object;

    iget-object p1, p0, LL3/b;->b:Ljava/lang/Object;

    check-cast p1, Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, LL3/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v0, p0, LL3/b;->d:Ljava/lang/Object;

    check-cast v0, LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :pswitch_0
    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 1

    iget v0, p0, LL3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/b;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void

    :pswitch_0
    sget-object v0, LF3/a;->a:LF3/a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, LL3/b;->d:Ljava/lang/Object;

    check-cast v0, Ly3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, LL3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/b;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    sget-object v0, LF3/a;->a:LF3/a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, LL3/b;->c:Ljava/lang/Object;

    check-cast v0, Ly3/c;

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

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LL3/b;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LL3/b;->c:Ljava/lang/Object;

    check-cast v0, LE3/c;

    invoke-interface {v0, p1}, LE3/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz3/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    invoke-static {v0}, LF3/a;->c(LB3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LC4/o;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LC4/o;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LL3/b;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object p1, LF3/a;->a:LF3/a;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, LL3/b;->b:Ljava/lang/Object;

    check-cast p1, Lz2/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
