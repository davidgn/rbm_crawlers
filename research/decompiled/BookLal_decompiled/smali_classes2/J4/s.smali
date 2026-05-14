.class public final LJ4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final a:LQ4/s;

.field public final b:LJ4/r;

.field public final c:LJ4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LJ4/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LJ4/s;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(LQ4/s;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/s;->a:LQ4/s;

    new-instance v0, LJ4/r;

    invoke-direct {v0, p1}, LJ4/r;-><init>(LQ4/s;)V

    iput-object v0, p0, LJ4/s;->b:LJ4/r;

    new-instance p1, LJ4/c;

    invoke-direct {p1, v0}, LJ4/c;-><init>(LJ4/r;)V

    iput-object p1, p0, LJ4/s;->c:LJ4/c;

    return-void
.end method


# virtual methods
.method public final b(ZLJ4/k;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v4, 0x1

    const-string v5, "handler"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, LJ4/s;->a:LQ4/s;

    const-wide/16 v7, 0x9

    invoke-virtual {v6, v7, v8}, LQ4/s;->v(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, v1, LJ4/s;->a:LQ4/s;

    invoke-static {v6}, LD4/c;->t(LQ4/s;)I

    move-result v6

    const/16 v7, 0x4000

    if-gt v6, v7, :cond_2e

    iget-object v8, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v8}, LQ4/s;->f()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    iget-object v9, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v9}, LQ4/s;->f()B

    move-result v9

    and-int/lit16 v10, v9, 0xff

    iget-object v11, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v11}, LQ4/s;->q()I

    move-result v11

    const v12, 0x7fffffff

    and-int/2addr v12, v11

    sget-object v13, LJ4/s;->d:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {v4, v12, v6, v8, v10}, LJ4/f;->a(ZIIII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x4

    if-eqz p1, :cond_3

    if-ne v8, v13, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a SETTINGS frame but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, LJ4/f;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v8, v4, :cond_2

    aget-object v3, v3, v8

    goto :goto_0

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%02x"

    invoke-static {v4, v3}, LD4/c;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/16 v14, 0xe

    const/16 v15, 0x8

    const/4 v7, 0x3

    const-wide/16 v2, 0x0

    packed-switch v8, :pswitch_data_0

    iget-object v0, v1, LJ4/s;->a:LQ4/s;

    int-to-long v2, v6

    invoke-virtual {v0, v2, v3}, LQ4/s;->w(J)V

    goto/16 :goto_b

    :pswitch_0
    if-ne v6, v13, :cond_7

    iget-object v5, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v5}, LQ4/s;->q()I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-eqz v2, :cond_6

    if-nez v12, :cond_4

    iget-object v2, v0, LJ4/k;->b:LJ4/o;

    monitor-enter v2

    :try_start_1
    iget-wide v7, v2, LJ4/o;->z:J

    add-long/2addr v7, v5

    iput-wide v7, v2, LJ4/o;->z:J

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    iget-object v0, v0, LJ4/k;->b:LJ4/o;

    invoke-virtual {v0, v12}, LJ4/o;->c(I)LJ4/w;

    move-result-object v3

    if-eqz v3, :cond_2d

    monitor-enter v3

    :try_start_2
    iget-wide v7, v3, LJ4/w;->f:J

    add-long/2addr v7, v5

    iput-wide v7, v3, LJ4/w;->f:J

    if-lez v2, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit v3

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "windowSizeIncrement was 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v6, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-lt v6, v15, :cond_e

    if-nez v12, :cond_d

    iget-object v2, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v2}, LQ4/s;->q()I

    move-result v2

    iget-object v3, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v3}, LQ4/s;->q()I

    move-result v3

    sub-int/2addr v6, v15

    invoke-static {v14}, Ls/e;->e(I)[I

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_9

    aget v10, v7, v9

    invoke-static {v10}, Ls/e;->d(I)I

    move-result v11

    if-ne v11, v3, :cond_8

    goto :goto_3

    :cond_8
    add-int/2addr v9, v4

    goto :goto_2

    :cond_9
    move v10, v5

    :goto_3
    if-eqz v10, :cond_c

    sget-object v3, LQ4/j;->d:LQ4/j;

    if-lez v6, :cond_a

    iget-object v3, v1, LJ4/s;->a:LQ4/s;

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, LQ4/s;->g(J)LQ4/j;

    move-result-object v3

    :cond_a
    const-string v6, "debugData"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, LQ4/j;->c()I

    iget-object v3, v0, LJ4/k;->b:LJ4/o;

    monitor-enter v3

    :try_start_3
    iget-object v6, v3, LJ4/o;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v5, [LJ4/w;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    iput-boolean v4, v3, LJ4/o;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v3

    check-cast v6, [LJ4/w;

    array-length v3, v6

    :goto_4
    if-ge v5, v3, :cond_2d

    aget-object v7, v6, v5

    iget v8, v7, LJ4/w;->a:I

    if-le v8, v2, :cond_b

    invoke-virtual {v7}, LJ4/w;->g()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7, v15}, LJ4/w;->j(I)V

    iget-object v8, v0, LJ4/k;->b:LJ4/o;

    iget v7, v7, LJ4/w;->a:I

    invoke-virtual {v8, v7}, LJ4/o;->e(I)LJ4/w;

    :cond_b
    add-int/2addr v5, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v3, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY length < 8: "

    invoke-static {v6, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-ne v6, v15, :cond_14

    if-nez v12, :cond_13

    iget-object v5, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v5}, LQ4/s;->q()I

    move-result v13

    iget-object v5, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v5}, LQ4/s;->q()I

    move-result v14

    and-int/lit8 v5, v9, 0x1

    if-eqz v5, :cond_12

    iget-object v2, v0, LJ4/k;->b:LJ4/o;

    monitor-enter v2

    const-wide/16 v5, 0x1

    if-eq v13, v4, :cond_11

    const/4 v0, 0x2

    if-eq v13, v0, :cond_10

    if-eq v13, v7, :cond_f

    goto :goto_5

    :cond_f
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_10
    iget-wide v7, v2, LJ4/o;->s:J

    add-long/2addr v7, v5

    iput-wide v7, v2, LJ4/o;->s:J

    goto :goto_5

    :cond_11
    iget-wide v7, v2, LJ4/o;->q:J

    add-long/2addr v7, v5

    iput-wide v7, v2, LJ4/o;->q:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_5
    monitor-exit v2

    goto/16 :goto_b

    :goto_6
    monitor-exit v2

    throw v0

    :cond_12
    iget-object v5, v0, LJ4/k;->b:LJ4/o;

    iget-object v5, v5, LJ4/o;->m:LF4/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, LJ4/k;->b:LJ4/o;

    iget-object v7, v7, LJ4/o;->c:Ljava/lang/String;

    const-string v8, " ping"

    invoke-static {v6, v7, v8}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, LJ4/k;->b:LJ4/o;

    new-instance v0, LJ4/j;

    const/4 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, LJ4/j;-><init>(Ljava/lang/String;LJ4/o;III)V

    invoke-virtual {v5, v0, v2, v3}, LF4/b;->c(LF4/a;J)V

    goto/16 :goto_b

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PING streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PING length != 8: "

    invoke-static {v6, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-virtual {v1, v0, v6, v10, v12}, LJ4/s;->g(LJ4/k;III)V

    goto/16 :goto_b

    :pswitch_4
    if-nez v12, :cond_23

    and-int/lit8 v8, v9, 0x1

    if-eqz v8, :cond_16

    if-nez v6, :cond_15

    goto/16 :goto_b

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v8, 0x6

    rem-int/lit8 v9, v6, 0x6

    if-nez v9, :cond_22

    new-instance v9, LJ4/B;

    invoke-direct {v9}, LJ4/B;-><init>()V

    invoke-static {v5, v6}, LW2/B;->A(II)Lp4/c;

    move-result-object v5

    invoke-static {v5, v8}, LW2/B;->z(Lp4/c;I)Lp4/a;

    move-result-object v5

    iget v6, v5, Lp4/a;->a:I

    iget v8, v5, Lp4/a;->b:I

    iget v5, v5, Lp4/a;->c:I

    if-lez v5, :cond_17

    if-le v6, v8, :cond_18

    :cond_17
    if-gez v5, :cond_21

    if-gt v8, v6, :cond_21

    :cond_18
    :goto_7
    iget-object v10, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v10}, LQ4/s;->s()S

    move-result v11

    sget-object v12, LD4/c;->a:[B

    const v12, 0xffff

    and-int/2addr v11, v12

    invoke-virtual {v10}, LQ4/s;->q()I

    move-result v10

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1e

    if-eq v11, v7, :cond_1d

    if-eq v11, v13, :cond_1b

    const/4 v12, 0x5

    if-eq v11, v12, :cond_19

    const/16 v12, 0x4000

    goto :goto_8

    :cond_19
    const/16 v12, 0x4000

    if-lt v10, v12, :cond_1a

    const v14, 0xffffff

    if-gt v10, v14, :cond_1a

    goto :goto_8

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v10, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/16 v12, 0x4000

    if-ltz v10, :cond_1c

    const/4 v11, 0x7

    goto :goto_8

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/16 v12, 0x4000

    move v11, v13

    goto :goto_8

    :cond_1e
    const/16 v12, 0x4000

    if-eqz v10, :cond_20

    if-ne v10, v4, :cond_1f

    goto :goto_8

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_8
    invoke-virtual {v9, v11, v10}, LJ4/B;->c(II)V

    if-eq v6, v8, :cond_21

    add-int/2addr v6, v5

    goto :goto_7

    :cond_21
    iget-object v5, v0, LJ4/k;->b:LJ4/o;

    iget-object v6, v5, LJ4/o;->m:LF4/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, LJ4/o;->c:Ljava/lang/String;

    const-string v8, " applyAndAckSettings"

    invoke-static {v7, v5, v8}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, LJ4/i;

    const/4 v8, 0x2

    invoke-direct {v7, v5, v0, v9, v8}, LJ4/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7, v2, v3}, LF4/b;->c(LF4/a;J)V

    goto/16 :goto_b

    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v6, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-ne v6, v13, :cond_2a

    if-eqz v12, :cond_29

    iget-object v6, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v6}, LQ4/s;->q()I

    move-result v6

    invoke-static {v14}, Ls/e;->e(I)[I

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_9
    if-ge v9, v8, :cond_25

    aget v10, v7, v9

    invoke-static {v10}, Ls/e;->d(I)I

    move-result v13

    if-ne v13, v6, :cond_24

    goto :goto_a

    :cond_24
    add-int/2addr v9, v4

    goto :goto_9

    :cond_25
    move v10, v5

    :goto_a
    if-eqz v10, :cond_28

    iget-object v0, v0, LJ4/k;->b:LJ4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_26

    and-int/lit8 v6, v11, 0x1

    if-nez v6, :cond_26

    move v5, v4

    :cond_26
    if-eqz v5, :cond_27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, LJ4/o;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] onReset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v5, LJ4/j;

    const/16 v18, 0x1

    move-object v13, v5

    move-object v15, v0

    move/from16 v16, v12

    move/from16 v17, v10

    invoke-direct/range {v13 .. v18}, LJ4/j;-><init>(Ljava/lang/String;LJ4/o;III)V

    iget-object v0, v0, LJ4/o;->n:LF4/b;

    invoke-virtual {v0, v5, v2, v3}, LF4/b;->c(LF4/a;J)V

    goto :goto_b

    :cond_27
    invoke-virtual {v0, v12}, LJ4/o;->e(I)LJ4/w;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0, v10}, LJ4/w;->j(I)V

    goto :goto_b

    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v6, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM length: "

    const-string v3, " != 4"

    invoke-static {v6, v2, v3}, LC/a;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    const/4 v0, 0x5

    if-ne v6, v0, :cond_2c

    if-eqz v12, :cond_2b

    iget-object v0, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v0}, LQ4/s;->q()I

    invoke-virtual {v0}, LQ4/s;->f()B

    goto :goto_b

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY length: "

    const-string v3, " != 5"

    invoke-static {v6, v2, v3}, LC/a;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    invoke-virtual {v1, v0, v6, v10, v12}, LJ4/s;->f(LJ4/k;III)V

    goto :goto_b

    :pswitch_8
    invoke-virtual {v1, v0, v6, v10, v12}, LJ4/s;->c(LJ4/k;III)V

    :cond_2d
    :goto_b
    return v4

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR: "

    invoke-static {v6, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    return v5

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

.method public final c(LJ4/k;III)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v5, p4

    const/4 v3, 0x1

    if-eqz v5, :cond_f

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_e

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_1

    iget-object v4, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual {v4}, LQ4/s;->f()B

    move-result v4

    sget-object v7, LD4/c;->a:[B

    and-int/lit16 v4, v4, 0xff

    move v9, v4

    move/from16 v4, p2

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    const/4 v9, 0x0

    :goto_1
    invoke-static {v4, v2, v9}, LJ4/q;->a(III)I

    move-result v7

    iget-object v2, v1, LJ4/s;->a:LQ4/s;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "source"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LJ4/k;->b:LJ4/o;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_2

    and-int/lit8 v4, v5, 0x1

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-wide/16 v10, 0x0

    if-eqz v4, :cond_3

    iget-object v0, v0, LJ4/k;->b:LJ4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LQ4/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    int-to-long v3, v7

    invoke-virtual {v2, v3, v4}, LQ4/s;->v(J)V

    invoke-virtual {v2, v6, v3, v4}, LQ4/s;->l(LQ4/g;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, LJ4/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v12, LJ4/l;

    move-object v2, v12

    move-object v4, v0

    move/from16 v5, p4

    invoke-direct/range {v2 .. v8}, LJ4/l;-><init>(Ljava/lang/String;LJ4/o;ILQ4/g;IZ)V

    iget-object v0, v0, LJ4/o;->n:LF4/b;

    invoke-virtual {v0, v12, v10, v11}, LF4/b;->c(LF4/a;J)V

    goto/16 :goto_9

    :cond_3
    iget-object v4, v0, LJ4/k;->b:LJ4/o;

    invoke-virtual {v4, v5}, LJ4/o;->c(I)LJ4/w;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v3, v0, LJ4/k;->b:LJ4/o;

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v4}, LJ4/o;->n(II)V

    iget-object v0, v0, LJ4/k;->b:LJ4/o;

    int-to-long v3, v7

    invoke-virtual {v0, v3, v4}, LJ4/o;->g(J)V

    invoke-virtual {v2, v3, v4}, LQ4/s;->w(J)V

    goto/16 :goto_9

    :cond_4
    sget-object v0, LD4/c;->a:[B

    iget-object v0, v4, LJ4/w;->i:LJ4/u;

    int-to-long v12, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v14, v12

    :goto_3
    cmp-long v5, v14, v10

    if-lez v5, :cond_c

    iget-object v5, v0, LJ4/u;->f:LJ4/w;

    monitor-enter v5

    :try_start_0
    iget-boolean v7, v0, LJ4/u;->b:Z

    iget-object v6, v0, LJ4/u;->d:LQ4/g;

    move-object/from16 p2, v4

    iget-wide v3, v6, LQ4/g;->b:J

    add-long/2addr v3, v14

    iget-wide v10, v0, LJ4/u;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v3, v3, v10

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    monitor-exit v5

    if-eqz v3, :cond_6

    invoke-virtual {v2, v14, v15}, LQ4/s;->w(J)V

    iget-object v0, v0, LJ4/u;->f:LJ4/w;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, LJ4/w;->e(I)V

    goto :goto_8

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v2, v14, v15}, LQ4/s;->w(J)V

    goto :goto_8

    :cond_7
    iget-object v3, v0, LJ4/u;->c:LQ4/g;

    invoke-virtual {v2, v3, v14, v15}, LQ4/s;->l(LQ4/g;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_b

    sub-long/2addr v14, v3

    iget-object v3, v0, LJ4/u;->f:LJ4/w;

    monitor-enter v3

    :try_start_1
    iget-boolean v4, v0, LJ4/u;->e:Z

    if-eqz v4, :cond_8

    iget-object v4, v0, LJ4/u;->c:LQ4/g;

    invoke-virtual {v4}, LQ4/g;->b()V

    const-wide/16 v10, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_8
    iget-object v4, v0, LJ4/u;->d:LQ4/g;

    iget-wide v5, v4, LQ4/g;->b:J

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    iget-object v6, v0, LJ4/u;->c:LQ4/g;

    invoke-virtual {v4, v6}, LQ4/g;->D(LQ4/y;)V

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_6
    monitor-exit v3

    move-object/from16 v4, p2

    const/4 v3, 0x1

    goto :goto_3

    :goto_7
    monitor-exit v3

    throw v0

    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_c
    move-object/from16 p2, v4

    invoke-virtual {v0, v12, v13}, LJ4/u;->b(J)V

    :goto_8
    if-eqz v8, :cond_d

    sget-object v0, LD4/c;->b:LC4/w;

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, LJ4/w;->i(LC4/w;Z)V

    :cond_d
    :goto_9
    iget-object v0, v1, LJ4/s;->a:LQ4/s;

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, LQ4/s;->w(J)V

    return-void

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, LJ4/s;->a:LQ4/s;

    invoke-virtual {v0}, LQ4/s;->close()V

    return-void
.end method

.method public final e(IIII)Ljava/util/List;
    .locals 5

    const/16 v0, 0x20

    const/16 v1, 0x40

    const/16 v2, 0x80

    iget-object v3, p0, LJ4/s;->b:LJ4/r;

    iput p1, v3, LJ4/r;->e:I

    iput p1, v3, LJ4/r;->b:I

    iput p2, v3, LJ4/r;->f:I

    iput p3, v3, LJ4/r;->c:I

    iput p4, v3, LJ4/r;->d:I

    :cond_0
    :goto_0
    iget-object p1, p0, LJ4/s;->c:LJ4/c;

    iget-object p2, p1, LJ4/c;->c:LQ4/s;

    invoke-virtual {p2}, LQ4/s;->b()Z

    move-result p3

    iget-object p4, p1, LJ4/c;->b:Ljava/util/ArrayList;

    if-nez p3, :cond_c

    invoke-virtual {p2}, LQ4/s;->f()B

    move-result p2

    sget-object p3, LD4/c;->a:[B

    and-int/lit16 p3, p2, 0xff

    if-eq p3, v2, :cond_b

    and-int/lit16 v3, p2, 0x80

    if-ne v3, v2, :cond_3

    const/16 p2, 0x7f

    invoke-virtual {p1, p3, p2}, LJ4/c;->e(II)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    if-ltz p3, :cond_1

    sget-object v3, LJ4/e;->a:[LJ4/b;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p3, v4, :cond_1

    aget-object p1, v3, p3

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v3, LJ4/e;->a:[LJ4/b;

    array-length v3, v3

    sub-int/2addr p3, v3

    iget v3, p1, LJ4/c;->e:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p3

    if-ltz v3, :cond_2

    iget-object p1, p1, LJ4/c;->d:[LJ4/b;

    array-length p3, p1

    if-ge v3, p3, :cond_2

    aget-object p1, p1, v3

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

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
    if-ne p3, v1, :cond_4

    sget-object p2, LJ4/e;->a:[LJ4/b;

    invoke-virtual {p1}, LJ4/c;->d()LQ4/j;

    move-result-object p2

    invoke-static {p2}, LJ4/e;->a(LQ4/j;)V

    invoke-virtual {p1}, LJ4/c;->d()LQ4/j;

    move-result-object p3

    new-instance p4, LJ4/b;

    invoke-direct {p4, p2, p3}, LJ4/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p1, p4}, LJ4/c;->c(LJ4/b;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v3, p2, 0x40

    if-ne v3, v1, :cond_5

    const/16 p2, 0x3f

    invoke-virtual {p1, p3, p2}, LJ4/c;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, LJ4/c;->b(I)LQ4/j;

    move-result-object p2

    invoke-virtual {p1}, LJ4/c;->d()LQ4/j;

    move-result-object p3

    new-instance p4, LJ4/b;

    invoke-direct {p4, p2, p3}, LJ4/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p1, p4}, LJ4/c;->c(LJ4/b;)V

    goto/16 :goto_0

    :cond_5
    and-int/2addr p2, v0

    if-ne p2, v0, :cond_8

    const/16 p2, 0x1f

    invoke-virtual {p1, p3, p2}, LJ4/c;->e(II)I

    move-result p2

    iput p2, p1, LJ4/c;->a:I

    if-ltz p2, :cond_7

    const/16 p3, 0x1000

    if-gt p2, p3, :cond_7

    iget p3, p1, LJ4/c;->g:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_6

    iget-object p2, p1, LJ4/c;->d:[LJ4/b;

    array-length p3, p2

    const/4 p4, 0x0

    invoke-static {p2, p4, p3}, LZ3/f;->G([Ljava/lang/Object;II)V

    iget-object p2, p1, LJ4/c;->d:[LJ4/b;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, LJ4/c;->e:I

    iput p4, p1, LJ4/c;->f:I

    iput p4, p1, LJ4/c;->g:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, LJ4/c;->a(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid dynamic table size update "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, LJ4/c;->a:I

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

    invoke-virtual {p1, p3, p2}, LJ4/c;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, LJ4/c;->b(I)LQ4/j;

    move-result-object p2

    invoke-virtual {p1}, LJ4/c;->d()LQ4/j;

    move-result-object p1

    new-instance p3, LJ4/b;

    invoke-direct {p3, p2, p1}, LJ4/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p2, LJ4/e;->a:[LJ4/b;

    invoke-virtual {p1}, LJ4/c;->d()LQ4/j;

    move-result-object p2

    invoke-static {p2}, LJ4/e;->a(LQ4/j;)V

    invoke-virtual {p1}, LJ4/c;->d()LQ4/j;

    move-result-object p1

    new-instance p3, LJ4/b;

    invoke-direct {p3, p2, p1}, LJ4/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-static {p4}, LZ3/g;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    return-object p1
.end method

.method public final f(LJ4/k;III)V
    .locals 10

    const/4 v0, 0x1

    if-eqz p4, :cond_9

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, LJ4/s;->a:LQ4/s;

    invoke-virtual {v3}, LQ4/s;->f()B

    move-result v3

    sget-object v4, LD4/c;->a:[B

    and-int/lit16 v3, v3, 0xff

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, p3, 0x20

    if-eqz v4, :cond_2

    iget-object v4, p0, LJ4/s;->a:LQ4/s;

    invoke-virtual {v4}, LQ4/s;->q()I

    invoke-virtual {v4}, LQ4/s;->f()B

    sget-object v4, LD4/c;->a:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v3}, LJ4/q;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v3, p3, p4}, LJ4/s;->e(IIII)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, LJ4/k;->b:LJ4/o;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_3

    and-int/lit8 p2, p4, 0x1

    if-nez p2, :cond_3

    move v2, v0

    :cond_3
    const-wide/16 p2, 0x0

    const/16 v9, 0x5b

    if-eqz v2, :cond_4

    iget-object p1, p1, LJ4/k;->b:LJ4/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, LJ4/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, LJ4/m;

    move-object v3, v0

    move-object v5, p1

    move v6, p4

    move v8, v1

    invoke-direct/range {v3 .. v8}, LJ4/m;-><init>(Ljava/lang/String;LJ4/o;ILjava/util/List;Z)V

    iget-object p1, p1, LJ4/o;->n:LF4/b;

    invoke-virtual {p1, v0, p2, p3}, LF4/b;->c(LF4/a;J)V

    goto/16 :goto_2

    :cond_4
    iget-object p1, p1, LJ4/k;->b:LJ4/o;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p4}, LJ4/o;->c(I)LJ4/w;

    move-result-object v2

    if-nez v2, :cond_8

    iget-boolean v2, p1, LJ4/o;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    monitor-exit p1

    goto :goto_2

    :cond_5
    :try_start_1
    iget v2, p1, LJ4/o;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p4, v2, :cond_6

    monitor-exit p1

    goto :goto_2

    :cond_6
    :try_start_2
    rem-int/lit8 v2, p4, 0x2

    iget v3, p1, LJ4/o;->e:I

    rem-int/lit8 v3, v3, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v3, :cond_7

    monitor-exit p1

    goto :goto_2

    :cond_7
    :try_start_3
    invoke-static {v7}, LD4/c;->v(Ljava/util/List;)LC4/w;

    move-result-object v8

    new-instance v2, LJ4/w;

    const/4 v6, 0x0

    move-object v3, v2

    move v4, p4

    move-object v5, p1

    move v7, v1

    invoke-direct/range {v3 .. v8}, LJ4/w;-><init>(ILJ4/o;ZZLC4/w;)V

    iput p4, p1, LJ4/o;->d:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p1, LJ4/o;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, LJ4/o;->l:LF4/c;

    invoke-virtual {v1}, LF4/c;->e()LF4/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, LJ4/o;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] onStream"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v3, LJ4/i;

    invoke-direct {v3, p4, p1, v2, v0}, LJ4/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3, p2, p3}, LF4/b;->c(LF4/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_8
    monitor-exit p1

    invoke-static {v7}, LD4/c;->v(Ljava/util/List;)LC4/w;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, LJ4/w;->i(LC4/w;Z)V

    :goto_2
    return-void

    :goto_3
    monitor-exit p1

    throw p2

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LJ4/k;III)V
    .locals 3

    if-eqz p4, :cond_2

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ4/s;->a:LQ4/s;

    invoke-virtual {v0}, LQ4/s;->f()B

    move-result v0

    sget-object v1, LD4/c;->a:[B

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LJ4/s;->a:LQ4/s;

    invoke-virtual {v1}, LQ4/s;->q()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, LJ4/q;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, LJ4/s;->e(IIII)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LJ4/k;->b:LJ4/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p1

    :try_start_0
    iget-object p3, p1, LJ4/o;->D:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p2}, LJ4/o;->n(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object p3, p1, LJ4/o;->D:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    iget-object p3, p1, LJ4/o;->n:LF4/b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, LJ4/o;->c:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] onRequest"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v0, LJ4/m;

    invoke-direct {v0, p4, p1, v1, p2}, LJ4/m;-><init>(Ljava/lang/String;LJ4/o;ILjava/util/List;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p3, v0, p1, p2}, LF4/b;->c(LF4/a;J)V

    :goto_1
    return-void

    :goto_2
    monitor-exit p1

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
