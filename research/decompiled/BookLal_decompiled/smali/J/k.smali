.class public final LJ/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LJ/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LJ/k;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/k;->b:Ljava/lang/Object;

    iput-object p2, p0, LJ/k;->c:Ljava/lang/Object;

    iput-object p3, p0, LJ/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LJ/k;->a:I

    iput-object p1, p0, LJ/k;->d:Ljava/lang/Object;

    iput-object p2, p0, LJ/k;->b:Ljava/lang/Object;

    iput-object p3, p0, LJ/k;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, LJ/k;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "Unsupported SocketAddress implementation "

    :try_start_0
    iget-object v4, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    new-instance v4, Lm3/k;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object v4

    :try_start_1
    iget-object v5, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v5, Lm3/n;

    iget-object v6, v5, Lm3/n;->N:Lj3/C;

    if-nez v6, :cond_0

    iget-object v3, v5, Lm3/n;->A:Ljavax/net/SocketFactory;

    iget-object v5, v5, Lm3/n;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v6, Lm3/n;

    iget-object v6, v6, Lm3/n;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :cond_0
    iget-object v7, v6, Lj3/C;->a:Ljava/net/InetSocketAddress;

    if-eqz v7, :cond_5

    iget-object v3, v6, Lj3/C;->b:Ljava/net/InetSocketAddress;

    iget-object v8, v6, Lj3/C;->c:Ljava/lang/String;

    iget-object v6, v6, Lj3/C;->d:Ljava/lang/String;

    invoke-static {v5, v3, v7, v8, v6}, Lm3/n;->g(Lm3/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    :goto_1
    iget-object v5, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v5, Lm3/n;

    iget-object v6, v5, Lm3/n;->B:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_2

    iget-object v0, v5, Lm3/n;->b:Ljava/lang/String;

    invoke-static {v0}, Ll3/b0;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v5, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v5, Lm3/n;

    invoke-virtual {v5}, Lm3/n;->k()I

    move-result v5

    iget-object v7, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v7, Lm3/n;

    iget-object v7, v7, Lm3/n;->E:Ln3/b;

    invoke-static {v6, v3, v0, v5, v7}, Lm3/s;->a(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Socket;Ljava/lang/String;ILn3/b;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {v3}, LL4/l;->E(Ljava/net/Socket;)LQ4/c;

    move-result-object v1

    invoke-static {v1}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object v4

    iget-object v1, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v1, Lm3/c;

    invoke-static {v3}, LL4/l;->C(Ljava/net/Socket;)LQ4/b;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lm3/c;->b(LQ4/b;Ljava/net/Socket;)V

    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, Lm3/n;

    iget-object v5, v1, Lm3/n;->u:Lj3/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LD2/e;

    invoke-direct {v6, v5}, LD2/e;-><init>(Lj3/b;)V

    sget-object v5, Lj3/i;->a:Lj3/a;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, LD2/e;->v(Lj3/a;Ljava/lang/Object;)V

    sget-object v5, Lj3/i;->b:Lj3/a;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, LD2/e;->v(Lj3/a;Ljava/lang/Object;)V

    sget-object v3, Lj3/i;->c:Lj3/a;

    invoke-virtual {v6, v3, v0}, LD2/e;->v(Lj3/a;Ljava/lang/Object;)V

    sget-object v3, Ll3/J1;->a:Lj3/a;

    if-nez v0, :cond_3

    sget-object v5, Lj3/n0;->a:Lj3/n0;

    goto :goto_2

    :cond_3
    sget-object v5, Lj3/n0;->b:Lj3/n0;

    :goto_2
    invoke-virtual {v6, v3, v5}, LD2/e;->v(Lj3/a;Ljava/lang/Object;)V

    invoke-virtual {v6}, LD2/e;->b()Lj3/b;

    move-result-object v3

    iput-object v3, v1, Lm3/n;->u:Lj3/b;
    :try_end_1
    .catch Lj3/s0; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, Lm3/n;

    new-instance v2, Lm3/m;

    iget-object v3, v1, Lm3/n;->g:Lo3/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lo3/h;

    invoke-direct {v3, v4}, Lo3/h;-><init>(LQ4/s;)V

    invoke-direct {v2, v1, v3}, Lm3/m;-><init>(Lm3/n;Lo3/h;)V

    iput-object v2, v1, Lm3/n;->t:Lm3/m;

    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, Lm3/n;

    iget-object v1, v1, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v2, Lm3/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_4

    iget-object v2, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v2, Lm3/n;

    new-instance v3, Lj3/n;

    invoke-direct {v3, v0}, Lj3/n;-><init>(Ljavax/net/ssl/SSLSession;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    monitor-exit v1

    goto :goto_8

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :try_start_3
    sget-object v0, Lj3/r0;->l:Lj3/r0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v3, Lm3/n;

    iget-object v3, v3, Lm3/n;->N:Lj3/C;

    iget-object v3, v3, Lj3/C;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    new-instance v1, Lj3/s0;

    invoke-direct {v1, v0}, Lj3/s0;-><init>(Lj3/r0;)V

    throw v1
    :try_end_3
    .catch Lj3/s0; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, Lm3/n;

    invoke-virtual {v1, v0}, Lm3/n;->o(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    new-instance v1, Lm3/m;

    iget-object v2, v0, Lm3/n;->g:Lo3/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lo3/h;

    invoke-direct {v2, v4}, Lo3/h;-><init>(LQ4/s;)V

    invoke-direct {v1, v0, v2}, Lm3/m;-><init>(Lm3/n;Lo3/h;)V

    :goto_6
    iput-object v1, v0, Lm3/n;->t:Lm3/m;

    goto :goto_8

    :goto_7
    :try_start_5
    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, Lm3/n;

    sget-object v3, Lo3/a;->d:Lo3/a;

    iget-object v0, v0, Lj3/s0;->a:Lj3/r0;

    invoke-virtual {v1, v2, v3, v0}, Lm3/n;->r(ILo3/a;Lj3/r0;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    new-instance v1, Lm3/m;

    iget-object v2, v0, Lm3/n;->g:Lo3/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lo3/h;

    invoke-direct {v2, v4}, Lo3/h;-><init>(LQ4/s;)V

    invoke-direct {v1, v0, v2}, Lm3/m;-><init>(Lm3/n;Lo3/h;)V

    goto :goto_6

    :goto_8
    return-void

    :goto_9
    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, Lm3/n;

    new-instance v2, Lm3/m;

    iget-object v3, v1, Lm3/n;->g:Lo3/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lo3/h;

    invoke-direct {v3, v4}, Lo3/h;-><init>(LQ4/s;)V

    invoke-direct {v2, v1, v3}, Lm3/m;-><init>(Lm3/n;Lo3/h;)V

    iput-object v2, v1, Lm3/n;->t:Lm3/m;

    throw v0

    :pswitch_0
    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Ll3/E0;

    iget-object v1, v0, Ll3/E0;->e:Ll3/L0;

    iget-object v2, v1, Ll3/L0;->w:Ll3/E0;

    if-eq v0, v2, :cond_6

    goto :goto_a

    :cond_6
    iget-object v2, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v2, Lj3/B;

    iput-object v2, v1, Ll3/L0;->x:Lj3/B;

    iget-object v1, v1, Ll3/L0;->D:Ll3/J;

    invoke-virtual {v1, v2}, Ll3/J;->h(Lj3/B;)V

    sget-object v1, Lj3/q;->e:Lj3/q;

    iget-object v3, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v3, Lj3/q;

    if-eq v3, v1, :cond_7

    iget-object v1, v0, Ll3/E0;->e:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->N:Ll3/l;

    const-string v4, "Entering {0} state with picker: {1}"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4, v2}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Ll3/E0;->e:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->r:Le1/m;

    invoke-virtual {v0, v3}, Le1/m;->b(Lj3/q;)V

    :cond_7
    :goto_a
    return-void

    :pswitch_1
    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v1, v0, Ll3/L0;->r:Le1/m;

    iget-object v2, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/remote/g;

    iget-object v0, v0, Ll3/L0;->h:Ljava/util/concurrent/Executor;

    iget-object v3, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v3, Lj3/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "executor"

    invoke-static {v0, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "source"

    invoke-static {v3, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ll3/A;

    invoke-direct {v4, v2, v0}, Ll3/A;-><init>(Lcom/google/firebase/firestore/remote/g;Ljava/util/concurrent/Executor;)V

    iget-object v5, v1, Le1/m;->b:Ljava/lang/Object;

    check-cast v5, Lj3/q;

    if-eq v5, v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_8
    iget-object v0, v1, Le1/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    return-void

    :pswitch_2
    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Ll3/G;

    iget-object v0, v0, Ll3/G;->a:Lj3/j;

    iget-object v1, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v1, Lj3/r0;

    iget-object v2, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v2, Lj3/f0;

    invoke-virtual {v0, v1, v2}, Lj3/j;->onClose(Lj3/r0;Lj3/f0;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Ll3/H0;

    iget-object v0, v0, Ll3/H0;->f:Lj3/k;

    iget-object v1, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v1, Lj3/j;

    iget-object v2, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v2, Lj3/f0;

    invoke-virtual {v0, v1, v2}, Lj3/k;->start(Lj3/j;Lj3/f0;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Lj3/w0;

    iget-object v1, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v1, Lj3/v0;

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, Lg2/b;

    iget-object v2, v1, Lg2/b;->d:Landroid/widget/OverScroller;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    iget-object v3, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lg2/b;->d:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v3, v0, v2}, Lg2/b;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_c

    :cond_9
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    iget-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->p:Z

    if-eqz v1, :cond_a

    invoke-static {v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->e(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->d(Z)Z

    :cond_a
    :goto_c
    return-void

    :pswitch_6
    iget-object v0, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v0, LL0/l;

    iget-object v0, v0, LL0/l;->g:LL0/b;

    iget-object v1, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v2, LJ2/e;

    invoke-virtual {v0, v1, v2}, LL0/b;->g(Ljava/lang/String;LJ2/e;)Z

    return-void

    :pswitch_7
    iget-object v0, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v0

    iget-object v1, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, LT0/j;->h(Ljava/lang/String;)LT0/i;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LT0/i;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, LS0/a;

    iget-object v1, v1, LS0/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v2, LS0/a;

    iget-object v2, v2, LS0/a;->f:Ljava/util/HashMap;

    iget-object v3, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v2, LS0/a;

    iget-object v2, v2, LS0/a;->l:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, LS0/a;

    iget-object v2, v0, LS0/a;->m:LP0/c;

    iget-object v0, v0, LS0/a;->l:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, LP0/c;->b(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_d

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_b
    :goto_d
    return-void

    :pswitch_8
    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v3, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    const-string v4, "Updating proxies: BatteryNotLowProxy enabled ("

    :try_start_7
    const-string v5, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v8

    sget-object v9, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), BatteryChargingProxy enabled ("

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), StorageNotLowProxy ("

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), NetworkStateProxy enabled ("

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v8, v9, v4, v2}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    invoke-static {v1, v2, v5}, LU0/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    invoke-static {v1, v2, v6}, LU0/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    invoke-static {v1, v2, v7}, LU0/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    invoke-static {v1, v2, v3}, LU0/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v1

    :pswitch_9
    iget-object v0, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v3, LL0/m;

    :try_start_8
    iget-object v4, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v4, LV0/j;

    invoke-virtual {v4}, LV0/h;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/m;

    if-nez v4, :cond_c

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v4

    sget-object v5, LL0/m;->y:Ljava/lang/String;

    iget-object v6, v3, LL0/m;->e:LT0/i;

    iget-object v6, v6, LT0/i;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " returned a null result. Treating it as a failure."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v4

    goto :goto_f

    :catch_4
    move-exception v4

    goto :goto_f

    :catch_5
    move-exception v4

    goto :goto_10

    :cond_c
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v5

    sget-object v6, LL0/m;->y:Ljava/lang/String;

    const-string v7, "%s returned a %s result."

    iget-object v8, v3, LL0/m;->e:LT0/i;

    iget-object v8, v8, LT0/i;->c:Ljava/lang/String;

    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iput-object v4, v3, LL0/m;->m:Landroidx/work/m;
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_e
    invoke-virtual {v3}, LL0/m;->b()V

    goto :goto_11

    :goto_f
    :try_start_9
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v5

    sget-object v6, LL0/m;->y:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed because it threw an exception/error"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v4, v1, v2

    invoke-virtual {v5, v6, v0, v1}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_e

    :goto_10
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v5

    sget-object v6, LL0/m;->y:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was cancelled"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v4, v1, v2

    invoke-virtual {v5, v6, v0, v1}, Landroidx/work/n;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_e

    :goto_11
    return-void

    :goto_12
    invoke-virtual {v3}, LL0/m;->b()V

    throw v0

    :pswitch_a
    iget-object v0, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v0, LV0/j;

    iget-object v1, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v1, LL0/m;

    const-string v3, "Starting work for "

    :try_start_a
    iget-object v4, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v4, LV0/j;

    invoke-virtual {v4}, LV0/h;->get()Ljava/lang/Object;

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v4

    sget-object v5, LL0/m;->y:Ljava/lang/String;

    iget-object v6, v1, LL0/m;->e:LT0/i;

    iget-object v6, v6, LT0/i;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v3, v2}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v2, v1, LL0/m;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->startWork()LN2/o;

    move-result-object v2

    iput-object v2, v1, LL0/m;->w:LN2/o;

    invoke-virtual {v0, v2}, LV0/j;->k(LN2/o;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v1

    invoke-virtual {v0, v1}, LV0/j;->j(Ljava/lang/Throwable;)Z

    :goto_13
    return-void

    :pswitch_b
    :try_start_b
    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, LV0/j;

    invoke-virtual {v0}, LV0/h;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    iget-object v0, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v0, LL0/b;

    iget-object v2, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LL0/b;->c(Ljava/lang/String;Z)V

    return-void

    :pswitch_c
    :try_start_c
    iget-object v1, p0, LJ/k;->b:Ljava/lang/Object;

    check-cast v1, LJ/d;

    invoke-virtual {v1}, LJ/d;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    new-instance v1, LB/h;

    iget-object v2, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v2, LJ/e;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2, v0}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LJ/k;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LJ/k;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LJ/k;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(scheduled in SynchronizationContext)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
