.class public final LB/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LB/h;->a:I

    iput-object p2, p0, LB/h;->b:Ljava/lang/Object;

    iput-object p3, p0, LB/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, LB/h;->a:I

    iput-object p2, p0, LB/h;->c:Ljava/lang/Object;

    iput-object p3, p0, LB/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, v1, LB/h;->a:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :try_start_0
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lb4/i;->a:Lb4/i;

    invoke-static {v4, v0}, Lt4/w;->h(Lb4/h;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Ly4/i;

    invoke-virtual {v0}, Ly4/i;->s()Ljava/lang/Runnable;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iput-object v4, v1, LB/h;->b:Ljava/lang/Object;

    add-int/2addr v2, v3

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    iget-object v2, v0, Ly4/i;->c:LA4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, LA4/l;->q(Lb4/h;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v4, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v4, Ls3/l;

    iget-object v5, v4, Ls3/l;->f:Ll3/P1;

    invoke-virtual {v5}, Ll3/P1;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Ls3/l;->i:Ljava/lang/Long;

    iget-object v4, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v4, Ls3/l;

    iget-object v4, v4, Ls3/l;->c:Ls3/f;

    iget-object v4, v4, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls3/e;

    iget-object v6, v5, Ls3/e;->c:Lj3/G;

    iget-object v7, v6, Lj3/G;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v6, Lj3/G;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v5, Ls3/e;->b:Lj3/G;

    iget-object v7, v5, Ls3/e;->c:Lj3/G;

    iput-object v7, v5, Ls3/e;->b:Lj3/G;

    iput-object v6, v5, Ls3/e;->c:Lj3/G;

    goto :goto_2

    :cond_2
    iget-object v4, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v4, Ls3/i;

    sget-object v5, LK2/e;->b:LK2/c;

    const-string v5, "initialCapacity"

    const/4 v6, 0x4

    invoke-static {v6, v5}, LS4/b;->h(ILjava/lang/String;)V

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v4, Ls3/i;->e:Ls3/h;

    if-eqz v6, :cond_3

    new-instance v6, Ls3/g;

    invoke-direct {v6, v4, v3}, Ls3/g;-><init>(Ls3/i;I)V

    aput-object v6, v5, v2

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    iget-object v7, v4, Ls3/i;->f:Ls3/h;

    if-eqz v7, :cond_5

    new-instance v7, Ls3/g;

    invoke-direct {v7, v4, v2}, Ls3/g;-><init>(Ls3/i;I)V

    add-int/lit8 v4, v6, 0x1

    array-length v8, v5

    if-ge v8, v4, :cond_4

    array-length v8, v5

    invoke-static {v8, v4}, La/a;->f(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    :cond_4
    aput-object v7, v5, v6

    move v6, v4

    :cond_5
    if-nez v6, :cond_6

    sget-object v4, LK2/j;->e:LK2/j;

    goto :goto_4

    :cond_6
    new-instance v4, LK2/j;

    invoke-direct {v4, v5, v6}, LK2/j;-><init>([Ljava/lang/Object;I)V

    :goto_4
    invoke-virtual {v4, v2}, LK2/e;->m(I)LK2/c;

    move-result-object v4

    :goto_5
    invoke-virtual {v4}, LK2/c;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v4}, LK2/c;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls3/g;

    iget-object v6, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v6, Ls3/l;

    iget-object v7, v6, Ls3/l;->c:Ls3/f;

    iget-object v6, v6, Ls3/l;->i:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget v6, v5, Ls3/g;->a:I

    packed-switch v6, :pswitch_data_1

    iget-object v5, v5, Ls3/g;->b:Ls3/i;

    iget-object v6, v5, Ls3/i;->e:Ls3/h;

    iget-object v6, v6, Ls3/h;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v7, v6}, Ls3/l;->h(Ls3/f;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, v5, Ls3/i;->e:Ls3/h;

    iget-object v12, v11, Ls3/h;->c:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v10, v12, :cond_d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_a

    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls3/e;

    iget-object v14, v13, Ls3/e;->c:Lj3/G;

    iget-object v14, v14, Lj3/G;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    long-to-double v14, v14

    invoke-virtual {v13}, Ls3/e;->c()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    add-double v14, v16, v14

    goto :goto_7

    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v14, v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    sub-double v16, v16, v14

    mul-double v16, v16, v16

    add-double v12, v16, v12

    goto :goto_8

    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v10, v11, Ls3/h;->a:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v10, v12

    float-to-double v12, v10

    mul-double/2addr v2, v12

    sub-double/2addr v14, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls3/e;

    invoke-virtual {v7}, Ls3/f;->a()D

    move-result-wide v12

    iget-object v6, v5, Ls3/i;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v0, v6

    cmpl-double v0, v12, v0

    if-ltz v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, v3, Ls3/e;->c:Lj3/G;

    iget-object v0, v0, Lj3/G;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {v3}, Ls3/e;->c()J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v0, v12

    cmpg-double v0, v0, v14

    if-gez v0, :cond_c

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, v11, Ls3/h;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_c

    invoke-virtual {v3, v8, v9}, Ls3/e;->b(J)V

    :cond_c
    move-object/from16 v1, p0

    goto :goto_9

    :cond_d
    :goto_a
    const/16 v6, 0x64

    goto/16 :goto_c

    :pswitch_1
    iget-object v0, v5, Ls3/g;->b:Ls3/i;

    iget-object v1, v0, Ls3/i;->f:Ls3/h;

    iget-object v1, v1, Ls3/h;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v7, v1}, Ls3/l;->h(Ls3/f;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Ls3/i;->f:Ls3/h;

    iget-object v5, v3, Ls3/h;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v2, v5, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls3/e;

    invoke-virtual {v7}, Ls3/f;->a()D

    move-result-wide v5

    iget-object v11, v0, Ls3/i;->d:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v11, v11

    cmpl-double v5, v5, v11

    if-ltz v5, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v2}, Ls3/e;->c()J

    move-result-wide v5

    iget-object v11, v3, Ls3/h;->d:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    cmp-long v5, v5, v11

    if-gez v5, :cond_11

    goto :goto_b

    :cond_11
    iget-object v5, v3, Ls3/h;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v11

    iget-object v11, v2, Ls3/e;->c:Lj3/G;

    iget-object v11, v11, Lj3/G;->c:Ljava/lang/Object;

    check-cast v11, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    long-to-double v11, v11

    invoke-virtual {v2}, Ls3/e;->c()J

    move-result-wide v13

    long-to-double v13, v13

    div-double/2addr v11, v13

    cmpl-double v5, v11, v5

    if-lez v5, :cond_12

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget-object v10, v3, Ls3/h;->b:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v5, v10, :cond_f

    invoke-virtual {v2, v8, v9}, Ls3/e;->b(J)V

    goto :goto_b

    :cond_12
    const/16 v6, 0x64

    goto :goto_b

    :goto_c
    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_13
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Ls3/l;

    iget-object v2, v0, Ls3/l;->c:Ls3/f;

    iget-object v0, v0, Ls3/l;->i:Ljava/lang/Long;

    iget-object v2, v2, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls3/e;

    invoke-virtual {v3}, Ls3/e;->d()Z

    move-result v4

    if-nez v4, :cond_16

    iget v4, v3, Ls3/e;->e:I

    if-nez v4, :cond_15

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_e
    iput v4, v3, Ls3/e;->e:I

    goto :goto_f

    :cond_16
    const/4 v5, 0x1

    :goto_f
    invoke-virtual {v3}, Ls3/e;->d()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v3, Ls3/e;->a:Ls3/i;

    iget-object v4, v4, Ls3/i;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v4, v3, Ls3/e;->a:Ls3/i;

    iget-object v4, v4, Ls3/i;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v4, v3, Ls3/e;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v4, v3, Ls3/e;->a:Ls3/i;

    iget-object v4, v4, Ls3/i;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget v4, v3, Ls3/e;->e:I

    int-to-long v14, v4

    mul-long/2addr v12, v14

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_14

    invoke-virtual {v3}, Ls3/e;->e()V

    goto :goto_d

    :cond_17
    return-void

    :pswitch_2
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Lk3/b;

    iget-object v0, v0, Lk3/b;->b:Landroid/content/Context;

    iget-object v2, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v2, Lk3/a;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_3
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Lk3/b;

    iget-object v0, v0, Lk3/b;->c:Landroid/net/ConnectivityManager;

    iget-object v2, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v2, LR0/f;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    :pswitch_4
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, Lk0/a;

    iget-object v2, v1, LB/h;->c:Ljava/lang/Object;

    iget-object v3, v0, Lk0/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lk0/a;->f:Lk0/b;

    invoke-virtual {v3, v0, v2}, Lk0/b;->dispatchOnCancelled(Lk0/a;Ljava/lang/Object;)V

    goto :goto_10

    :cond_18
    iget-object v3, v0, Lk0/a;->f:Lk0/b;

    invoke-virtual {v3, v0, v2}, Lk0/b;->dispatchOnLoadComplete(Lk0/a;Ljava/lang/Object;)V

    :goto_10
    const/4 v2, 0x3

    iput v2, v0, Lk0/a;->b:I

    return-void

    :pswitch_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transformation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v3, LH1/a;

    invoke-virtual {v3}, LH1/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " crashed with exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_6
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-boolean v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Z

    if-eqz v0, :cond_19

    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    new-instance v3, Landroidx/work/k;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    invoke-virtual {v0, v3}, LV0/j;->i(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_19
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:LV0/j;

    iget-object v3, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v3, LN2/o;

    invoke-virtual {v0, v3}, LV0/j;->k(LN2/o;)Z

    :goto_11
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_7
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LU0/i;

    :try_start_2
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v2}, LU0/i;->a()V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, LU0/i;->a()V

    throw v0

    :pswitch_8
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ0/b;

    iget-object v3, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v3, LR0/e;

    iget-object v3, v3, LR0/e;->e:Ljava/lang/Object;

    iput-object v3, v2, LQ0/b;->b:Ljava/lang/Object;

    iget-object v4, v2, LQ0/b;->d:LP0/c;

    invoke-virtual {v2, v4, v3}, LQ0/b;->d(LP0/c;Ljava/lang/Object;)V

    goto :goto_12

    :cond_1a
    return-void

    :pswitch_9
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v0

    sget-object v2, LM0/a;->d:Ljava/lang/String;

    iget-object v3, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v3, LT0/i;

    iget-object v4, v3, LT0/i;->a:Ljava/lang/String;

    const-string v5, "Scheduling work "

    invoke-static {v5, v4}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, LM0/a;

    iget-object v0, v0, LM0/a;->a:LM0/b;

    filled-new-array {v3}, [LT0/i;

    move-result-object v2

    invoke-virtual {v0, v2}, LM0/b;->a([LT0/i;)V

    return-void

    :pswitch_a
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, LL3/i;

    iget-object v2, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v2, Lz3/k;

    check-cast v2, Lz3/h;

    invoke-virtual {v2, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_b
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, LJ/e;

    iget-object v2, v1, LB/h;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, LJ/e;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, LC4/o;

    iget-object v0, v0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LD/b;

    if-eqz v0, :cond_1b

    iget-object v2, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, LD/b;->e(Landroid/graphics/Typeface;)V

    :cond_1b
    return-void

    :pswitch_d
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, LB2/d;

    iget-object v0, v0, LB2/d;->b:LB2/r;

    check-cast v0, LB2/w;

    iget-object v0, v0, LB2/w;->e:LB2/l;

    iget-object v2, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_e
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, LB2/d;

    iget-object v0, v0, LB2/d;->b:LB2/r;

    check-cast v0, LB2/q;

    iget-object v0, v0, LB2/q;->e:LB2/l;

    iget-object v2, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_f
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iget-object v2, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v2, LB2/l;

    iget-object v3, v2, LB2/l;->b:LB2/r;

    check-cast v3, LB2/q;

    invoke-virtual {v3, v0}, LB2/q;->g(Z)V

    iget-object v2, v2, LB2/l;->b:LB2/r;

    check-cast v2, LB2/q;

    iput-boolean v0, v2, LB2/q;->j:Z

    return-void

    :pswitch_10
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, LB2/d;

    iget-object v0, v0, LB2/d;->b:LB2/r;

    check-cast v0, LB2/h;

    iget-object v0, v0, LB2/h;->e:LB2/a;

    iget-object v2, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_11
    :try_start_3
    sget-object v0, LB/j;->d:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v2, v1, LB/h;->b:Ljava/lang/Object;

    iget-object v3, v1, LB/h;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1c

    :try_start_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "AppCompat recreation"

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_3
    move-exception v0

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_14

    :cond_1c
    sget-object v0, LB/j;->e:Ljava/lang/reflect/Method;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_15

    :goto_13
    const-string v2, "ActivityRecreator"

    const-string v3, "Exception while invoking performStopActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/RuntimeException;

    if-ne v2, v3, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_15

    :cond_1d
    throw v0

    :cond_1e
    :goto_15
    return-void

    :pswitch_12
    iget-object v0, v1, LB/h;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object v2, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v2, LB/i;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :pswitch_13
    iget-object v0, v1, LB/h;->b:Ljava/lang/Object;

    check-cast v0, LB/i;

    iget-object v2, v1, LB/h;->c:Ljava/lang/Object;

    iput-object v2, v0, LB/i;->a:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
