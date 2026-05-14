.class public final Lk3/b;
.super Lj3/V;
.source "SourceFile"


# instance fields
.field public final a:Lj3/V;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/net/ConnectivityManager;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lj3/V;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lk3/b;->d:Ljava/lang/Object;

    iput-object p1, p0, Lk3/b;->a:Lj3/V;

    iput-object p2, p0, Lk3/b;->b:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lk3/b;->c:Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {p0}, Lk3/b;->n()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AndroidChannelBuilder"

    const-string v0, "Failed to configure network monitoring. Does app have ACCESS_NETWORK_STATE permission?"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lk3/b;->c:Landroid/net/ConnectivityManager;

    :goto_0
    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0}, Lj3/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lj3/h0;Lj3/g;)Lj3/k;
    .locals 1

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0, p1, p2}, Lj3/h;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    return-object p1
.end method

.method public final h(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0, p1, p2, p3}, Lj3/V;->h(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0}, Lj3/V;->i()V

    return-void
.end method

.method public final j()Lj3/q;
    .locals 1

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0}, Lj3/V;->j()Lj3/q;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lj3/q;Lcom/google/firebase/firestore/remote/g;)V
    .locals 1

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0, p1, p2}, Lj3/V;->k(Lj3/q;Lcom/google/firebase/firestore/remote/g;)V

    return-void
.end method

.method public final l()Lj3/V;
    .locals 2

    iget-object v0, p0, Lk3/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk3/b;->e:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lk3/b;->e:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0}, Lj3/V;->l()Lj3/V;

    move-result-object v0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final m()Lj3/V;
    .locals 2

    iget-object v0, p0, Lk3/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk3/b;->e:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lk3/b;->e:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk3/b;->a:Lj3/V;

    invoke-virtual {v0}, Lj3/V;->m()Lj3/V;

    move-result-object v0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lk3/b;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    new-instance v1, LR0/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LR0/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v0, LB/h;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v1, v3}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lk3/b;->e:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    new-instance v0, Lk3/a;

    invoke-direct {v0, p0}, Lk3/a;-><init>(Lk3/b;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lk3/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, LB/h;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object v1, p0, Lk3/b;->e:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
