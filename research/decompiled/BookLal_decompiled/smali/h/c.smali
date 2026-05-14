.class public final Lh/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lh/c;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lh/c;->a:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lh/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll0/b;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/c;->a:I

    .line 3
    iput-object p1, p0, Lh/c;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p0, Lh/c;->a:I

    packed-switch v6, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh/c;->b:Ljava/lang/Object;

    check-cast p1, Ll0/b;

    :cond_1
    iget-object v0, p1, Ll0/b;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Ll0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    new-array v2, v1, [Lj3/G;

    iget-object v3, p1, Ll0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p1, Ll0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    iget-object v6, v3, Lj3/G;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_4

    iget-object v8, v3, Lj3/G;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ll0/a;

    iget-boolean v9, v8, Ll0/a;->d:Z

    if-nez v9, :cond_3

    iget-object v8, v8, Ll0/a;->b:Landroid/content/BroadcastReceiver;

    iget-object v9, p1, Ll0/b;->a:Landroid/content/Context;

    iget-object v10, v3, Lj3/G;->b:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    invoke-virtual {v8, v9, v10}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    add-int/2addr v7, v5

    goto :goto_2

    :cond_4
    add-int/2addr v0, v5

    goto :goto_1

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v6, 0x1

    iget-object v4, p0, Lh/c;->b:Ljava/lang/Object;

    check-cast v4, Lh3/D;

    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    sget-object v0, Lh3/v;->i:Lh3/t;

    new-instance v1, Lh3/i;

    invoke-direct {v1, p1, v5}, Lh3/i;-><init>(Landroid/os/Message;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    iget v0, v4, Lh3/D;->k:I

    add-int/2addr v0, v5

    iput v0, v4, Lh3/D;->k:I

    iget-wide v0, v4, Lh3/D;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, v4, Lh3/D;->e:J

    iget p1, v4, Lh3/D;->k:I

    int-to-long v0, p1

    div-long/2addr v2, v0

    iput-wide v2, v4, Lh3/D;->h:J

    goto :goto_4

    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, p1

    iget p1, v4, Lh3/D;->m:I

    add-int/2addr p1, v5

    iput p1, v4, Lh3/D;->m:I

    iget-wide v2, v4, Lh3/D;->g:J

    add-long/2addr v2, v0

    iput-wide v2, v4, Lh3/D;->g:J

    iget p1, v4, Lh3/D;->l:I

    int-to-long v0, p1

    div-long/2addr v2, v0

    iput-wide v2, v4, Lh3/D;->j:J

    goto :goto_4

    :cond_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, p1

    iget p1, v4, Lh3/D;->l:I

    add-int/2addr p1, v5

    iput p1, v4, Lh3/D;->l:I

    iget-wide v2, v4, Lh3/D;->f:J

    add-long/2addr v2, v0

    iput-wide v2, v4, Lh3/D;->f:J

    int-to-long v0, p1

    div-long/2addr v2, v0

    iput-wide v2, v4, Lh3/D;->i:J

    goto :goto_4

    :cond_8
    iget-wide v0, v4, Lh3/D;->d:J

    add-long/2addr v0, v6

    iput-wide v0, v4, Lh3/D;->d:J

    goto :goto_4

    :cond_9
    iget-wide v0, v4, Lh3/D;->c:J

    add-long/2addr v0, v6

    iput-wide v0, v4, Lh3/D;->c:J

    :goto_4
    return-void

    :pswitch_1
    iget v6, p1, Landroid/os/Message;->what:I

    iget-object v7, p0, Lh/c;->b:Ljava/lang/Object;

    check-cast v7, Lh3/k;

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_1

    :pswitch_2
    sget-object v0, Lh3/v;->i:Lh3/t;

    new-instance v1, Lh3/i;

    invoke-direct {v1, p1, v4}, Lh3/i;-><init>(Landroid/os/Message;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_11

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v7, Lh3/k;->g:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_11

    :cond_a
    iget-object v0, v7, Lh3/k;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/l;

    iget-object v2, v1, Lh3/l;->f:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v8, :cond_c

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_d
    if-eqz v8, :cond_29

    const/16 p1, 0xd

    iget-object v0, v7, Lh3/k;->i:Lh3/t;

    invoke-virtual {v0, p1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, v7, Lh3/k;->g:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_11

    :cond_e
    iget-object v1, v7, Lh3/k;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/e;

    iget-object v3, v2, Lh3/e;->b:Lh3/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lh3/e;->o:Lh3/l;

    iget-object v6, v2, Lh3/e;->p:Ljava/util/ArrayList;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v5

    goto :goto_7

    :cond_10
    move v8, v4

    :goto_7
    if-nez v3, :cond_11

    if-nez v8, :cond_11

    goto :goto_6

    :cond_11
    iget-object v9, v7, Lh3/k;->f:Ljava/util/WeakHashMap;

    if-eqz v3, :cond_12

    iget-object v10, v3, Lh3/l;->f:Ljava/lang/Object;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v2, v3}, Lh3/e;->d(Lh3/l;)V

    invoke-virtual {v3}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz v8, :cond_14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_8
    if-ltz v3, :cond_14

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh3/l;

    iget-object v10, v8, Lh3/l;->f:Ljava/lang/Object;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {v2, v8}, Lh3/e;->d(Lh3/l;)V

    invoke-virtual {v8}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/2addr v3, v0

    goto :goto_8

    :cond_14
    invoke-virtual {v2}, Lh3/e;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :pswitch_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_11

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    iget-object v0, v7, Lh3/k;->b:Lh3/y;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_a

    :cond_15
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eqz v6, :cond_17

    if-eq v6, v5, :cond_16

    const/4 v3, 0x6

    if-eq v6, v3, :cond_16

    const/16 v3, 0x9

    if-eq v6, v3, :cond_16

    invoke-virtual {v0, v2}, Lh3/y;->a(I)V

    goto :goto_b

    :cond_16
    invoke-virtual {v0, v1}, Lh3/y;->a(I)V

    goto :goto_b

    :cond_17
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    invoke-virtual {v0, v2}, Lh3/y;->a(I)V

    goto :goto_b

    :pswitch_7
    invoke-virtual {v0, v2}, Lh3/y;->a(I)V

    goto :goto_b

    :pswitch_8
    invoke-virtual {v0, v3}, Lh3/y;->a(I)V

    goto :goto_b

    :pswitch_9
    invoke-virtual {v0, v5}, Lh3/y;->a(I)V

    goto :goto_b

    :cond_18
    :goto_a
    invoke-virtual {v0, v2}, Lh3/y;->a(I)V

    :cond_19
    :goto_b
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, v7, Lh3/k;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/l;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object v1, v0, Lh3/l;->a:Lh3/v;

    invoke-virtual {v7, v0, v4}, Lh3/k;->d(Lh3/l;Z)V

    goto :goto_c

    :pswitch_a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v7, Lh3/k;->l:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, 0x8

    iget-object v1, v7, Lh3/k;->i:Lh3/t;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_11

    :cond_1a
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/e;

    iget-object p1, p1, Lh3/e;->b:Lh3/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_11

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lh3/e;

    invoke-virtual {v7, p1, v4}, Lh3/k;->c(Lh3/e;Z)V

    goto/16 :goto_11

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lh3/e;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lh3/e;->r:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_11

    :cond_1b
    iget-object v0, v7, Lh3/k;->b:Lh3/y;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v7, p1, v4}, Lh3/k;->c(Lh3/e;Z)V

    goto/16 :goto_11

    :cond_1c
    iget-boolean v1, v7, Lh3/k;->m:Z

    if-eqz v1, :cond_1d

    sget-object v2, Lh3/F;->a:Ljava/lang/StringBuilder;

    const-string v2, "connectivity"

    iget-object v3, v7, Lh3/k;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    :cond_1d
    iget v2, p1, Lh3/e;->v:I

    iget-object v3, p1, Lh3/e;->n:Lh3/C;

    if-lez v2, :cond_1e

    sub-int/2addr v2, v5

    iput v2, p1, Lh3/e;->v:I

    invoke-virtual {v3, v8}, Lh3/C;->f(Landroid/net/NetworkInfo;)Z

    move-result v2

    goto :goto_d

    :cond_1e
    move v2, v4

    :goto_d
    if-eqz v2, :cond_20

    iget-object v1, p1, Lh3/e;->b:Lh3/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lh3/e;->t:Ljava/lang/Exception;

    instance-of v1, v1, Lh3/q;

    if-eqz v1, :cond_1f

    iget v1, p1, Lh3/e;->m:I

    or-int/2addr v1, v5

    iput v1, p1, Lh3/e;->m:I

    :cond_1f
    invoke-virtual {v0, p1}, Lh3/y;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lh3/e;->r:Ljava/util/concurrent/Future;

    goto/16 :goto_11

    :cond_20
    if-eqz v1, :cond_21

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v3, Lh3/s;

    if-eqz v0, :cond_21

    move v0, v5

    goto :goto_e

    :cond_21
    move v0, v4

    :goto_e
    invoke-virtual {v7, p1, v0}, Lh3/k;->c(Lh3/e;Z)V

    if-eqz v0, :cond_29

    iget-object v0, p1, Lh3/e;->o:Lh3/l;

    iget-object v1, v7, Lh3/k;->e:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    iput-boolean v5, v0, Lh3/l;->g:Z

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object p1, p1, Lh3/e;->p:Ljava/util/ArrayList;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_f
    if-ge v4, v0, :cond_29

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/l;

    invoke-virtual {v2}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    iput-boolean v5, v2, Lh3/l;->g:Z

    invoke-virtual {v1, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    add-int/2addr v4, v5

    goto :goto_f

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lh3/e;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lh3/e;->q:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lh3/k;->j:LC4/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lh3/e;->f:Ljava/lang/String;

    if-eqz v2, :cond_26

    if-eqz v0, :cond_26

    sget-object v3, Lh3/F;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    if-ltz v3, :cond_25

    iget-object v1, v1, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, Lh3/m;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v4

    if-le v3, v4, :cond_24

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_24
    new-instance v4, Lh3/n;

    invoke-direct {v4, v0, v3}, Lh3/n;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    iget-object v0, v7, Lh3/k;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, p1}, Lh3/k;->a(Lh3/e;)V

    iget-object p1, p1, Lh3/e;->b:Lh3/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_11

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null || bitmap == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lh3/l;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lh3/l;->e:Ljava/lang/String;

    iget-object v1, v7, Lh3/k;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/e;

    if-eqz v2, :cond_27

    invoke-virtual {v2, p1}, Lh3/e;->d(Lh3/l;)V

    invoke-virtual {v2}, Lh3/e;->b()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget-object v0, v7, Lh3/k;->g:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lh3/l;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v7, Lh3/k;->f:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget-object v0, v7, Lh3/k;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/l;

    goto :goto_11

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lh3/l;

    invoke-virtual {v7, p1, v5}, Lh3/k;->d(Lh3/l;Z)V

    :cond_29
    :goto_11
    return-void

    :pswitch_10
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2b

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2b

    if-eq v1, v0, :cond_2b

    if-eq v1, v5, :cond_2a

    goto :goto_12

    :cond_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_12

    :cond_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lh/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
