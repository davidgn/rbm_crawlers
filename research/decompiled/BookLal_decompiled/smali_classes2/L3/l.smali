.class public final LL3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/b;
.implements LB3/b;
.implements Lz3/j;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public c:LB3/b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LL3/l;->a:I

    iput-object p1, p0, LL3/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget v0, p0, LL3/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/l;->c:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LL3/l;->c:LB3/b;

    iget-object p1, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast p1, Lz3/r;

    invoke-interface {p1, p0}, Lz3/r;->a(LB3/b;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LL3/l;->c:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LL3/l;->c:LB3/b;

    iget-object p1, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast p1, Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, LL3/l;->c:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LL3/l;->c:LB3/b;

    iget-object p1, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast p1, Lz3/j;

    invoke-interface {p1, p0}, Lz3/j;->a(LB3/b;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, LL3/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/l;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LL3/l;->c:LB3/b;

    return-void

    :pswitch_0
    iget-object v0, p0, LL3/l;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :pswitch_1
    iget-object v0, p0, LL3/l;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LL3/l;->c:LB3/b;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 2

    iget v0, p0, LL3/l;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LL3/l;->c:LB3/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v1, Lz3/r;

    invoke-interface {v1, v0}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v1, Lz3/j;

    invoke-interface {v1, v0}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LL3/l;->c:LB3/b;

    iget-object v0, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, LL3/l;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LL3/l;->c:LB3/b;

    iget-object v0, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    sget-object v0, LF3/a;->a:LF3/a;

    iput-object v0, p0, LL3/l;->c:LB3/b;

    iget-object v0, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, LL3/l;->a:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, LF3/a;->a:LF3/a;

    iput-object p1, p0, LL3/l;->c:LB3/b;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, LL3/l;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
