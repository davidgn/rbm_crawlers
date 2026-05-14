.class public final LL3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/j;
.implements LB3/b;
.implements Lz3/r;


# instance fields
.field public final synthetic a:I

.field public final b:Lz3/j;

.field public final c:LE3/d;

.field public d:LB3/b;


# direct methods
.method public synthetic constructor <init>(Lz3/j;LE3/d;I)V
    .locals 0

    iput p3, p0, LL3/f;->a:I

    iput-object p1, p0, LL3/f;->b:Lz3/j;

    iput-object p2, p0, LL3/f;->c:LE3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget v0, p0, LL3/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/f;->d:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LL3/f;->d:LB3/b;

    iget-object p1, p0, LL3/f;->b:Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LL3/f;->d:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LL3/f;->d:LB3/b;

    iget-object p1, p0, LL3/f;->b:Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, LL3/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/f;->d:LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    iput-object v1, p0, LL3/f;->d:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :pswitch_0
    iget-object v0, p0, LL3/f;->d:LB3/b;

    sget-object v1, LF3/a;->a:LF3/a;

    iput-object v1, p0, LL3/f;->d:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, LL3/f;->b:Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, LL3/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/f;->b:Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LL3/f;->b:Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LL3/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/f;->b:Lz3/j;

    :try_start_0
    iget-object v1, p0, LL3/f;->c:LE3/d;

    invoke-interface {v1, p1}, LE3/d;->test(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lz3/j;->onComplete()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LL3/f;->b:Lz3/j;

    :try_start_1
    iget-object v1, p0, LL3/f;->c:LE3/d;

    invoke-interface {v1, p1}, LE3/d;->test(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lz3/j;->onComplete()V

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
