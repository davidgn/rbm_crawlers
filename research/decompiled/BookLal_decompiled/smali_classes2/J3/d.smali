.class public final LJ3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/b;
.implements LB3/b;
.implements Lz3/j;


# instance fields
.field public final synthetic a:I

.field public b:LB3/b;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJ3/e;Lz3/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ3/d;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/d;->d:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LJ3/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lz3/j;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, LJ3/d;->a:I

    iput-object p1, p0, LJ3/d;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ3/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 2

    iget v0, p0, LJ3/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    iget-object v1, p0, LJ3/d;->b:LB3/b;

    invoke-static {v1, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v1, LL3/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, LJ3/d;->b:LB3/b;

    invoke-interface {v0, p0}, Lz3/j;->a(LB3/b;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LB3/b;->b()V

    sget-object p1, LF3/a;->a:LF3/a;

    iput-object p1, p0, LJ3/d;->b:LB3/b;

    sget-object p1, LF3/b;->a:LF3/b;

    invoke-interface {v0, p1}, Lz3/j;->a(LB3/b;)V

    invoke-interface {v0, v1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LJ3/d;->b:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LJ3/d;->b:LB3/b;

    iget-object p1, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast p1, Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    :try_start_1
    iget-object v1, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v1, LJ3/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, LJ3/d;->b:LB3/b;

    invoke-static {v1, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, LJ3/d;->b:LB3/b;

    invoke-interface {v0, p0}, Lz3/b;->a(LB3/b;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LB3/b;->b()V

    sget-object p1, LF3/a;->a:LF3/a;

    iput-object p1, p0, LJ3/d;->b:LB3/b;

    sget-object p1, LF3/b;->a:LF3/b;

    invoke-interface {v0, p1}, Lz3/b;->a(LB3/b;)V

    invoke-interface {v0, v1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, LJ3/d;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, LL3/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, LJ3/d;->b:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LJ3/d;->b:LB3/b;

    return-void

    :pswitch_0
    iget-object v0, p0, LJ3/d;->b:LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    iput-object v1, p0, LJ3/d;->b:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, LJ3/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, LJ3/d;->b:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, LL3/r;

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
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, LL3/r;

    iget-object v0, v0, LL3/r;->c:LE3/b;

    invoke-interface {v0, p1}, LE3/b;->accept(Ljava/lang/Object;)V
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

    move-object p1, v1

    :goto_0
    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LJ3/d;->b:LB3/b;

    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LJ3/d;->c()V

    return-void
.end method

.method public final onComplete()V
    .locals 4

    iget v0, p0, LJ3/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ3/d;->b:LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, LL3/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, LJ3/d;->b:LB3/b;

    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    invoke-virtual {p0}, LJ3/d;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LJ3/d;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void

    :pswitch_1
    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    iget-object v1, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v1, LJ3/e;

    iget-object v2, p0, LJ3/d;->b:LB3/b;

    sget-object v3, LF3/a;->a:LF3/a;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, v1, LJ3/e;->c:LE3/a;

    invoke-interface {v2}, LE3/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-interface {v0}, Lz3/b;->onComplete()V

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    :goto_1
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

    iget v0, p0, LJ3/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ3/d;->b:LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LJ3/d;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, LJ3/e;

    iget-object v1, p0, LJ3/d;->b:LB3/b;

    sget-object v2, LF3/a;->a:LF3/a;

    if-ne v1, v2, :cond_1

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v1, v0, LJ3/e;->b:LE3/b;

    invoke-interface {v1, p1}, LE3/b;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v2, LC3/b;

    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_1
    iget-object v1, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v1, Lz3/b;

    invoke-interface {v1, p1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LJ3/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ3/d;->b:LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, LL3/r;

    iget-object v0, v0, LL3/r;->b:LE3/b;

    invoke-interface {v0, p1}, LE3/b;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, LJ3/d;->b:LB3/b;

    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p0}, LJ3/d;->c()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, LJ3/d;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    :try_start_1
    iget-object v1, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v1, LE3/c;

    invoke-interface {v1, p1}, LE3/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The mapper returned a null item"

    invoke-static {p1, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
