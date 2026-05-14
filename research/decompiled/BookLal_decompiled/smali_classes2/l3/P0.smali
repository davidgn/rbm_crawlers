.class public final Ll3/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:LG3/b;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:Ll3/B1;

.field public final f:Ll3/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG3/b;

    const-string v1, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll3/P0;->g:LG3/b;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZII)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "timeout"

    invoke-static {v2, v1}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Ll3/P0;->a:Ljava/lang/Long;

    const-string v2, "waitForReady"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_15

    check-cast v3, Ljava/lang/Boolean;

    :goto_0
    iput-object v3, v0, Ll3/P0;->b:Ljava/lang/Boolean;

    const-string v2, "maxResponseMessageBytes"

    invoke-static {v2, v1}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Ll3/P0;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v7, "maxInboundMessageSize %s exceeds bounds"

    invoke-static {v6, v7, v2}, LZ2/l;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v2, "maxRequestMessageBytes"

    invoke-static {v2, v1}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Ll3/P0;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-string v7, "maxOutboundMessageSize %s exceeds bounds"

    invoke-static {v6, v7, v2}, LZ2/l;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    const-string v2, "retryPolicy"

    invoke-static {v2, v1}, Ll3/r0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const-string v6, "%s must not contain OK"

    const-wide/16 v7, 0x0

    const-string v9, "maxAttempts must be greater than 1: %s"

    const/4 v10, 0x2

    const-string v11, "maxAttempts cannot be empty"

    const-string v12, "maxAttempts"

    if-nez v2, :cond_6

    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_6
    invoke-static {v12, v2}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v11}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v10, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    invoke-static {v9, v13, v14}, LZ2/l;->d(Ljava/lang/String;IZ)V

    move/from16 v14, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    const-string v13, "initialBackoff"

    invoke-static {v13, v2}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "initialBackoff cannot be empty"

    invoke-static {v13, v14}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v16, v13, v7

    if-lez v16, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    const-string v4, "initialBackoffNanos must be greater than 0: %s"

    invoke-static {v3, v4, v13, v14}, LZ2/l;->g(ZLjava/lang/String;J)V

    const-string v3, "maxBackoff"

    invoke-static {v3, v2}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "maxBackoff cannot be empty"

    invoke-static {v3, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v16, v3, v7

    if-lez v16, :cond_9

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    :goto_6
    const-string v5, "maxBackoff must be greater than 0: %s"

    invoke-static {v10, v5, v3, v4}, LZ2/l;->g(ZLjava/lang/String;J)V

    const-string v5, "backoffMultiplier"

    invoke-static {v5, v2}, Ll3/r0;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v5

    const-string v10, "backoffMultiplier cannot be empty"

    invoke-static {v5, v10}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/16 v16, 0x0

    cmpl-double v10, v20, v16

    if-lez v10, :cond_a

    const/4 v10, 0x1

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    :goto_7
    const-string v7, "backoffMultiplier must be greater than 0: %s"

    invoke-static {v10, v7, v5}, LZ2/l;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "perAttemptRecvTimeout"

    invoke-static {v5, v2}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v16, 0x0

    cmp-long v7, v7, v16

    if-ltz v7, :cond_b

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v7, 0x1

    :goto_9
    const-string v8, "perAttemptRecvTimeout cannot be negative: %s"

    invoke-static {v7, v8, v5}, LZ2/l;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "retryableStatusCodes"

    invoke-static {v7, v2}, Ll3/J1;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_d

    const/4 v8, 0x1

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    :goto_a
    const-string v10, "%s is required in retry policy"

    invoke-static {v8, v10, v7}, Landroid/support/v4/media/session/a;->B(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Lj3/q0;->c:Lj3/q0;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    xor-int/2addr v8, v10

    invoke-static {v8, v6, v7}, Landroid/support/v4/media/session/a;->B(ZLjava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_f

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_b

    :cond_e
    const/4 v10, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v10, 0x1

    :goto_c
    const-string v7, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout"

    invoke-static {v10, v7}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance v7, Ll3/B1;

    move-wide/from16 v16, v13

    move-object v14, v7

    move-wide/from16 v18, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v2

    invoke-direct/range {v14 .. v23}, Ll3/B1;-><init>(IJJDLjava/lang/Long;Ljava/util/Set;)V

    :goto_d
    iput-object v7, v0, Ll3/P0;->e:Ll3/B1;

    if-eqz p2, :cond_10

    const-string v2, "hedgingPolicy"

    invoke-static {v2, v1}, Ll3/r0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_e

    :cond_10
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_11

    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    invoke-static {v12, v1}, Ll3/r0;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v11}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    const/4 v10, 0x1

    goto :goto_f

    :cond_12
    const/4 v10, 0x0

    :goto_f
    invoke-static {v9, v2, v10}, LZ2/l;->d(Ljava/lang/String;IZ)V

    move/from16 v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "hedgingDelay"

    invoke-static {v3, v1}, Ll3/r0;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "hedgingDelay cannot be empty"

    invoke-static {v3, v4}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-ltz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_10

    :cond_13
    const/4 v5, 0x0

    :goto_10
    const-string v7, "hedgingDelay must not be negative: %s"

    invoke-static {v5, v7, v3, v4}, LZ2/l;->g(ZLjava/lang/String;J)V

    new-instance v5, Ll3/d0;

    const-string v7, "nonFatalStatusCodes"

    invoke-static {v7, v1}, Ll3/J1;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_14

    const-class v1, Lj3/q0;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_11

    :cond_14
    sget-object v8, Lj3/q0;->c:Lj3/q0;

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-static {v8, v6, v7}, Landroid/support/v4/media/session/a;->B(ZLjava/lang/String;Ljava/lang/Object;)V

    :goto_11
    invoke-direct {v5, v2, v3, v4, v1}, Ll3/d0;-><init>(IJLjava/util/Set;)V

    move-object v4, v5

    :goto_12
    iput-object v4, v0, Ll3/P0;->f:Ll3/d0;

    return-void

    :cond_15
    new-instance v4, Ljava/lang/ClassCastException;

    const-string v5, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    filled-new-array {v3, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ll3/P0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ll3/P0;

    iget-object v0, p1, Ll3/P0;->a:Ljava/lang/Long;

    iget-object v2, p0, Ll3/P0;->a:Ljava/lang/Long;

    invoke-static {v2, v0}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/P0;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Ll3/P0;->b:Ljava/lang/Boolean;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/P0;->c:Ljava/lang/Integer;

    iget-object v2, p1, Ll3/P0;->c:Ljava/lang/Integer;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/P0;->d:Ljava/lang/Integer;

    iget-object v2, p1, Ll3/P0;->d:Ljava/lang/Integer;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/P0;->e:Ll3/B1;

    iget-object v2, p1, Ll3/P0;->e:Ll3/B1;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/P0;->f:Ll3/d0;

    iget-object p1, p1, Ll3/P0;->f:Ll3/d0;

    invoke-static {v0, p1}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v4, p0, Ll3/P0;->e:Ll3/B1;

    iget-object v5, p0, Ll3/P0;->f:Ll3/d0;

    iget-object v0, p0, Ll3/P0;->a:Ljava/lang/Long;

    iget-object v1, p0, Ll3/P0;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Ll3/P0;->c:Ljava/lang/Integer;

    iget-object v3, p0, Ll3/P0;->d:Ljava/lang/Integer;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "timeoutNanos"

    iget-object v2, p0, Ll3/P0;->a:Ljava/lang/Long;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "waitForReady"

    iget-object v2, p0, Ll3/P0;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maxInboundMessageSize"

    iget-object v2, p0, Ll3/P0;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maxOutboundMessageSize"

    iget-object v2, p0, Ll3/P0;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retryPolicy"

    iget-object v2, p0, Ll3/P0;->e:Ll3/B1;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hedgingPolicy"

    iget-object v2, p0, Ll3/P0;->f:Ll3/d0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
