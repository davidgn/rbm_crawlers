.class public final LL3/u;
.super Lz3/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LL3/u;->a:I

    iput-object p1, p0, LL3/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lz3/m;)V
    .locals 3

    iget v0, p0, LL3/u;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LF3/b;->a:LF3/b;

    :try_start_0
    iget-object v1, p0, LL3/u;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1}, Lz3/m;->onComplete()V

    goto :goto_0

    :cond_0
    new-instance v0, LM3/m;

    invoke-direct {v0, p1, v1}, LM3/m;-><init>(Lz3/m;Ljava/util/Iterator;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    iget-boolean p1, v0, LM3/m;->d:Z

    if-nez p1, :cond_4

    :cond_1
    iget-boolean p1, v0, LM3/m;->c:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object p1, v0, LM3/m;->b:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The iterator returned a null value"

    invoke-static {p1, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, v0, LM3/m;->a:Lz3/m;

    invoke-interface {v1, p1}, Lz3/m;->onNext(Ljava/lang/Object;)V

    iget-boolean p1, v0, LM3/m;->c:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object p1, v0, LM3/m;->b:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_1

    iget-boolean p1, v0, LM3/m;->c:Z

    if-nez p1, :cond_4

    iget-object p1, v0, LM3/m;->a:Lz3/m;

    invoke-interface {p1}, Lz3/m;->onComplete()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, v0, LM3/m;->a:Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    iget-object v0, v0, LM3/m;->a:Lz3/m;

    invoke-interface {v0, p1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1, v1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_3
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1, v1}, Lz3/m;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, LL3/t;

    invoke-direct {v0, p1}, LL3/t;-><init>(Lz3/m;)V

    iget-object p1, p0, LL3/u;->b:Ljava/lang/Object;

    check-cast p1, LL3/j;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
