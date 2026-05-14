.class public final LG3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements LE3/c;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LG3/c;->a:I

    iput-object p1, p0, LG3/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, LG3/c;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LG3/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG3/c;->b:Ljava/lang/Object;

    check-cast v0, Lk0/a;

    iget-object v1, v0, Lk0/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, v0, Lk0/a;->f:Lk0/b;

    invoke-virtual {v1}, Lk0/b;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v3}, Lk0/a;->a(Ljava/lang/Object;)V

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v4, v0, Lk0/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v3}, Lk0/a;->a(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, LG3/c;->b:Ljava/lang/Object;

    check-cast v0, LZ0/c;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, LG3/c;->b:Ljava/lang/Object;

    check-cast v1, LZ0/c;

    iget-object v2, v1, LZ0/c;->n:Ljava/io/BufferedWriter;

    if-nez v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, LZ0/c;->w()V

    iget-object v1, p0, LG3/c;->b:Ljava/lang/Object;

    check-cast v1, LZ0/c;

    invoke-virtual {v1}, LZ0/c;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LG3/c;->b:Ljava/lang/Object;

    check-cast v1, LZ0/c;

    invoke-virtual {v1}, LZ0/c;->u()V

    iget-object v1, p0, LG3/c;->b:Ljava/lang/Object;

    check-cast v1, LZ0/c;

    const/4 v2, 0x0

    iput v2, v1, LZ0/c;->p:I

    :cond_1
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :pswitch_1
    iget-object v0, p0, LG3/c;->b:Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
