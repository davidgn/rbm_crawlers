.class public final LJ3/b;
.super Lz3/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LJ3/b;->a:I

    iput-object p1, p0, LJ3/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lz3/b;)V
    .locals 3

    iget v0, p0, LJ3/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LD2/e;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, LJ3/b;->b:Ljava/lang/Object;

    check-cast p1, LJ3/e;

    invoke-virtual {p1, v0}, Lz3/a;->d(Lz3/b;)V

    return-void

    :pswitch_0
    sget-object v0, LG3/d;->b:LG3/a;

    new-instance v1, LB3/c;

    invoke-direct {v1, v0}, LB3/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lz3/b;->a(LB3/b;)V

    :try_start_0
    iget-object v0, p0, LJ3/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/q;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/q;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, LB3/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lz3/b;->onComplete()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, LB3/c;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    sget-object v0, LG3/d;->b:LG3/a;

    new-instance v1, LB3/c;

    invoke-direct {v1, v0}, LB3/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lz3/b;->a(LB3/b;)V

    :try_start_1
    iget-object v0, p0, LJ3/b;->b:Ljava/lang/Object;

    check-cast v0, LE3/a;

    invoke-interface {v0}, LE3/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, LB3/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lz3/b;->onComplete()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, LB3/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_2
    new-instance v0, LJ3/a;

    iget-object v1, p0, LJ3/b;->b:Ljava/lang/Object;

    check-cast v1, [Lz3/c;

    invoke-direct {v0, p1, v1}, LJ3/a;-><init>(Lz3/b;[Lz3/c;)V

    iget-object v1, v0, LJ3/a;->d:LB3/c;

    invoke-interface {p1, v1}, Lz3/b;->a(LB3/b;)V

    invoke-virtual {v0}, LJ3/a;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
