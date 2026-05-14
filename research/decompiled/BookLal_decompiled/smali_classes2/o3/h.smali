.class public final Lo3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:LQ4/s;

.field public final b:Lo3/f;

.field public final c:Lo3/c;


# direct methods
.method public constructor <init>(LQ4/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/h;->a:LQ4/s;

    new-instance v0, Lo3/f;

    invoke-direct {v0, p1}, Lo3/f;-><init>(LQ4/s;)V

    iput-object v0, p0, Lo3/h;->b:Lo3/f;

    new-instance p1, Lo3/c;

    invoke-direct {p1, v0}, Lo3/c;-><init>(Lo3/f;)V

    iput-object p1, p0, Lo3/h;->c:Lo3/c;

    return-void
.end method


# virtual methods
.method public final b(Lm3/m;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lo3/h;->a:LQ4/s;

    const-wide/16 v5, 0x9

    invoke-virtual {v4, v5, v6}, LQ4/s;->v(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v1, Lo3/h;->a:LQ4/s;

    invoke-static {v4}, Lo3/j;->a(LQ4/s;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_1d

    const/16 v6, 0x4000

    if-gt v4, v6, :cond_1d

    iget-object v6, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v6}, LQ4/s;->f()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iget-object v7, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v7}, LQ4/s;->f()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    iget-object v8, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v8}, LQ4/s;->q()I

    move-result v8

    const v9, 0x7fffffff

    and-int v11, v8, v9

    sget-object v8, Lo3/j;->a:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2, v11, v4, v6, v7}, Lo3/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x8

    const-wide/16 v9, 0x0

    packed-switch v6, :pswitch_data_0

    iget-object v0, v1, Lo3/h;->a:LQ4/s;

    int-to-long v3, v4

    invoke-virtual {v0, v3, v4}, LQ4/s;->w(J)V

    goto/16 :goto_c

    :pswitch_0
    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    iget-object v4, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v4}, LQ4/s;->q()I

    move-result v4

    int-to-long v6, v4

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v6, v12

    cmp-long v4, v6, v9

    if-eqz v4, :cond_6

    iget-object v8, v0, Lm3/m;->a:Lj3/G;

    invoke-virtual {v8, v2, v11, v6, v7}, Lj3/G;->A(IIJ)V

    if-nez v4, :cond_2

    const-string v3, "Received 0 flow control window increment."

    if-nez v11, :cond_1

    iget-object v0, v0, Lm3/m;->d:Lm3/n;

    invoke-static {v0, v3}, Lm3/n;->f(Lm3/n;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1
    iget-object v10, v0, Lm3/m;->d:Lm3/n;

    sget-object v0, Lj3/r0;->l:Lj3/r0;

    invoke-virtual {v0, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v12

    sget-object v13, Ll3/t;->a:Ll3/t;

    sget-object v15, Lo3/a;->c:Lo3/a;

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v16}, Lm3/n;->i(ILj3/r0;Ll3/t;ZLo3/a;Lj3/f0;)V

    goto/16 :goto_c

    :cond_2
    iget-object v4, v0, Lm3/m;->d:Lm3/n;

    iget-object v4, v4, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v4

    if-nez v11, :cond_3

    :try_start_1
    iget-object v0, v0, Lm3/m;->d:Lm3/n;

    iget-object v0, v0, Lm3/n;->j:Lm3/w;

    long-to-int v3, v6

    invoke-virtual {v0, v5, v3}, Lm3/w;->b(Lm3/v;I)V

    monitor-exit v4

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lm3/m;->d:Lm3/n;

    iget-object v5, v5, Lm3/n;->n:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm3/j;

    if-eqz v5, :cond_4

    iget-object v8, v0, Lm3/m;->d:Lm3/n;

    iget-object v8, v8, Lm3/n;->j:Lm3/w;

    iget-object v5, v5, Lm3/j;->n:Lm3/i;

    iget-object v9, v5, Lm3/i;->w:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v5, Lm3/i;->J:Lm3/v;

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    long-to-int v6, v6

    :try_start_3
    invoke-virtual {v8, v5, v6}, Lm3/w;->b(Lm3/v;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_4
    iget-object v5, v0, Lm3/m;->d:Lm3/n;

    invoke-virtual {v5, v11}, Lm3/n;->m(I)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v2

    :cond_5
    :goto_0
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1c

    iget-object v0, v0, Lm3/m;->d:Lm3/n;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received window_update for unknown stream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lm3/n;->f(Lm3/n;Ljava/lang/String;)V

    goto/16 :goto_c

    :goto_1
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_6
    const-string v0, "windowSizeIncrement was 0"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_7
    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :pswitch_1
    if-lt v4, v8, :cond_12

    if-nez v11, :cond_11

    iget-object v6, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v6}, LQ4/s;->q()I

    move-result v7

    invoke-virtual {v6}, LQ4/s;->q()I

    move-result v11

    sub-int/2addr v4, v8

    invoke-static {}, Lo3/a;->values()[Lo3/a;

    move-result-object v8

    array-length v12, v8

    :goto_2
    if-ge v3, v12, :cond_9

    aget-object v13, v8, v3

    iget v14, v13, Lo3/a;->a:I

    if-ne v14, v11, :cond_8

    goto :goto_3

    :cond_8
    add-int/2addr v3, v2

    goto :goto_2

    :cond_9
    move-object v13, v5

    :goto_3
    if-eqz v13, :cond_10

    sget-object v3, LQ4/j;->d:LQ4/j;

    if-lez v4, :cond_a

    int-to-long v3, v4

    invoke-virtual {v6, v3, v4}, LQ4/s;->g(J)LQ4/j;

    move-result-object v3

    :cond_a
    iget-object v4, v0, Lm3/m;->a:Lj3/G;

    invoke-virtual {v4, v2, v7, v13, v3}, Lj3/G;->w(IILo3/a;LQ4/j;)V

    sget-object v4, Lo3/a;->q:Lo3/a;

    iget-object v6, v0, Lm3/m;->d:Lm3/n;

    if-ne v13, v4, :cond_b

    invoke-virtual {v3}, LQ4/j;->n()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lm3/n;->Q:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v0, "too_many_pings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lm3/n;->J:LA2/h;

    invoke-virtual {v0}, LA2/h;->run()V

    :cond_b
    iget v0, v13, Lo3/a;->a:I

    int-to-long v11, v0

    sget-object v0, Ll3/a0;->d:[Ll3/a0;

    array-length v4, v0

    int-to-long v13, v4

    cmp-long v4, v11, v13

    if-gez v4, :cond_d

    cmp-long v4, v11, v9

    if-gez v4, :cond_c

    goto :goto_4

    :cond_c
    long-to-int v4, v11

    aget-object v0, v0, v4

    goto :goto_5

    :cond_d
    :goto_4
    move-object v0, v5

    :goto_5
    if-nez v0, :cond_e

    sget-object v0, Ll3/a0;->c:Ll3/a0;

    iget-object v0, v0, Ll3/a0;->b:Lj3/r0;

    iget-object v0, v0, Lj3/r0;->a:Lj3/q0;

    iget v0, v0, Lj3/q0;->a:I

    invoke-static {v0}, Lj3/r0;->d(I)Lj3/r0;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Unrecognized HTTP/2 error code: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    goto :goto_6

    :cond_e
    iget-object v0, v0, Ll3/a0;->b:Lj3/r0;

    :goto_6
    const-string v4, "Received Goaway"

    invoke-virtual {v0, v4}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v3}, LQ4/j;->c()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {v3}, LQ4/j;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    :cond_f
    sget-object v3, Lm3/n;->P:Ljava/util/Map;

    invoke-virtual {v6, v7, v5, v0}, Lm3/n;->r(ILo3/a;Lj3/r0;)V

    goto/16 :goto_c

    :cond_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v2, v0}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_11
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-static {v2, v0}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v2, v0}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :pswitch_2
    if-ne v4, v8, :cond_19

    if-nez v11, :cond_18

    iget-object v4, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v4}, LQ4/s;->q()I

    move-result v4

    iget-object v6, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v6}, LQ4/s;->q()I

    move-result v6

    and-int/2addr v7, v2

    if-eqz v7, :cond_13

    move v3, v2

    :cond_13
    const-string v7, "Received unexpected ping ack. Expecting "

    int-to-long v8, v4

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    iget-object v10, v0, Lm3/m;->a:Lj3/G;

    invoke-virtual {v10, v2, v8, v9}, Lj3/G;->x(IJ)V

    if-nez v3, :cond_14

    iget-object v3, v0, Lm3/m;->d:Lm3/n;

    iget-object v3, v3, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    iget-object v0, v0, Lm3/m;->d:Lm3/n;

    iget-object v0, v0, Lm3/n;->i:Lm3/d;

    invoke-virtual {v0, v4, v6, v2}, Lm3/d;->e(IIZ)V

    monitor-exit v3

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_14
    iget-object v3, v0, Lm3/m;->d:Lm3/n;

    iget-object v4, v3, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    iget-object v0, v0, Lm3/m;->d:Lm3/n;

    iget-object v3, v0, Lm3/n;->x:Ll3/g0;

    if-eqz v3, :cond_16

    iget-wide v10, v3, Ll3/g0;->a:J

    cmp-long v6, v10, v8

    if-nez v6, :cond_15

    iput-object v5, v0, Lm3/n;->x:Ll3/g0;

    goto :goto_8

    :cond_15
    sget-object v0, Lm3/n;->Q:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_b

    :cond_16
    sget-object v0, Lm3/n;->Q:Ljava/util/logging/Logger;

    const-string v3, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_7
    move-object v3, v5

    :goto_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_1c

    monitor-enter v3

    :try_start_9
    iget-boolean v0, v3, Ll3/g0;->d:Z

    if-eqz v0, :cond_17

    monitor-exit v3

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    goto :goto_a

    :cond_17
    iput-boolean v2, v3, Ll3/g0;->d:Z

    iget-object v0, v3, Ll3/g0;->b:LJ2/j;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, LJ2/j;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iput-wide v6, v3, Ll3/g0;->f:J

    iget-object v0, v3, Ll3/g0;->c:Ljava/util/LinkedHashMap;

    iput-object v5, v3, Ll3/g0;->c:Ljava/util/LinkedHashMap;

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/t0;

    new-instance v5, Ll3/f0;

    invoke-direct {v5, v0, v6, v7}, Ll3/f0;-><init>(Ll3/t0;J)V

    :try_start_a
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v4, v0

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Failed to execute PingCallback"

    sget-object v8, Ll3/g0;->g:Ljava/util/logging/Logger;

    invoke-virtual {v8, v0, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_a
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :goto_b
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :cond_18
    const-string v0, "TYPE_PING streamId != 0"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_19
    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :pswitch_3
    invoke-virtual {v1, v0, v4, v7, v11}, Lo3/h;->g(Lm3/m;IBI)V

    goto :goto_c

    :pswitch_4
    invoke-virtual {v1, v0, v4, v7, v11}, Lo3/h;->n(Lm3/m;IBI)V

    goto :goto_c

    :pswitch_5
    invoke-virtual {v1, v0, v4, v11}, Lo3/h;->m(Lm3/m;II)V

    goto :goto_c

    :pswitch_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_1b

    if-eqz v11, :cond_1a

    iget-object v3, v1, Lo3/h;->a:LQ4/s;

    invoke-virtual {v3}, LQ4/s;->q()I

    invoke-virtual {v3}, LQ4/s;->f()B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_c

    :cond_1a
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-static {v2, v0}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_1b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v2, v0}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :pswitch_7
    invoke-virtual {v1, v0, v4, v7, v11}, Lo3/h;->f(Lm3/m;IBI)V

    goto :goto_c

    :pswitch_8
    invoke-virtual {v1, v0, v4, v7, v11}, Lo3/h;->c(Lm3/m;IBI)V

    :cond_1c
    :goto_c
    return v2

    :cond_1d
    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :catch_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final c(Lm3/m;IBI)V
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_5

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v2}, LQ4/s;->f()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    invoke-static {p2, p3, v8}, Lo3/j;->b(IBS)I

    move-result p2

    iget-object p3, p0, Lo3/h;->a:LQ4/s;

    iget-object v2, p1, Lm3/m;->a:Lj3/G;

    iget-object v5, p3, LQ4/s;->b:LQ4/g;

    const/4 v3, 0x1

    move v4, p4

    move v6, p2

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lj3/G;->v(IILQ4/g;IZ)V

    iget-object v2, p1, Lm3/m;->d:Lm3/n;

    iget-object v3, v2, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lm3/n;->n:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/j;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v2, :cond_3

    iget-object v0, p1, Lm3/m;->d:Lm3/n;

    invoke-virtual {v0, p4}, Lm3/n;->m(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lm3/m;->d:Lm3/n;

    iget-object v0, v0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p1, Lm3/m;->d:Lm3/n;

    iget-object v2, v2, Lm3/n;->i:Lm3/d;

    sget-object v3, Lo3/a;->f:Lo3/a;

    invoke-virtual {v2, p4, v3}, Lm3/d;->f(ILo3/a;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3}, LQ4/s;->w(J)V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    iget-object p1, p1, Lm3/m;->d:Lm3/n;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received data for unknown stream: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lm3/n;->f(Lm3/n;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    int-to-long v3, p2

    invoke-virtual {p3, v3, v4}, LQ4/s;->v(J)V

    new-instance p4, LQ4/g;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iget-object p3, p3, LQ4/s;->b:LQ4/g;

    invoke-virtual {p4, p3, v3, v4}, LQ4/g;->o(LQ4/g;J)V

    iget-object p3, v2, Lm3/j;->n:Lm3/i;

    iget-object p3, p3, Lm3/i;->I:Ly3/c;

    sget-object p3, Ly3/b;->a:Ly3/a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lm3/m;->d:Lm3/n;

    iget-object p3, p3, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iget-object v2, v2, Lm3/j;->n:Lm3/i;

    invoke-virtual {v2, p4, v0}, Lm3/i;->n(LQ4/g;Z)V

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    iget-object p3, p1, Lm3/m;->d:Lm3/n;

    iget p4, p3, Lm3/n;->s:I

    add-int/2addr p4, p2

    iput p4, p3, Lm3/n;->s:I

    int-to-float p2, p4

    iget p4, p3, Lm3/n;->f:I

    int-to-float p4, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p4, v0

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_4

    iget-object p2, p3, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter p2

    :try_start_4
    iget-object p3, p1, Lm3/m;->d:Lm3/n;

    iget-object p4, p3, Lm3/n;->i:Lm3/d;

    iget p3, p3, Lm3/n;->s:I

    int-to-long v2, p3

    invoke-virtual {p4, v1, v2, v3}, Lm3/d;->g(IJ)V

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p1, p1, Lm3/m;->d:Lm3/n;

    iput v1, p1, Lm3/n;->s:I

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_4
    :goto_3
    iget-object p1, p0, Lo3/h;->a:LQ4/s;

    int-to-long p2, v8

    invoke-virtual {p1, p2, p3}, LQ4/s;->w(J)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :cond_5
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v0}, LQ4/s;->close()V

    return-void
.end method

.method public final e(ISBI)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lo3/h;->b:Lo3/f;

    iput p1, v0, Lo3/f;->e:I

    iput p1, v0, Lo3/f;->b:I

    iput-short p2, v0, Lo3/f;->f:S

    iput-byte p3, v0, Lo3/f;->c:B

    iput p4, v0, Lo3/f;->d:I

    :cond_0
    :goto_0
    iget-object p1, p0, Lo3/h;->c:Lo3/c;

    iget-object p2, p1, Lo3/c;->b:LQ4/s;

    invoke-virtual {p2}, LQ4/s;->b()Z

    move-result p3

    iget-object p4, p1, Lo3/c;->a:Ljava/util/ArrayList;

    if-nez p3, :cond_c

    invoke-virtual {p2}, LQ4/s;->f()B

    move-result p2

    and-int/lit16 p3, p2, 0xff

    const/16 v0, 0x80

    if-eq p3, v0, :cond_b

    and-int/lit16 v1, p2, 0x80

    if-ne v1, v0, :cond_3

    const/16 p2, 0x7f

    invoke-virtual {p1, p3, p2}, Lo3/c;->e(II)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    if-ltz p3, :cond_1

    sget-object v0, Lo3/e;->b:[Lo3/b;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p3, v1, :cond_1

    aget-object p1, v0, p3

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lo3/e;->b:[Lo3/b;

    array-length v0, v0

    sub-int/2addr p3, v0

    iget v0, p1, Lo3/c;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    if-ltz v0, :cond_2

    iget-object p1, p1, Lo3/c;->e:[Lo3/b;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    if-gt v0, p3, :cond_2

    aget-object p1, p1, v0

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Header index too large "

    invoke-static {p2, p3}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x40

    if-ne p3, v0, :cond_4

    invoke-virtual {p1}, Lo3/c;->d()LQ4/j;

    move-result-object p2

    invoke-static {p2}, Lo3/e;->a(LQ4/j;)V

    invoke-virtual {p1}, Lo3/c;->d()LQ4/j;

    move-result-object p3

    new-instance p4, Lo3/b;

    invoke-direct {p4, p2, p3}, Lo3/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p1, p4}, Lo3/c;->c(Lo3/b;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p2, 0x40

    if-ne v1, v0, :cond_5

    const/16 p2, 0x3f

    invoke-virtual {p1, p3, p2}, Lo3/c;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lo3/c;->b(I)LQ4/j;

    move-result-object p2

    invoke-virtual {p1}, Lo3/c;->d()LQ4/j;

    move-result-object p3

    new-instance p4, Lo3/b;

    invoke-direct {p4, p2, p3}, Lo3/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p1, p4}, Lo3/c;->c(Lo3/b;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p2, p2, 0x20

    const/16 v0, 0x20

    if-ne p2, v0, :cond_8

    const/16 p2, 0x1f

    invoke-virtual {p1, p3, p2}, Lo3/c;->e(II)I

    move-result p2

    iput p2, p1, Lo3/c;->d:I

    if-ltz p2, :cond_7

    iget p3, p1, Lo3/c;->c:I

    if-gt p2, p3, :cond_7

    iget p3, p1, Lo3/c;->h:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_6

    iget-object p2, p1, Lo3/c;->e:[Lo3/b;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p1, Lo3/c;->e:[Lo3/b;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo3/c;->f:I

    const/4 p2, 0x0

    iput p2, p1, Lo3/c;->g:I

    iput p2, p1, Lo3/c;->h:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lo3/c;->a(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid dynamic table size update "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lo3/c;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    const/16 p2, 0x10

    if-eq p3, p2, :cond_a

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    const/16 p2, 0xf

    invoke-virtual {p1, p3, p2}, Lo3/c;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lo3/c;->b(I)LQ4/j;

    move-result-object p2

    invoke-virtual {p1}, Lo3/c;->d()LQ4/j;

    move-result-object p1

    new-instance p3, Lo3/b;

    invoke-direct {p3, p2, p1}, Lo3/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    invoke-virtual {p1}, Lo3/c;->d()LQ4/j;

    move-result-object p2

    invoke-static {p2}, Lo3/e;->a(LQ4/j;)V

    invoke-virtual {p1}, Lo3/c;->d()LQ4/j;

    move-result-object p1

    new-instance p3, Lo3/b;

    invoke-direct {p3, p2, p1}, Lo3/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    return-object p1
.end method

.method public final f(Lm3/m;IBI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_c

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_1

    iget-object v4, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v4}, LQ4/s;->f()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v5, p3, 0x20

    if-eqz v5, :cond_2

    iget-object v5, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v5}, LQ4/s;->q()I

    invoke-virtual {v5}, LQ4/s;->f()B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v4}, Lo3/j;->b(IBS)I

    move-result p2

    invoke-virtual {p0, p2, v4, p3, p4}, Lo3/h;->e(ISBI)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p1, Lm3/m;->a:Lj3/G;

    invoke-virtual {p3}, Lj3/G;->s()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INBOUND"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HEADERS: streamId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " headers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " endStream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lj3/G;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/logging/Logger;

    iget-object p3, p3, Lj3/G;->c:Ljava/lang/Object;

    check-cast p3, Ljava/util/logging/Level;

    invoke-virtual {v5, p3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3
    iget-object p3, p1, Lm3/m;->d:Lm3/n;

    iget p3, p3, Lm3/n;->K:I

    const v4, 0x7fffffff

    if-eq p3, v4, :cond_6

    const-wide/16 v4, 0x0

    move p3, v1

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p3, v6, :cond_4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo3/b;

    iget-object v7, v6, Lo3/b;->a:LQ4/j;

    invoke-virtual {v7}, LQ4/j;->c()I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    iget-object v6, v6, Lo3/b;->b:LQ4/j;

    invoke-virtual {v6}, LQ4/j;->c()I

    move-result v6

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    iget-object v4, p1, Lm3/m;->d:Lm3/n;

    iget v4, v4, Lm3/n;->K:I

    if-le p3, v4, :cond_6

    sget-object v0, Lj3/r0;->k:Lj3/r0;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eqz v2, :cond_5

    const-string v5, "trailer"

    goto :goto_3

    :cond_5
    const-string v5, "header"

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Response "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " metadata larger than "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    :cond_6
    iget-object p3, p1, Lm3/m;->d:Lm3/n;

    iget-object p3, p3, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v4, p1, Lm3/m;->d:Lm3/n;

    iget-object v4, v4, Lm3/n;->n:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm3/j;

    if-nez v4, :cond_8

    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    invoke-virtual {p2, p4}, Lm3/n;->m(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    iget-object p2, p2, Lm3/n;->i:Lm3/d;

    sget-object v0, Lo3/a;->f:Lo3/a;

    invoke-virtual {p2, p4, v0}, Lm3/d;->f(ILo3/a;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    iget-object v0, v4, Lm3/j;->n:Lm3/i;

    iget-object v0, v0, Lm3/i;->I:Ly3/c;

    sget-object v0, Ly3/b;->a:Ly3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v4, Lm3/j;->n:Lm3/i;

    invoke-virtual {v0, p2, v2}, Lm3/i;->o(Ljava/util/ArrayList;Z)V

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    iget-object p2, p2, Lm3/n;->i:Lm3/d;

    sget-object v2, Lo3/a;->n:Lo3/a;

    invoke-virtual {p2, p4, v2}, Lm3/d;->f(ILo3/a;)V

    :cond_a
    iget-object p2, v4, Lm3/j;->n:Lm3/i;

    new-instance v2, Lj3/f0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v0, v1, v2}, Ll3/a;->g(Lj3/r0;ZLj3/f0;)V

    :goto_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_b

    iget-object p1, p1, Lm3/m;->d:Lm3/n;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Received header for unknown stream: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lm3/n;->f(Lm3/n;Ljava/lang/String;)V

    :cond_b
    return-void

    :goto_5
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_c
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final g(Lm3/m;IBI)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v0}, LQ4/s;->f()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v1}, LQ4/s;->q()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lo3/j;->b(IBS)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Lo3/h;->e(ISBI)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p1, Lm3/m;->a:Lj3/G;

    invoke-virtual {p3}, Lj3/G;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INBOUND"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PUSH_PROMISE: streamId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " promisedStreamId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p3, Lj3/G;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/logging/Logger;

    iget-object p3, p3, Lj3/G;->c:Ljava/lang/Object;

    check-cast p3, Ljava/util/logging/Level;

    invoke-virtual {v0, p3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    iget-object p2, p2, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p1, p1, Lm3/m;->d:Lm3/n;

    iget-object p1, p1, Lm3/n;->i:Lm3/d;

    sget-object p3, Lo3/a;->c:Lo3/a;

    invoke-virtual {p1, p4, p3}, Lm3/d;->f(ILo3/a;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final m(Lm3/m;II)V
    .locals 10

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p2, v2, :cond_8

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    iget-object v4, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v4}, LQ4/s;->q()I

    move-result v4

    invoke-static {}, Lo3/a;->values()[Lo3/a;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    iget v9, v8, Lo3/a;->a:I

    if-ne v9, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v3

    :goto_1
    if-eqz v8, :cond_6

    iget-object v3, p1, Lm3/m;->a:Lj3/G;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p3, v8}, Lj3/G;->y(IILo3/a;)V

    invoke-static {v8}, Lm3/n;->v(Lo3/a;)Lj3/r0;

    move-result-object v3

    const-string v5, "Rst Stream"

    invoke-virtual {v3, v5}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    iget-object v5, v3, Lj3/r0;->a:Lj3/q0;

    sget-object v6, Lj3/q0;->d:Lj3/q0;

    if-eq v5, v6, :cond_3

    sget-object v6, Lj3/q0;->l:Lj3/q0;

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :cond_3
    :goto_2
    iget-object v2, p1, Lm3/m;->d:Lm3/n;

    iget-object v7, v2, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v2, p1, Lm3/m;->d:Lm3/n;

    iget-object v2, v2, Lm3/n;->n:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/j;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lm3/j;->n:Lm3/i;

    iget-object v2, v2, Lm3/i;->I:Ly3/c;

    sget-object v2, Ly3/b;->a:Ly3/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lm3/m;->d:Lm3/n;

    sget-object v2, Lo3/a;->m:Lo3/a;

    if-ne v8, v2, :cond_4

    sget-object v2, Ll3/t;->b:Ll3/t;

    :goto_3
    move-object v5, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    sget-object v2, Ll3/t;->a:Ll3/t;

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    const/4 v8, 0x0

    move v1, p3

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lm3/n;->i(ILj3/r0;Ll3/t;ZLo3/a;Lj3/f0;)V

    :cond_5
    monitor-exit v7

    return-void

    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_7
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_8
    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method public final n(Lm3/m;IBI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_14

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_13

    new-instance p3, LG4/n;

    const/4 v2, 0x4

    invoke-direct {p3, v2}, LG4/n;-><init>(I)V

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x7

    if-ge v2, p2, :cond_6

    iget-object v5, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v5}, LQ4/s;->s()S

    move-result v5

    iget-object v6, p0, Lo3/h;->a:LQ4/s;

    invoke-virtual {v6}, LQ4/s;->q()I

    move-result v6

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/16 v3, 0x4000

    if-lt v6, v3, :cond_2

    const v3, 0xffffff

    if-gt v6, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    if-ltz v6, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_2
    if-eqz v6, :cond_5

    if-ne v6, p4, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_1
    :pswitch_3
    move v3, v5

    :goto_2
    :pswitch_4
    invoke-virtual {p3, v3, v6}, LG4/n;->f(II)V

    :goto_3
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    :cond_6
    iget-object p2, p1, Lm3/m;->a:Lj3/G;

    invoke-virtual {p2, p4, p3}, Lj3/G;->z(ILG4/n;)V

    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    iget-object v2, p2, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p3, v3}, LG4/n;->d(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p3, LG4/n;->b:Ljava/lang/Object;

    check-cast p2, [I

    aget p2, p2, v3

    iget-object v3, p1, Lm3/m;->d:Lm3/n;

    iput p2, v3, Lm3/n;->C:I

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_7
    :goto_4
    invoke-virtual {p3, v4}, LG4/n;->d(I)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p3, LG4/n;->b:Ljava/lang/Object;

    check-cast p2, [I

    aget p2, p2, v4

    iget-object v3, p1, Lm3/m;->d:Lm3/n;

    iget-object v3, v3, Lm3/n;->j:Lm3/w;

    if-ltz p2, :cond_9

    iget v4, v3, Lm3/w;->c:I

    sub-int v4, p2, v4

    iput p2, v3, Lm3/w;->c:I

    iget-object p2, v3, Lm3/w;->a:Lm3/n;

    invoke-virtual {p2}, Lm3/n;->j()[Lm3/v;

    move-result-object p2

    array-length v3, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_5
    if-ge v6, v3, :cond_8

    aget-object v7, p2, v6

    invoke-virtual {v7, v4}, Lm3/v;->a(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    if-lez v4, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid initial window size: "

    invoke-static {p2, p3}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    move v5, v1

    :cond_b
    :goto_6
    iget-boolean p2, p1, Lm3/m;->c:Z

    const/4 v3, 0x2

    if-eqz p2, :cond_c

    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    iget-object p2, p2, Lm3/n;->h:Lj0/d;

    iget-object v4, p2, Lj0/d;->d:Ljava/lang/Object;

    check-cast v4, Ll3/o0;

    iget-object v6, v4, Ll3/o0;->i:Lj3/i;

    const-string v7, "READY"

    invoke-virtual {v6, v3, v7}, Lj3/i;->e(ILjava/lang/String;)V

    new-instance v6, Ll3/m0;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v7}, Ll3/m0;-><init>(Lj0/d;I)V

    iget-object p2, v4, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {p2, v6}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p1, Lm3/m;->c:Z

    :cond_c
    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    iget-object p2, p2, Lm3/n;->i:Lm3/d;

    iget-object v4, p2, Lm3/d;->c:Lj3/G;

    invoke-virtual {v4}, Lj3/G;->s()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, " SETTINGS: ack=true"

    const-string v7, "OUTBOUND"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lj3/G;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/logging/Logger;

    iget-object v4, v4, Lj3/G;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/logging/Level;

    invoke-virtual {v7, v4, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :try_start_1
    iget-object v4, p2, Lm3/d;->b:Lm3/b;

    invoke-virtual {v4, p3}, Lm3/b;->b(LG4/n;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v4

    :try_start_2
    iget-object p2, p2, Lm3/d;->a:Lm3/n;

    invoke-virtual {p2, v4}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_7
    if-eqz v5, :cond_e

    iget-object p2, p1, Lm3/m;->d:Lm3/n;

    iget-object p2, p2, Lm3/n;->j:Lm3/w;

    invoke-virtual {p2}, Lm3/w;->c()V

    :cond_e
    iget-object p1, p1, Lm3/m;->d:Lm3/n;

    invoke-virtual {p1}, Lm3/n;->s()Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget p1, p3, LG4/n;->a:I

    and-int/lit8 p2, p1, 0x2

    const/4 v2, -0x1

    if-eqz p2, :cond_f

    iget-object p2, p3, LG4/n;->b:Ljava/lang/Object;

    check-cast p2, [I

    aget p2, p2, p4

    goto :goto_8

    :cond_f
    move p2, v2

    :goto_8
    if-ltz p2, :cond_12

    iget-object p2, p0, Lo3/h;->c:Lo3/c;

    and-int/2addr p1, v3

    if-eqz p1, :cond_10

    iget-object p1, p3, LG4/n;->b:Ljava/lang/Object;

    check-cast p1, [I

    aget v2, p1, p4

    :cond_10
    iput v2, p2, Lo3/c;->c:I

    iput v2, p2, Lo3/c;->d:I

    iget p1, p2, Lo3/c;->h:I

    if-ge v2, p1, :cond_12

    if-nez v2, :cond_11

    iget-object p1, p2, Lo3/c;->e:[Lo3/b;

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p2, Lo3/c;->e:[Lo3/b;

    array-length p1, p1

    sub-int/2addr p1, p4

    iput p1, p2, Lo3/c;->f:I

    iput v1, p2, Lo3/c;->g:I

    iput v1, p2, Lo3/c;->h:I

    goto :goto_9

    :cond_11
    sub-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lo3/c;->a(I)I

    :cond_12
    :goto_9
    return-void

    :goto_a
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_13
    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_14
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lo3/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
