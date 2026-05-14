.class public final Ll3/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/I0;


# direct methods
.method public synthetic constructor <init>(Ll3/I0;I)V
    .locals 0

    iput p2, p0, Ll3/G0;->a:I

    iput-object p1, p0, Ll3/G0;->b:Ll3/I0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ll3/G0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/G0;->b:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->r()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/G0;->b:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ll3/L0;->j0:Ll3/x0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll3/G0;->b:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ll3/G0;->b:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/H0;

    const-string v3, "Channel is forcefully shutdown"

    invoke-virtual {v1, v3, v2}, Ll3/H0;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll3/G0;->b:Ll3/I0;

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->E:LR0/i;

    sget-object v1, Ll3/L0;->f0:Lj3/r0;

    invoke-virtual {v0, v1}, LR0/i;->o(Lj3/r0;)V

    iget-object v2, v0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, LR0/i;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll3/s;

    invoke-interface {v3, v1}, Ll3/s;->d(Lj3/r0;)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v0, v0, Ll3/L0;->D:Ll3/J;

    invoke-virtual {v0, v1}, Ll3/J;->b(Lj3/r0;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Ll3/G0;->b:Ll3/I0;

    iget-object v1, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    if-nez v1, :cond_4

    iget-object v1, v0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ll3/L0;->j0:Ll3/x0;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->E:LR0/i;

    sget-object v1, Ll3/L0;->g0:Lj3/r0;

    invoke-virtual {v0, v1}, LR0/i;->o(Lj3/r0;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
