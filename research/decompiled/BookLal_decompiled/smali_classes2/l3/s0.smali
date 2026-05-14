.class public final Ll3/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/u0;


# direct methods
.method public synthetic constructor <init>(Ll3/u0;I)V
    .locals 0

    iput p2, p0, Ll3/s0;->a:I

    iput-object p1, p0, Ll3/s0;->b:Ll3/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ll3/s0;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Ll3/s0;->b:Ll3/u0;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Ll3/s0;->b:Ll3/u0;

    const/4 v4, 0x0

    iput-object v4, v3, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;

    iget v4, v3, Ll3/u0;->d:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x4

    iput v4, v3, Ll3/u0;->d:I

    iget-object v4, v3, Ll3/u0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v3, Ll3/u0;->g:Ll3/v0;

    iget-wide v6, v3, Ll3/u0;->j:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, v3, Ll3/u0;->e:Ljava/util/concurrent/ScheduledFuture;

    move v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    iget-object v4, v3, Ll3/u0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, v3, Ll3/u0;->h:Ll3/v0;

    iget-wide v7, v3, Ll3/u0;->i:J

    iget-object v9, v3, Ll3/u0;->b:LJ2/j;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10}, LJ2/j;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    invoke-interface {v4, v6, v7, v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, v3, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;

    iget-object v3, p0, Ll3/s0;->b:Ll3/u0;

    iput v5, v3, Ll3/u0;->d:I

    :cond_1
    move v3, v1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    iget-object v2, p0, Ll3/s0;->b:Ll3/u0;

    iget-object v2, v2, Ll3/u0;->c:Li1/D;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ll3/t0;

    invoke-direct {v3, v2}, Ll3/t0;-><init>(Li1/D;)V

    iget-object v2, v2, Li1/D;->b:Ljava/lang/Object;

    check-cast v2, Lm3/n;

    sget-object v4, LN2/n;->a:LN2/n;

    iget-object v5, v2, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, v2, Lm3/n;->i:Lm3/d;

    if-eqz v6, :cond_7

    iget-boolean v6, v2, Lm3/n;->y:Z

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lm3/n;->l()Lj3/s0;

    move-result-object v0

    sget-object v1, Ll3/g0;->g:Ljava/util/logging/Logger;

    new-instance v1, Ll3/f0;

    invoke-direct {v1, v3, v0}, Ll3/f0;-><init>(Ll3/t0;Lj3/s0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4, v1}, LN2/n;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed to execute PingCallback"

    sget-object v3, Ll3/g0;->g:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit v5

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    :cond_2
    iget-object v6, v2, Lm3/n;->x:Ll3/g0;

    if-eqz v6, :cond_3

    const-wide/16 v7, 0x0

    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v6, v2, Lm3/n;->d:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    iget-object v6, v2, Lm3/n;->e:Ll3/P1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LJ2/j;

    invoke-direct {v6, v1}, LJ2/j;-><init>(I)V

    invoke-virtual {v6}, LJ2/j;->b()V

    new-instance v9, Ll3/g0;

    invoke-direct {v9, v7, v8, v6}, Ll3/g0;-><init>(JLJ2/j;)V

    iput-object v9, v2, Lm3/n;->x:Ll3/g0;

    iget-object v6, v2, Lm3/n;->L:Ll3/R1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v9

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, v2, Lm3/n;->i:Lm3/d;

    const/16 v2, 0x20

    ushr-long v9, v7, v2

    long-to-int v2, v9

    long-to-int v7, v7

    invoke-virtual {v0, v2, v7, v1}, Lm3/d;->e(IIZ)V

    :cond_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-enter v6

    :try_start_4
    iget-boolean v0, v6, Ll3/g0;->d:Z

    if-nez v0, :cond_5

    iget-object v0, v6, Ll3/g0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_5
    iget-object v0, v6, Ll3/g0;->e:Lj3/s0;

    if-eqz v0, :cond_6

    new-instance v1, Ll3/f0;

    invoke-direct {v1, v3, v0}, Ll3/f0;-><init>(Ll3/t0;Lj3/s0;)V

    goto :goto_3

    :cond_6
    iget-wide v0, v6, Ll3/g0;->f:J

    new-instance v2, Ll3/f0;

    invoke-direct {v2, v3, v0, v1}, Ll3/f0;-><init>(Ll3/t0;J)V

    move-object v1, v2

    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v4, v1}, LN2/n;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed to execute PingCallback"

    sget-object v3, Ll3/g0;->g:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_4
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_5
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_8
    :goto_6
    return-void

    :goto_7
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :pswitch_0
    iget-object v2, p0, Ll3/s0;->b:Ll3/u0;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Ll3/s0;->b:Ll3/u0;

    iget v4, v3, Ll3/u0;->d:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_9

    iput v5, v3, Ll3/u0;->d:I

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_a

    iget-object v0, v3, Ll3/u0;->c:Li1/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj3/r0;->m:Lj3/r0;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    iget-object v0, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    invoke-virtual {v0, v1}, Lm3/n;->b(Lj3/r0;)V

    :cond_a
    return-void

    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
