.class public final LG2/c;
.super LG2/A;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LG2/c;->l:I

    iput-object p1, p0, LG2/c;->m:Ljava/lang/Object;

    invoke-direct {p0}, LG2/A;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget v0, p0, LG2/c;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v0, LG2/d;

    iget-object v0, v0, LG2/d;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iget-object v1, v1, LG2/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iget-object v1, v1, LG2/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iget-object v1, v1, LG2/d;->b:LG2/z;

    const-string v3, "Leaving the connection open for other ongoing calls."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, LG2/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iget-object v3, v1, LG2/d;->n:Landroid/os/IInterface;

    if-eqz v3, :cond_1

    iget-object v1, v1, LG2/d;->b:LG2/z;

    const-string v3, "Unbind from service."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, LG2/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iget-object v3, v1, LG2/d;->a:Landroid/content/Context;

    iget-object v1, v1, LG2/d;->m:LE2/k;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iput-boolean v2, v1, LG2/d;->g:Z

    const/4 v2, 0x0

    iput-object v2, v1, LG2/d;->n:Landroid/os/IInterface;

    iput-object v2, v1, LG2/d;->m:LE2/k;

    :cond_1
    iget-object v1, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v1, LG2/d;

    invoke-virtual {v1}, LG2/d;->e()V

    monitor-exit v0

    :goto_0
    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    iget-object v0, p0, LG2/c;->m:Ljava/lang/Object;

    check-cast v0, LE2/k;

    iget-object v1, v0, LE2/k;->b:Ljava/lang/Object;

    check-cast v1, LG2/d;

    iget-object v2, v1, LG2/d;->b:LG2/z;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "unlinkToDeath"

    invoke-virtual {v2, v5, v4}, LG2/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, LG2/d;->n:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v1, v1, LG2/d;->k:LE2/i;

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iget-object v0, v0, LE2/k;->b:Ljava/lang/Object;

    check-cast v0, LG2/d;

    iput-object v1, v0, LG2/d;->n:Landroid/os/IInterface;

    iput-boolean v3, v0, LG2/d;->g:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
