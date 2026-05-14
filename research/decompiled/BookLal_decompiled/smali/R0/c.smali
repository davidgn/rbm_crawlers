.class public final LR0/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh3/k;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LR0/c;->a:I

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, LR0/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LR0/c;->a:I

    iput-object p1, p0, LR0/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget v0, p0, LR0/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, LR0/c;->b:Ljava/lang/Object;

    check-cast p2, Lr1/c;

    iget-boolean v0, p2, Lr1/c;->c:Z

    invoke-static {p1}, Lr1/c;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p2, Lr1/c;->c:Z

    iget-object p1, p0, LR0/c;->b:Ljava/lang/Object;

    check-cast p1, Lr1/c;

    iget-boolean p1, p1, Lr1/c;->c:Z

    if-eq v0, p1, :cond_2

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ConnectivityMonitor"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "connectivity changed, isConnected: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LR0/c;->b:Ljava/lang/Object;

    check-cast v0, Lr1/c;

    iget-boolean v0, v0, Lr1/c;->c:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, LR0/c;->b:Ljava/lang/Object;

    check-cast p1, Lr1/c;

    iget-object p2, p1, Lr1/c;->b:LD2/e;

    iget-boolean p1, p1, Lr1/c;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p2, LD2/e;->c:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/i;

    monitor-enter p1

    :try_start_0
    iget-object p2, p2, LD2/e;->b:Ljava/lang/Object;

    check-cast p2, Lj0/d;

    invoke-virtual {p2}, Lj0/d;->c()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, LR0/c;->b:Ljava/lang/Object;

    check-cast v2, Lh3/k;

    if-eqz v1, :cond_5

    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, v2, Lh3/k;->h:Lh/c;

    const/16 v1, 0xa

    invoke-virtual {p2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lh3/F;->a:Ljava/lang/StringBuilder;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    iget-object p2, v2, Lh3/k;->h:Lh/c;

    const/16 v0, 0x9

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, LR0/c;->b:Ljava/lang/Object;

    check-cast p1, Lh/w;

    invoke-virtual {p1}, Lh/w;->g()V

    return-void

    :pswitch_2
    if-eqz p2, :cond_7

    iget-object p1, p0, LR0/c;->b:Ljava/lang/Object;

    check-cast p1, LR0/d;

    invoke-virtual {p1, p2}, LR0/d;->g(Landroid/content/Intent;)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
