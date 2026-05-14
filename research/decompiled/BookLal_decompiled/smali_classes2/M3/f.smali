.class public final LM3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/m;
.implements LH3/c;


# instance fields
.field public final a:Lz3/m;

.field public b:LB3/b;

.field public c:LH3/c;

.field public d:Z

.field public final synthetic e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz3/m;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LM3/f;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM3/f;->a:Lz3/m;

    iput-object p2, p0, LM3/f;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget-object v0, p0, LM3/f;->b:LB3/b;

    invoke-static {v0, p1}, LF3/a;->h(LB3/b;LB3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LM3/f;->b:LB3/b;

    instance-of v0, p1, LH3/c;

    if-eqz v0, :cond_0

    check-cast p1, LH3/c;

    iput-object p1, p0, LM3/f;->c:LH3/c;

    :cond_0
    iget-object p1, p0, LM3/f;->a:Lz3/m;

    invoke-interface {p1, p0}, Lz3/m;->a(LB3/b;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, LM3/f;->b:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, LM3/f;->c:LH3/c;

    invoke-interface {v0}, LH3/h;->clear()V

    return-void
.end method

.method public final g(I)I
    .locals 0

    iget p1, p0, LM3/f;->e:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, LM3/f;->c:LH3/c;

    invoke-interface {v0}, LH3/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, LM3/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/f;->d:Z

    iget-object v0, p0, LM3/f;->a:Lz3/m;

    invoke-interface {v0}, Lz3/m;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LM3/f;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LM3/f;->d:Z

    iget-object v0, p0, LM3/f;->a:Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM3/f;->e:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LM3/f;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM3/f;->a:Lz3/m;

    :try_start_0
    iget-object v1, p0, LM3/f;->f:Ljava/lang/Object;

    check-cast v1, LE3/c;

    invoke-interface {v1, p1}, LE3/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The mapper function returned a null value."

    invoke-static {p1, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LM3/f;->b:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    invoke-virtual {p0, p1}, LM3/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LM3/f;->a:Lz3/m;

    :try_start_1
    iget-object v1, p0, LM3/f;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/t;

    invoke-virtual {v1, p1}, Lcom/google/firebase/inappmessaging/internal/t;->test(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, p0, LM3/f;->b:LB3/b;

    invoke-interface {v0}, LB3/b;->b()V

    invoke-virtual {p0, p1}, LM3/f;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    iget v0, p0, LM3/f;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM3/f;->c:LH3/c;

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LM3/f;->f:Ljava/lang/Object;

    check-cast v1, LE3/c;

    invoke-interface {v1, v0}, LE3/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :pswitch_0
    iget-object v0, p0, LM3/f;->c:LH3/c;

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, LM3/f;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/t;

    invoke-virtual {v1, v0}, Lcom/google/firebase/inappmessaging/internal/t;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
