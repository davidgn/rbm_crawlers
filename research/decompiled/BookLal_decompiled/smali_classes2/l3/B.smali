.class public final Ll3/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll3/B;->a:I

    iput-object p2, p0, Ll3/B;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll3/B;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll3/I0;Ll3/H0;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Ll3/B;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/B;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll3/B;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll3/Q;LJ2/e;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Ll3/B;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/B;->b:Ljava/lang/Object;

    .line 3
    const-string p1, "savedListener"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ll3/B;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/16 v0, 0x14

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v1, Ll3/B;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/R1;

    iget-object v0, v0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->u:Ll3/u;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj1/a;

    invoke-interface {v0, v2}, Ll3/u;->d(Lj1/a;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/R1;

    iget-object v0, v0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->u:Ll3/u;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/f0;

    invoke-interface {v0, v2}, Ll3/u;->b(Lj3/f0;)V

    return-void

    :pswitch_1
    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/B0;

    iget-object v3, v2, Ll3/B0;->o:Ll3/x1;

    iget v3, v3, Ll3/x1;->e:I

    invoke-virtual {v2, v3, v4}, Ll3/B0;->s(IZ)Ll3/z1;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v3, Ll3/B0;

    iget-object v3, v3, Ll3/B0;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Ll3/B;

    invoke-direct {v4, v0, v1, v2}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v2, v0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v6, v0, Ll3/B;->c:Ljava/lang/Object;

    check-cast v6, Lj0/d;

    iget-boolean v6, v6, Lj0/d;->b:Z

    if-eqz v6, :cond_1

    move v4, v5

    goto/16 :goto_3

    :cond_1
    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v6, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v7, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v7, Ll3/z1;

    invoke-virtual {v6, v7}, Ll3/x1;->a(Ll3/z1;)Ll3/x1;

    move-result-object v6

    iput-object v6, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v6, v0, Ll3/B0;->o:Ll3/x1;

    invoke-virtual {v0, v6}, Ll3/B0;->w(Ll3/x1;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->m:Ll3/A1;

    if-eqz v0, :cond_3

    iget-object v6, v0, Ll3/A1;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v0, v0, Ll3/A1;->b:I

    if-le v6, v0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v5, :cond_4

    :cond_3
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    new-instance v3, Lj0/d;

    iget-object v5, v0, Ll3/B0;->i:Ljava/lang/Object;

    invoke-direct {v3, v5}, Lj0/d;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Ll3/B0;->w:Lj0/d;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v5, v0, Ll3/B0;->o:Ll3/x1;

    iget-boolean v6, v5, Ll3/x1;->h:Z

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance v6, Ll3/x1;

    iget-boolean v12, v5, Ll3/x1;->g:Z

    iget-boolean v13, v5, Ll3/x1;->a:Z

    iget-object v8, v5, Ll3/x1;->b:Ljava/util/List;

    iget-object v9, v5, Ll3/x1;->c:Ljava/util/Collection;

    iget-object v10, v5, Ll3/x1;->d:Ljava/util/Collection;

    iget-object v11, v5, Ll3/x1;->f:Ll3/z1;

    iget v15, v5, Ll3/x1;->e:I

    const/4 v14, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Ll3/x1;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Ll3/z1;ZZZI)V

    move-object v5, v6

    :goto_2
    iput-object v5, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iput-object v3, v0, Ll3/B0;->w:Lj0/d;

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    iget-object v0, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v0, Ll3/z1;

    iget-object v0, v0, Ll3/z1;->a:Ll3/s;

    sget-object v2, Lj3/r0;->f:Lj3/r0;

    const-string v3, "Unneeded hedging"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    invoke-interface {v0, v2}, Ll3/s;->d(Lj3/r0;)V

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v2, v0, Ll3/B0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Ll3/B;

    const/16 v5, 0x15

    invoke-direct {v4, v5, v0, v3}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Ll3/B0;->g:Ll3/d0;

    iget-wide v5, v0, Ll3/d0;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v3, v0}, Lj0/d;->d(Ljava/util/concurrent/ScheduledFuture;)V

    :cond_7
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B;

    iget-object v0, v0, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Ll3/z1;

    invoke-virtual {v0, v2}, Ll3/B0;->u(Ll3/z1;)V

    :goto_4
    return-void

    :goto_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_3
    iget-object v0, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v0, Ll3/q;

    invoke-virtual {v0}, LU0/c;->run()V

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/H0;

    iget-object v2, v0, Ll3/H0;->m:Ll3/I0;

    iget-object v2, v2, Ll3/I0;->d:Ll3/L0;

    iget-object v2, v2, Ll3/L0;->m:Lj3/w0;

    new-instance v3, Ll3/D;

    invoke-direct {v3, v0, v5}, Ll3/D;-><init>(Ll3/H0;I)V

    invoke-virtual {v2, v3}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object v0, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v0, Ll3/I0;

    iget-object v2, v0, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ll3/L0;->j0:Ll3/x0;

    iget-object v4, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v4, Ll3/H0;

    if-ne v2, v3, :cond_9

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v2, v0, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    iget-object v2, v0, Ll3/L0;->X:Ll3/h0;

    iget-object v3, v0, Ll3/L0;->B:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, LB/y;->f(Ljava/lang/Object;Z)V

    :cond_8
    iget-object v0, v0, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Ll3/H0;->d()V

    :goto_6
    return-void

    :pswitch_5
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LJ2/e;

    iget-object v0, v6, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v7, v0, Ll3/L0;->u:Lj3/B;

    iget-object v8, v6, LJ2/e;->c:Ljava/lang/Object;

    check-cast v8, Lj3/B;

    if-eq v7, v8, :cond_a

    goto/16 :goto_f

    :cond_a
    iget-object v7, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v7, Lj3/j0;

    iget-object v8, v7, Lj3/j0;->a:Ljava/util/List;

    iget-object v9, v7, Lj3/j0;->b:Lj3/b;

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Resolved address: {0}, config={1}"

    iget-object v0, v0, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v0, v5, v11, v10}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, LJ2/e;->d:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ll3/L0;

    iget v0, v10, Ll3/L0;->c0:I

    if-eq v0, v2, :cond_b

    const-string v0, "Address resolved: {0}"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v10, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v12, v2, v0, v11}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v2, v10, Ll3/L0;->c0:I

    :cond_b
    iput-object v3, v10, Ll3/L0;->Z:Ll3/T;

    sget-object v11, Lj3/H;->a:Lj3/a;

    iget-object v0, v9, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/H;

    iget-object v7, v7, Lj3/j0;->c:Lj3/i0;

    if-eqz v7, :cond_c

    iget-object v12, v7, Lj3/i0;->b:Ljava/lang/Object;

    if-eqz v12, :cond_c

    check-cast v12, Ll3/R0;

    goto :goto_7

    :cond_c
    move-object v12, v3

    :goto_7
    if-eqz v7, :cond_d

    iget-object v13, v7, Lj3/i0;->a:Lj3/r0;

    goto :goto_8

    :cond_d
    move-object v13, v3

    :goto_8
    iget-boolean v14, v10, Ll3/L0;->S:Z

    if-nez v14, :cond_10

    if-eqz v12, :cond_e

    const-string v7, "Service config from name resolver discarded by channel settings"

    iget-object v12, v10, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v12, v2, v7}, Ll3/l;->e(ILjava/lang/String;)V

    :cond_e
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ll3/L0;->i0:Ll3/R0;

    if-eqz v0, :cond_f

    iget-object v0, v10, Ll3/L0;->N:Ll3/l;

    const-string v12, "Config selector from name resolver discarded by channel settings"

    invoke-virtual {v0, v2, v12}, Ll3/l;->e(ILjava/lang/String;)V

    :cond_f
    iget-object v0, v10, Ll3/L0;->P:Ll3/I0;

    invoke-virtual {v7}, Ll3/R0;->b()Ll3/Q0;

    move-result-object v12

    invoke-virtual {v0, v12}, Ll3/I0;->i(Lj3/H;)V

    goto/16 :goto_c

    :cond_10
    if-eqz v12, :cond_12

    iget-object v7, v10, Ll3/L0;->P:Ll3/I0;

    if-eqz v0, :cond_11

    invoke-virtual {v7, v0}, Ll3/I0;->i(Lj3/H;)V

    invoke-virtual {v12}, Ll3/R0;->b()Ll3/Q0;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v10, Ll3/L0;->N:Ll3/l;

    const-string v7, "Method configs in service config will be discarded due to presence ofconfig-selector"

    invoke-virtual {v0, v5, v7}, Ll3/l;->e(ILjava/lang/String;)V

    goto :goto_9

    :cond_11
    invoke-virtual {v12}, Ll3/R0;->b()Ll3/Q0;

    move-result-object v0

    invoke-virtual {v7, v0}, Ll3/I0;->i(Lj3/H;)V

    goto :goto_9

    :cond_12
    if-eqz v13, :cond_14

    iget-boolean v0, v10, Ll3/L0;->R:Z

    if-nez v0, :cond_13

    const-string v0, "Fallback to error due to invalid first service config without default config"

    iget-object v3, v10, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v3, v2, v0}, Ll3/l;->e(ILjava/lang/String;)V

    iget-object v0, v7, Lj3/i0;->a:Lj3/r0;

    invoke-virtual {v6, v0}, LJ2/e;->K(Lj3/r0;)V

    goto/16 :goto_f

    :cond_13
    iget-object v12, v10, Ll3/L0;->Q:Ll3/R0;

    goto :goto_9

    :cond_14
    sget-object v12, Ll3/L0;->i0:Ll3/R0;

    iget-object v0, v10, Ll3/L0;->P:Ll3/I0;

    invoke-virtual {v0, v3}, Ll3/I0;->i(Lj3/H;)V

    :cond_15
    :goto_9
    iget-object v0, v10, Ll3/L0;->Q:Ll3/R0;

    invoke-virtual {v12, v0}, Ll3/R0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v10, Ll3/L0;->N:Ll3/l;

    sget-object v7, Ll3/L0;->i0:Ll3/R0;

    if-ne v12, v7, :cond_16

    const-string v7, " to empty"

    goto :goto_a

    :cond_16
    const-string v7, ""

    :goto_a
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v13, "Service config changed{0}"

    invoke-virtual {v0, v2, v13, v7}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-object v12, v10, Ll3/L0;->Q:Ll3/R0;

    :cond_17
    :try_start_2
    iput-boolean v5, v10, Ll3/L0;->R:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v7, v0

    sget-object v0, Ll3/L0;->d0:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v10, Ll3/L0;->a:Lj3/J;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "] Unexpected exception from parsing service config"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    move-object v7, v12

    :goto_c
    iget-object v0, v10, Ll3/L0;->w:Ll3/E0;

    iget-object v10, v6, LJ2/e;->b:Ljava/lang/Object;

    check-cast v10, Ll3/E0;

    if-ne v10, v0, :cond_20

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LD2/e;

    invoke-direct {v0, v9}, LD2/e;-><init>(Lj3/b;)V

    iget-object v9, v0, LD2/e;->b:Ljava/lang/Object;

    check-cast v9, Lj3/b;

    iget-object v9, v9, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v11}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    new-instance v9, Ljava/util/IdentityHashMap;

    iget-object v12, v0, LD2/e;->b:Ljava/lang/Object;

    check-cast v12, Lj3/b;

    iget-object v12, v12, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-direct {v9, v12}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v11}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lj3/b;

    invoke-direct {v12, v9}, Lj3/b;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v12, v0, LD2/e;->b:Ljava/lang/Object;

    :cond_18
    iget-object v9, v0, LD2/e;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/IdentityHashMap;

    if-eqz v9, :cond_19

    invoke-virtual {v9, v11}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v9, v7, Ll3/R0;->f:Ljava/util/Map;

    if-eqz v9, :cond_1a

    sget-object v11, Lj3/S;->b:Lj3/a;

    invoke-virtual {v0, v11, v9}, LD2/e;->v(Lj3/a;Ljava/lang/Object;)V

    invoke-virtual {v0}, LD2/e;->b()Lj3/b;

    :cond_1a
    invoke-virtual {v0}, LD2/e;->b()Lj3/b;

    move-result-object v0

    iget-object v9, v10, Ll3/E0;->d:LR0/i;

    sget-object v10, Lj3/b;->b:Lj3/b;

    new-instance v10, Ljava/util/ArrayList;

    const-string v11, "addresses"

    invoke-static {v8, v11}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    const-string v10, "attributes"

    invoke-static {v0, v10}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Ll3/R0;->e:Ljava/lang/Object;

    check-cast v7, Ll3/I1;

    iget-object v10, v9, LR0/i;->a:Ljava/lang/Object;

    check-cast v10, Ll3/E0;

    if-nez v7, :cond_1c

    :try_start_3
    iget-object v7, v9, LR0/i;->d:Ljava/lang/Object;

    check-cast v7, Ll3/R1;

    iget-object v11, v7, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v7, v7, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v7, Lj3/U;

    invoke-virtual {v7, v11}, Lj3/U;->b(Ljava/lang/String;)Lj3/T;

    move-result-object v7
    :try_end_3
    .catch Ll3/h; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v7, :cond_1b

    new-instance v11, Ll3/I1;

    invoke-direct {v11, v7, v3}, Ll3/I1;-><init>(Lj3/T;Ljava/lang/Object;)V

    move-object v7, v11

    goto :goto_d

    :cond_1b
    :try_start_4
    new-instance v0, Ll3/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Trying to load \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' because using default policy, but it\'s unavailable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ll3/h; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    sget-object v2, Lj3/r0;->l:Lj3/r0;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    sget-object v2, Lj3/q;->c:Lj3/q;

    new-instance v4, Ll3/z0;

    invoke-direct {v4, v0}, Ll3/z0;-><init>(Lj3/r0;)V

    invoke-virtual {v10, v2, v4}, Ll3/E0;->i(Lj3/q;Lj3/B;)V

    iget-object v0, v9, LR0/i;->b:Ljava/lang/Object;

    check-cast v0, Lj3/S;

    invoke-virtual {v0}, Lj3/S;->f()V

    iput-object v3, v9, LR0/i;->c:Ljava/lang/Object;

    new-instance v0, Ll3/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, LR0/i;->b:Ljava/lang/Object;

    goto :goto_e

    :cond_1c
    :goto_d
    iget-object v3, v9, LR0/i;->c:Ljava/lang/Object;

    check-cast v3, Lj3/T;

    iget-object v11, v10, Ll3/E0;->e:Ll3/L0;

    iget-object v12, v7, Ll3/I1;->a:Lj3/T;

    if-eqz v3, :cond_1d

    invoke-virtual {v12}, Lj3/T;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v13, v9, LR0/i;->c:Ljava/lang/Object;

    check-cast v13, Lj3/T;

    invoke-virtual {v13}, Lj3/T;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    sget-object v3, Lj3/q;->a:Lj3/q;

    new-instance v13, Ll3/f;

    invoke-direct {v13, v4}, Ll3/f;-><init>(I)V

    invoke-virtual {v10, v3, v13}, Ll3/E0;->i(Lj3/q;Lj3/B;)V

    iget-object v3, v9, LR0/i;->b:Ljava/lang/Object;

    check-cast v3, Lj3/S;

    invoke-virtual {v3}, Lj3/S;->f()V

    iput-object v12, v9, LR0/i;->c:Ljava/lang/Object;

    iget-object v3, v9, LR0/i;->b:Ljava/lang/Object;

    check-cast v3, Lj3/S;

    invoke-virtual {v12, v10}, Lj3/T;->d(Lj3/i;)Lj3/S;

    move-result-object v4

    iput-object v4, v9, LR0/i;->b:Ljava/lang/Object;

    iget-object v4, v11, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v10, v9, LR0/i;->b:Ljava/lang/Object;

    check-cast v10, Lj3/S;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v3, v10}, [Ljava/lang/Object;

    move-result-object v3

    const-string v10, "Load balancer changed from {0} to {1}"

    invoke-virtual {v4, v2, v10, v3}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iget-object v2, v7, Ll3/I1;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    iget-object v3, v11, Ll3/L0;->N:Ll3/l;

    const-string v4, "Load-balancing config: {0}"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v4, v7}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    iget-object v3, v9, LR0/i;->b:Ljava/lang/Object;

    check-cast v3, Lj3/S;

    new-instance v4, Lj3/O;

    invoke-direct {v4, v8, v0, v2}, Lj3/O;-><init>(Ljava/util/List;Lj3/b;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lj3/S;->a(Lj3/O;)Z

    move-result v5

    :goto_e
    if-nez v5, :cond_20

    invoke-virtual {v6}, LJ2/e;->P()V

    :cond_20
    :goto_f
    return-void

    :pswitch_6
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, LJ2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ll3/L0;->d0:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v5, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v5, Ll3/L0;

    iget-object v6, v5, Ll3/L0;->a:Lj3/J;

    iget-object v7, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v7, Lj3/r0;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "[{0}] Failed to resolve name. status={1}"

    invoke-virtual {v2, v4, v8, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v5, Ll3/L0;->P:Ll3/I0;

    iget-object v4, v2, Ll3/I0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Ll3/L0;->j0:Ll3/x0;

    if-ne v4, v6, :cond_21

    invoke-virtual {v2, v3}, Ll3/I0;->i(Lj3/H;)V

    :cond_21
    iget v2, v5, Ll3/L0;->c0:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_22

    const-string v2, "Failed to resolve name: {0}"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v5, Ll3/L0;->N:Ll3/l;

    invoke-virtual {v6, v3, v2, v4}, Ll3/l;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v3, v5, Ll3/L0;->c0:I

    :cond_22
    iget-object v2, v5, Ll3/L0;->w:Ll3/E0;

    iget-object v3, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v3, Ll3/E0;

    if-eq v3, v2, :cond_23

    goto :goto_10

    :cond_23
    iget-object v2, v3, Ll3/E0;->d:LR0/i;

    iget-object v2, v2, LR0/i;->b:Ljava/lang/Object;

    check-cast v2, Lj3/S;

    invoke-virtual {v2, v7}, Lj3/S;->c(Lj3/r0;)V

    invoke-virtual {v0}, LJ2/e;->P()V

    :goto_10
    return-void

    :pswitch_7
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->v:Lj3/r;

    iget-object v0, v0, Lj3/r;->a:Lj3/q;

    sget-object v6, Lj3/q;->e:Lj3/q;

    if-ne v0, v6, :cond_24

    goto/16 :goto_13

    :cond_24
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->u:Ll3/l0;

    iget-object v6, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v6, Lj0/d;

    iget-object v7, v6, Lj0/d;->c:Ljava/lang/Object;

    check-cast v7, Ll3/l0;

    if-ne v0, v7, :cond_25

    iget-object v0, v6, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iput-object v3, v0, Ll3/o0;->u:Ll3/l0;

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->k:LJ4/y;

    invoke-virtual {v0}, LJ4/y;->a()V

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    sget-object v2, Lj3/q;->d:Lj3/q;

    invoke-static {v0, v2}, Ll3/o0;->f(Ll3/o0;Lj3/q;)V

    goto/16 :goto_13

    :cond_25
    iget-object v0, v6, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v6, v0, Ll3/o0;->t:Ll3/l0;

    if-ne v6, v7, :cond_2b

    iget-object v0, v0, Ll3/o0;->v:Lj3/r;

    iget-object v0, v0, Lj3/r;->a:Lj3/q;

    sget-object v6, Lj3/q;->a:Lj3/q;

    if-ne v0, v6, :cond_26

    move v0, v5

    goto :goto_11

    :cond_26
    move v0, v4

    :goto_11
    iget-object v6, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v6, Lj0/d;

    iget-object v6, v6, Lj0/d;->d:Ljava/lang/Object;

    check-cast v6, Ll3/o0;

    iget-object v6, v6, Ll3/o0;->v:Lj3/r;

    iget-object v6, v6, Lj3/r;->a:Lj3/q;

    const-string v7, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v0, v7, v6}, LZ2/l;->n(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->k:LJ4/y;

    iget-object v6, v0, LJ4/y;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget v7, v0, LJ4/y;->a:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj3/y;

    iget v7, v0, LJ4/y;->b:I

    add-int/2addr v7, v5

    iput v7, v0, LJ4/y;->b:I

    iget-object v6, v6, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v7, v6, :cond_27

    iget v6, v0, LJ4/y;->a:I

    add-int/2addr v6, v5

    iput v6, v0, LJ4/y;->a:I

    iput v4, v0, LJ4/y;->b:I

    :cond_27
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->k:LJ4/y;

    iget v6, v0, LJ4/y;->a:I

    iget-object v0, v0, LJ4/y;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_28

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    invoke-static {v0}, Ll3/o0;->g(Ll3/o0;)V

    goto/16 :goto_13

    :cond_28
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iput-object v3, v0, Ll3/o0;->t:Ll3/l0;

    iget-object v0, v0, Ll3/o0;->k:LJ4/y;

    invoke-virtual {v0}, LJ4/y;->a()V

    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v3, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v3, Lj3/r0;

    iget-object v6, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v6}, Lj3/w0;->d()V

    invoke-virtual {v3}, Lj3/r0;->f()Z

    move-result v6

    xor-int/2addr v6, v5

    const-string v7, "The error status must not be OK"

    invoke-static {v6, v7}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance v6, Lj3/r;

    sget-object v7, Lj3/q;->c:Lj3/q;

    invoke-direct {v6, v7, v3}, Lj3/r;-><init>(Lj3/q;Lj3/r0;)V

    invoke-virtual {v0, v6}, Ll3/o0;->h(Lj3/r;)V

    iget-object v6, v0, Ll3/o0;->m:Ll3/T;

    if-nez v6, :cond_29

    iget-object v6, v0, Ll3/o0;->c:Ll3/P1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll3/P1;->h()Ll3/T;

    move-result-object v6

    iput-object v6, v0, Ll3/o0;->m:Ll3/T;

    :cond_29
    iget-object v6, v0, Ll3/o0;->m:Ll3/T;

    invoke-virtual {v6}, Ll3/T;->a()J

    move-result-wide v6

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v0, Ll3/o0;->n:LJ2/j;

    invoke-virtual {v8, v12}, LJ2/j;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long v10, v6, v8

    invoke-static {v3}, Ll3/o0;->i(Lj3/r0;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    iget-object v6, v0, Ll3/o0;->i:Lj3/i;

    const-string v7, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    invoke-virtual {v6, v2, v7, v3}, Lj3/i;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Ll3/o0;->o:Lj3/G;

    if-nez v2, :cond_2a

    goto :goto_12

    :cond_2a
    move v5, v4

    :goto_12
    const-string v2, "previous reconnectTask is not done"

    invoke-static {v5, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    new-instance v9, Ll3/i0;

    invoke-direct {v9, v0, v4}, Ll3/i0;-><init>(Ll3/o0;I)V

    iget-object v13, v0, Ll3/o0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual/range {v8 .. v13}, Lj3/w0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lj3/G;

    move-result-object v2

    iput-object v2, v0, Ll3/o0;->o:Lj3/G;

    :cond_2b
    :goto_13
    return-void

    :pswitch_8
    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/o0;

    iget-object v2, v2, Ll3/o0;->k:LJ4/y;

    iget-object v6, v2, LJ4/y;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget v7, v2, LJ4/y;->a:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj3/y;

    iget-object v6, v6, Lj3/y;->a:Ljava/util/List;

    iget v2, v2, LJ4/y;->b:I

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    iget-object v6, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v6, Ll3/o0;

    iget-object v6, v6, Ll3/o0;->k:LJ4/y;

    iget-object v7, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iput-object v7, v6, LJ4/y;->c:Ljava/lang/Object;

    invoke-virtual {v6}, LJ4/y;->a()V

    iget-object v6, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v6, Ll3/o0;

    iget-object v7, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iput-object v7, v6, Ll3/o0;->l:Ljava/util/List;

    iget-object v6, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v6, Ll3/o0;

    iget-object v6, v6, Ll3/o0;->v:Lj3/r;

    iget-object v6, v6, Lj3/r;->a:Lj3/q;

    sget-object v7, Lj3/q;->b:Lj3/q;

    if-eq v6, v7, :cond_2c

    iget-object v6, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v6, Ll3/o0;

    iget-object v6, v6, Ll3/o0;->v:Lj3/r;

    iget-object v6, v6, Lj3/r;->a:Lj3/q;

    sget-object v8, Lj3/q;->a:Lj3/q;

    if-ne v6, v8, :cond_30

    :cond_2c
    iget-object v6, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v6, Ll3/o0;

    iget-object v6, v6, Ll3/o0;->k:LJ4/y;

    :goto_14
    iget-object v8, v6, LJ4/y;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_2e

    iget-object v8, v6, LJ4/y;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj3/y;

    iget-object v8, v8, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2d

    add-int/2addr v4, v5

    goto :goto_14

    :cond_2d
    iput v4, v6, LJ4/y;->a:I

    iput v8, v6, LJ4/y;->b:I

    goto :goto_15

    :cond_2e
    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/o0;

    iget-object v2, v2, Ll3/o0;->v:Lj3/r;

    iget-object v2, v2, Lj3/r;->a:Lj3/q;

    if-ne v2, v7, :cond_2f

    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/o0;

    iget-object v2, v2, Ll3/o0;->u:Ll3/l0;

    iget-object v4, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v4, Ll3/o0;

    iput-object v3, v4, Ll3/o0;->u:Ll3/l0;

    iget-object v4, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v4, Ll3/o0;

    iget-object v4, v4, Ll3/o0;->k:LJ4/y;

    invoke-virtual {v4}, LJ4/y;->a()V

    iget-object v4, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v4, Ll3/o0;

    sget-object v5, Lj3/q;->d:Lj3/q;

    invoke-static {v4, v5}, Ll3/o0;->f(Ll3/o0;Lj3/q;)V

    goto :goto_16

    :cond_2f
    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/o0;

    iget-object v2, v2, Ll3/o0;->t:Ll3/l0;

    sget-object v4, Lj3/r0;->m:Lj3/r0;

    const-string v5, "InternalSubchannel closed pending transport due to address change"

    invoke-virtual {v4, v5}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v4

    invoke-virtual {v2, v4}, Ll3/W;->c(Lj3/r0;)V

    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/o0;

    iput-object v3, v2, Ll3/o0;->t:Ll3/l0;

    iget-object v2, v2, Ll3/o0;->k:LJ4/y;

    invoke-virtual {v2}, LJ4/y;->a()V

    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/o0;

    invoke-static {v2}, Ll3/o0;->g(Ll3/o0;)V

    :cond_30
    :goto_15
    move-object v2, v3

    :goto_16
    if-eqz v2, :cond_32

    iget-object v4, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v4, Ll3/o0;

    iget-object v5, v4, Ll3/o0;->p:Lj3/G;

    if-eqz v5, :cond_31

    iget-object v4, v4, Ll3/o0;->q:Ll3/T0;

    sget-object v5, Lj3/r0;->m:Lj3/r0;

    const-string v6, "InternalSubchannel closed transport early due to address change"

    invoke-virtual {v5, v6}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v5

    invoke-interface {v4, v5}, Ll3/T0;->c(Lj3/r0;)V

    iget-object v4, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v4, Ll3/o0;

    iget-object v4, v4, Ll3/o0;->p:Lj3/G;

    invoke-virtual {v4}, Lj3/G;->d()V

    iget-object v4, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v4, Ll3/o0;

    iput-object v3, v4, Ll3/o0;->p:Lj3/G;

    iput-object v3, v4, Ll3/o0;->q:Ll3/T0;

    :cond_31
    iget-object v3, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v3, Ll3/o0;

    iput-object v2, v3, Ll3/o0;->q:Ll3/T0;

    iget-object v4, v3, Ll3/o0;->j:Lj3/w0;

    new-instance v5, LA2/h;

    invoke-direct {v5, v1, v0}, LA2/h;-><init>(Ljava/lang/Object;I)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v3, Ll3/o0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v6, 0x5

    invoke-virtual/range {v4 .. v9}, Lj3/w0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lj3/G;

    move-result-object v0

    iput-object v0, v3, Ll3/o0;->p:Lj3/G;

    :cond_32
    return-void

    :pswitch_9
    iget-object v0, v1, Ll3/B;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, LJ2/e;

    const-string v7, "Unable to resolve host "

    const-string v0, "Using proxy address "

    sget-object v8, Ll3/Q;->s:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    iget-object v11, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v11, Ll3/Q;

    if-eqz v10, :cond_33

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Attempting DNS resolution of "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v11, Ll3/Q;->f:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_33
    :try_start_5
    iget-object v10, v11, Ll3/Q;->f:Ljava/lang/String;

    iget v12, v11, Ll3/Q;->g:I

    invoke-static {v10, v12}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v10

    iget-object v12, v11, Ll3/Q;->a:Ll3/g1;

    invoke-virtual {v12, v10}, Ll3/g1;->a(Ljava/net/InetSocketAddress;)Lj3/C;

    move-result-object v10

    if-eqz v10, :cond_34

    new-instance v12, Lj3/y;

    invoke-direct {v12, v10}, Lj3/y;-><init>(Ljava/net/SocketAddress;)V

    goto :goto_17

    :cond_34
    move-object v12, v3

    :goto_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    sget-object v13, Lj3/b;->b:Lj3/b;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v14, v11, Ll3/Q;->j:Lj3/w0;

    if-eqz v12, :cond_36

    :try_start_6
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_35

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_18

    :catchall_1
    move-exception v0

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    goto/16 :goto_1b

    :cond_35
    :goto_18
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v3

    goto :goto_1a

    :cond_36
    invoke-virtual {v11}, Ll3/Q;->h()LJ2/e;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v8, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lj3/r0;

    if-eqz v0, :cond_38

    invoke-virtual {v6, v0}, LJ2/e;->K(Lj3/r0;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, v8, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lj3/r0;

    if-nez v0, :cond_37

    move v4, v5

    :cond_37
    new-instance v0, Ll3/C;

    invoke-direct {v0, v1, v4, v2}, Ll3/C;-><init>(Ljava/lang/Object;ZI)V

    :goto_19
    invoke-virtual {v14, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1c

    :catchall_2
    move-exception v0

    move-object v3, v8

    goto/16 :goto_1d

    :catch_3
    move-exception v0

    move-object v3, v8

    goto :goto_1b

    :cond_38
    :try_start_8
    iget-object v0, v8, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_39

    move-object v10, v0

    :cond_39
    iget-object v0, v8, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Lj3/i0;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_3a

    move-object v3, v0

    :cond_3a
    move-object v0, v10

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    :goto_1a
    :try_start_9
    new-instance v9, Lj3/j0;

    invoke-direct {v9, v0, v13, v8}, Lj3/j0;-><init>(Ljava/util/List;Lj3/b;Lj3/i0;)V

    iget-object v0, v6, LJ2/e;->d:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v0, v0, Ll3/L0;->m:Lj3/w0;

    new-instance v8, Ll3/B;

    const/16 v10, 0x11

    invoke-direct {v8, v10, v6, v9}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Lj3/w0;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_3b

    iget-object v0, v3, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lj3/r0;

    if-nez v0, :cond_3b

    move v4, v5

    :cond_3b
    new-instance v0, Ll3/C;

    invoke-direct {v0, v1, v4, v2}, Ll3/C;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_19

    :goto_1b
    :try_start_a
    sget-object v8, Lj3/r0;->m:Lj3/r0;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v11, Ll3/Q;->f:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v7

    invoke-virtual {v7, v0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v6, v0}, LJ2/e;->K(Lj3/r0;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_3c

    iget-object v0, v3, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lj3/r0;

    if-nez v0, :cond_3c

    move v4, v5

    :cond_3c
    new-instance v0, Ll3/C;

    invoke-direct {v0, v1, v4, v2}, Ll3/C;-><init>(Ljava/lang/Object;ZI)V

    iget-object v2, v11, Ll3/Q;->j:Lj3/w0;

    invoke-virtual {v2, v0}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :goto_1c
    return-void

    :goto_1d
    if-eqz v3, :cond_3d

    iget-object v3, v3, LJ2/e;->b:Ljava/lang/Object;

    check-cast v3, Lj3/r0;

    if-nez v3, :cond_3d

    move v4, v5

    :cond_3d
    iget-object v3, v11, Ll3/Q;->j:Lj3/w0;

    new-instance v5, Ll3/C;

    invoke-direct {v5, v1, v4, v2}, Ll3/C;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v3, v5}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    throw v0

    :pswitch_a
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/M;

    iget-object v0, v0, Ll3/M;->a:Ll3/u;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/f0;

    invoke-interface {v0, v2}, Ll3/u;->b(Lj3/f0;)V

    return-void

    :pswitch_b
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/M;

    iget-object v0, v0, Ll3/M;->a:Ll3/u;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj1/a;

    invoke-interface {v0, v2}, Ll3/u;->d(Lj1/a;)V

    return-void

    :pswitch_c
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/r0;

    invoke-interface {v0, v2}, Ll3/s;->d(Lj3/r0;)V

    return-void

    :pswitch_d
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lq3/a;

    invoke-interface {v0, v2}, Ll3/O1;->f(Lq3/a;)V

    return-void

    :pswitch_e
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/v;

    invoke-interface {v0, v2}, Ll3/s;->e(Lj3/v;)V

    return-void

    :pswitch_f
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/x;

    invoke-interface {v0, v2}, Ll3/s;->h(Lj3/x;)V

    return-void

    :pswitch_10
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/o;

    invoke-interface {v0, v2}, Ll3/O1;->a(Lj3/o;)V

    return-void

    :pswitch_11
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/J;

    iget-object v0, v0, Ll3/J;->h:Li1/D;

    iget-object v0, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v0, v0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v2, "Channel must have been shut down"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    return-void

    :pswitch_12
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/G;

    iget-object v0, v0, Ll3/G;->a:Lj3/j;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/t0;

    invoke-virtual {v0, v2}, Lj3/j;->onMessage(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/G;

    iget-object v0, v0, Ll3/G;->a:Lj3/j;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/f0;

    invoke-virtual {v0, v2}, Lj3/j;->onHeaders(Lj3/f0;)V

    return-void

    :pswitch_14
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/H0;

    iget-object v0, v0, Ll3/H0;->f:Lj3/k;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lj3/k;->sendMessage(Ljava/lang/Object;)V

    return-void

    :pswitch_15
    iget-object v0, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v0, Ll3/H0;

    iget-object v0, v0, Ll3/H0;->f:Lj3/k;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Lj3/r0;

    iget-object v3, v2, Lj3/r0;->b:Ljava/lang/String;

    iget-object v2, v2, Lj3/r0;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v2}, Lj3/k;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_16
    sget-object v0, Lj3/r0;->h:Lj3/r0;

    iget-object v2, v1, Ll3/B;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    iget-object v2, v1, Ll3/B;->b:Ljava/lang/Object;

    check-cast v2, Ll3/H0;

    invoke-virtual {v2, v0, v5}, Ll3/H0;->a(Lj3/r0;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
