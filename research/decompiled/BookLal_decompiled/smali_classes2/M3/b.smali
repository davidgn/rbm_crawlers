.class public final LM3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/m;
.implements LB3/b;


# instance fields
.field public final synthetic a:I

.field public final b:LG3/b;

.field public c:LB3/b;

.field public d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LG3/b;I)V
    .locals 0

    iput p3, p0, LM3/b;->a:I

    iput-object p1, p0, LM3/b;->e:Ljava/lang/Object;

    iput-object p2, p0, LM3/b;->b:LG3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget v0, p0, LM3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM3/b;->c:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LM3/b;->c:LB3/b;

    iget-object p1, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast p1, Lz3/r;

    invoke-interface {p1, p0}, Lz3/r;->a(LB3/b;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LM3/b;->c:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LM3/b;->c:LB3/b;

    iget-object p1, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast p1, Lz3/m;

    invoke-interface {p1, p0}, Lz3/m;->a(LB3/b;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget v0, p0, LM3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM3/b;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    :pswitch_0
    iget-object v0, p0, LM3/b;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 2

    iget v0, p0, LM3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LM3/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/b;->d:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast v1, Lz3/r;

    invoke-interface {v1, v0}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, LM3/b;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/b;->d:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast v1, Lz3/m;

    invoke-interface {v1, v0}, Lz3/m;->onNext(Ljava/lang/Object;)V

    invoke-interface {v1}, Lz3/m;->onComplete()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, LM3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LM3/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/b;->d:Z

    iget-object v0, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, LM3/b;->d:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/b;->d:Z

    iget-object v0, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast v0, Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LM3/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LM3/b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, LM3/b;->b:LG3/b;

    invoke-virtual {v0, p1}, LG3/b;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LM3/b;->d:Z

    iget-object p1, p0, LM3/b;->c:LB3/b;

    invoke-interface {p1}, LB3/b;->b()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LM3/b;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    invoke-virtual {p0, p1}, LM3/b;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, LM3/b;->d:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, LM3/b;->b:LG3/b;

    invoke-virtual {v0, p1}, LG3/b;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, LM3/b;->d:Z

    iget-object p1, p0, LM3/b;->c:LB3/b;

    invoke-interface {p1}, LB3/b;->b()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, LM3/b;->e:Ljava/lang/Object;

    check-cast v0, Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    invoke-interface {v0}, Lz3/m;->onComplete()V

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LM3/b;->c:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    invoke-virtual {p0, p1}, LM3/b;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
