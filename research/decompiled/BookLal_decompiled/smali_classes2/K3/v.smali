.class public final LK3/v;
.super LQ3/a;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LH3/a;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LK3/v;->f:I

    invoke-direct {p0, p1}, LQ3/a;-><init>(LH3/a;)V

    iput-object p2, p0, LK3/v;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, LK3/v;->f:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LQ3/a;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, LK3/v;->l:Ljava/lang/Object;

    check-cast v0, LK0/j;

    invoke-virtual {v0, p1}, LK0/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LQ3/a;->a:LH3/a;

    invoke-interface {v0, p1}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LQ3/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    :pswitch_0
    iget-boolean v0, p0, LQ3/a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, LQ3/a;->e:I

    iget-object v2, p0, LQ3/a;->a:LH3/a;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-interface {v2, p1}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iget-object v3, p0, LK3/v;->l:Ljava/lang/Object;

    check-cast v3, LE3/d;

    invoke-interface {v3, p1}, LE3/d;->test(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    invoke-interface {v2, p1}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, LQ3/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    move v1, v0

    :cond_3
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LK3/v;->f:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LQ3/a;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LQ3/a;->e:I

    iget-object v1, p0, LQ3/a;->a:LH3/a;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, LK3/v;->l:Ljava/lang/Object;

    check-cast v0, LK0/j;

    invoke-virtual {v0, p1}, LK0/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LQ3/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, LK3/v;->e(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LQ3/a;->b:LT4/b;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LT4/b;->f(J)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LK3/v;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LQ3/a;->c:LH3/e;

    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LK3/v;->l:Ljava/lang/Object;

    check-cast v1, LK0/j;

    invoke-virtual {v1, v0}, LK0/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, LQ3/a;->c:LH3/e;

    :cond_1
    :goto_1
    invoke-interface {v0}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, LK3/v;->l:Ljava/lang/Object;

    check-cast v2, LE3/d;

    invoke-interface {v2, v1}, LE3/d;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return-object v1

    :cond_3
    iget v1, p0, LQ3/a;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, LT4/b;->f(J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
