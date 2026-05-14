.class public final LL3/i;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lz3/j;
.implements Lz3/b;
.implements LB3/b;
.implements Lz3/r;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LL3/i;->a:I

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, LL3/i;->b:Ljava/lang/Object;

    iput-object p3, p0, LL3/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz3/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LL3/i;->a:I

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    iput-object p1, p0, LL3/i;->c:Ljava/lang/Object;

    .line 4
    new-instance p1, LB3/c;

    const/4 v0, 0x1

    .line 5
    invoke-direct {p1, v0}, LB3/c;-><init>(I)V

    .line 6
    iput-object p1, p0, LL3/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget v0, p0, LL3/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast p1, Lz3/r;

    invoke-interface {p1, p0}, Lz3/r;->a(LB3/b;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast p1, Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_1
    return-void

    :pswitch_1
    invoke-static {p0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    :pswitch_2
    invoke-static {p0, p1}, LF3/a;->e(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, LL3/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_0
    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_1
    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v0, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v0, LB3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_2
    invoke-static {p0}, LF3/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    iget v0, p0, LL3/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LD2/e;

    iget-object v1, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v1, Lz3/j;

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1, p0}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, LL3/i;->c:Ljava/lang/Object;

    check-cast v1, Lz3/h;

    invoke-virtual {v1, v0}, Lz3/h;->b(Lz3/j;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LL3/i;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void

    :pswitch_1
    iget-object v0, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    invoke-interface {v0}, Lz3/b;->onComplete()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, LL3/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    :try_start_0
    iget-object v1, p0, LL3/i;->c:Ljava/lang/Object;

    check-cast v1, LG3/c;

    iget-object v1, v1, LG3/c;->b:Ljava/lang/Object;

    check-cast v1, Lz3/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, LD2/e;

    const/4 v2, 0x4

    invoke-direct {p1, v2, p0, v0}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lz3/q;->b(Lz3/r;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v2, LC3/b;

    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lz3/r;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LL3/i;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    invoke-interface {v0, p1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LL3/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LL3/i;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LL3/i;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    :try_start_0
    iget-object v0, p0, LL3/i;->c:Ljava/lang/Object;

    check-cast v0, LE3/c;

    invoke-interface {v0, p1}, LE3/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz3/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    invoke-static {v0}, LF3/a;->c(LB3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lz3/a;

    invoke-virtual {p1, p0}, Lz3/a;->d(Lz3/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, LL3/i;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
