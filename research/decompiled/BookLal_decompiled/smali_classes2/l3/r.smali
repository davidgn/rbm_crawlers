.class public final Ll3/r;
.super Lj3/k;
.source "SourceFile"


# static fields
.field public static final q:Ljava/util/logging/Logger;

.field public static final r:D


# instance fields
.field public final a:Lj3/h0;

.field public final b:Ly3/c;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Z

.field public final e:LR0/i;

.field public final f:Lj3/u;

.field public volatile g:Ljava/util/concurrent/ScheduledFuture;

.field public final h:Z

.field public i:Lj3/g;

.field public j:Ll3/s;

.field public volatile k:Z

.field public l:Z

.field public m:Z

.field public final n:Lj1/a;

.field public final o:Ljava/util/concurrent/ScheduledExecutorService;

.field public p:Lj3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ll3/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/r;->q:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    sput-wide v0, Ll3/r;->r:D

    return-void
.end method

.method public constructor <init>(Lj3/h0;Ljava/util/concurrent/Executor;Lj3/g;Lj1/a;Ljava/util/concurrent/ScheduledExecutorService;LR0/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj3/x;->d:Lj3/x;

    iput-object v0, p0, Ll3/r;->p:Lj3/x;

    sget-object v0, Lj3/p;->b:Lj3/p;

    iput-object p1, p0, Ll3/r;->a:Lj3/h0;

    iget-object v0, p1, Lj3/h0;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    sget-object v0, Ly3/b;->a:Ly3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ly3/a;->a:Ly3/c;

    iput-object v0, p0, Ll3/r;->b:Ly3/c;

    sget-object v0, LN2/n;->a:LN2/n;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Ll3/D1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll3/r;->c:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Ll3/r;->d:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ll3/G1;

    invoke-direct {v0, p2}, Ll3/G1;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Ll3/r;->c:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Ll3/r;->d:Z

    :goto_0
    iput-object p6, p0, Ll3/r;->e:LR0/i;

    invoke-static {}, Lj3/u;->b()Lj3/u;

    move-result-object p2

    iput-object p2, p0, Ll3/r;->f:Lj3/u;

    sget-object p2, Lj3/g0;->a:Lj3/g0;

    iget-object p1, p1, Lj3/h0;->a:Lj3/g0;

    if-eq p1, p2, :cond_1

    sget-object p2, Lj3/g0;->b:Lj3/g0;

    if-ne p1, p2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Ll3/r;->h:Z

    iput-object p3, p0, Ll3/r;->i:Lj3/g;

    iput-object p4, p0, Ll3/r;->n:Lj1/a;

    iput-object p5, p0, Ll3/r;->o:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Cancelling without a message or cause is suboptimal"

    sget-object v2, Ll3/r;->q:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, Ll3/r;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/r;->l:Z

    :try_start_0
    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    if-eqz v0, :cond_4

    sget-object v0, Lj3/r0;->f:Lj3/r0;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Ll3/r;->j:Ll3/s;

    invoke-interface {p2, p1}, Ll3/s;->d(Lj3/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {p0}, Ll3/r;->b()V

    return-void

    :goto_1
    invoke-virtual {p0}, Ll3/r;->b()V

    throw p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ll3/r;->f:Lj3/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ll3/r;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/r;->l:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/r;->m:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    instance-of v1, v0, Ll3/B0;

    if-eqz v1, :cond_1

    check-cast v0, Ll3/B0;

    invoke-virtual {v0, p1}, Ll3/B0;->y(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Ll3/r;->a:Lj3/h0;

    invoke-virtual {v1, p1}, Lj3/h0;->d(Ljava/lang/Object;)Lq3/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/O1;->f(Lq3/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean p1, p0, Ll3/r;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ll3/r;->j:Ll3/s;

    invoke-interface {p1}, Ll3/O1;->flush()V

    :cond_2
    return-void

    :goto_2
    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    sget-object v1, Lj3/r0;->f:Lj3/r0;

    const-string v2, "Client sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/s;->d(Lj3/r0;)V

    throw p1

    :goto_3
    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    sget-object v1, Lj3/r0;->f:Lj3/r0;

    invoke-virtual {v1, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    const-string v1, "Failed to stream message"

    invoke-virtual {p1, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/s;->d(Lj3/r0;)V

    return-void
.end method

.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Ly3/b;->b()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ll3/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Ly3/b;->d()V

    throw p1
.end method

.method public final d(Lj3/j;Lj3/f0;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    iget-object v2, v1, Ll3/r;->j:Ll3/s;

    const/4 v11, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v11

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "Already started"

    invoke-static {v2, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v2, v1, Ll3/r;->l:Z

    xor-int/2addr v2, v11

    const-string v4, "call was cancelled"

    invoke-static {v2, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    const-string v2, "observer"

    invoke-static {v0, v2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "headers"

    invoke-static {v5, v2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Ll3/r;->f:Lj3/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    sget-object v4, Ll3/P0;->g:LG3/b;

    invoke-virtual {v2, v4}, Lj3/g;->a(LG3/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/P0;

    const-wide/16 v6, 0x0

    if-nez v2, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v8, v2, Ll3/P0;->a:Ljava/lang/Long;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v10, :cond_4

    new-instance v12, Lj3/v;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-direct {v12, v8, v9}, Lj3/v;-><init>(J)V

    iget-object v8, v1, Ll3/r;->i:Lj3/g;

    iget-object v9, v8, Lj3/g;->a:Lj3/v;

    if-eqz v9, :cond_3

    iget-object v10, v9, Lj3/v;->a:Lj3/n;

    iget-object v13, v12, Lj3/v;->a:Lj3/n;

    if-ne v13, v10, :cond_2

    iget-wide v13, v12, Lj3/v;->b:J

    iget-wide v9, v9, Lj3/v;->b:J

    sub-long/2addr v13, v9

    cmp-long v9, v13, v6

    if-gez v9, :cond_5

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tickers ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lj3/v;->a:Lj3/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") don\'t match. Custom Ticker should only be used in tests!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v8

    iput-object v12, v8, Lj3/f;->a:Lj3/v;

    new-instance v9, Lj3/g;

    invoke-direct {v9, v8}, Lj3/g;-><init>(Lj3/f;)V

    iput-object v9, v1, Ll3/r;->i:Lj3/g;

    goto :goto_2

    :cond_4
    sget-object v0, Lj3/v;->d:Lj3/n;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "units"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget-object v8, v2, Ll3/P0;->b:Ljava/lang/Boolean;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Ll3/r;->i:Lj3/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v8, Lj3/f;->f:Ljava/lang/Boolean;

    new-instance v9, Lj3/g;

    invoke-direct {v9, v8}, Lj3/g;-><init>(Lj3/f;)V

    goto :goto_3

    :cond_6
    iget-object v8, v1, Ll3/r;->i:Lj3/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, v8, Lj3/f;->f:Ljava/lang/Boolean;

    new-instance v9, Lj3/g;

    invoke-direct {v9, v8}, Lj3/g;-><init>(Lj3/f;)V

    :goto_3
    iput-object v9, v1, Ll3/r;->i:Lj3/g;

    :cond_7
    iget-object v8, v2, Ll3/P0;->c:Ljava/lang/Integer;

    const-string v9, "invalid maxsize %s"

    if-eqz v8, :cond_b

    iget-object v10, v1, Ll3/r;->i:Lj3/g;

    iget-object v12, v10, Lj3/g;->g:Ljava/lang/Integer;

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ltz v8, :cond_8

    move v12, v11

    goto :goto_4

    :cond_8
    move v12, v3

    :goto_4
    invoke-static {v9, v8, v12}, LZ2/l;->d(Ljava/lang/String;IZ)V

    invoke-static {v10}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v10, Lj3/f;->g:Ljava/lang/Integer;

    new-instance v8, Lj3/g;

    invoke-direct {v8, v10}, Lj3/g;-><init>(Lj3/f;)V

    iput-object v8, v1, Ll3/r;->i:Lj3/g;

    goto :goto_6

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ltz v12, :cond_a

    move v13, v11

    goto :goto_5

    :cond_a
    move v13, v3

    :goto_5
    invoke-static {v9, v12, v13}, LZ2/l;->d(Ljava/lang/String;IZ)V

    invoke-static {v10}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v10

    iput-object v8, v10, Lj3/f;->g:Ljava/lang/Integer;

    new-instance v8, Lj3/g;

    invoke-direct {v8, v10}, Lj3/g;-><init>(Lj3/f;)V

    iput-object v8, v1, Ll3/r;->i:Lj3/g;

    :cond_b
    :goto_6
    iget-object v2, v2, Ll3/P0;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    iget-object v8, v1, Ll3/r;->i:Lj3/g;

    iget-object v10, v8, Lj3/g;->h:Ljava/lang/Integer;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ltz v2, :cond_c

    move v10, v11

    goto :goto_7

    :cond_c
    move v10, v3

    :goto_7
    invoke-static {v9, v2, v10}, LZ2/l;->d(Ljava/lang/String;IZ)V

    invoke-static {v8}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lj3/f;->h:Ljava/lang/Integer;

    new-instance v2, Lj3/g;

    invoke-direct {v2, v8}, Lj3/g;-><init>(Lj3/f;)V

    iput-object v2, v1, Ll3/r;->i:Lj3/g;

    goto :goto_9

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_e

    move v12, v11

    goto :goto_8

    :cond_e
    move v12, v3

    :goto_8
    invoke-static {v9, v10, v12}, LZ2/l;->d(Ljava/lang/String;IZ)V

    invoke-static {v8}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v8

    iput-object v2, v8, Lj3/f;->h:Ljava/lang/Integer;

    new-instance v2, Lj3/g;

    invoke-direct {v2, v8}, Lj3/g;-><init>(Lj3/f;)V

    iput-object v2, v1, Ll3/r;->i:Lj3/g;

    :cond_f
    :goto_9
    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lj3/n;->b:Lj3/n;

    iget-object v2, v1, Ll3/r;->p:Lj3/x;

    sget-object v8, Ll3/b0;->h:Lj3/a0;

    invoke-virtual {v5, v8}, Lj3/f0;->a(Lj3/c0;)V

    sget-object v8, Ll3/b0;->d:Lj3/a0;

    invoke-virtual {v5, v8}, Lj3/f0;->a(Lj3/c0;)V

    sget-object v8, Ll3/b0;->e:Lj3/d0;

    invoke-virtual {v5, v8}, Lj3/f0;->a(Lj3/c0;)V

    iget-object v2, v2, Lj3/x;->b:[B

    array-length v9, v2

    if-eqz v9, :cond_10

    invoke-virtual {v5, v8, v2}, Lj3/f0;->f(Lj3/c0;Ljava/lang/Object;)V

    :cond_10
    sget-object v2, Ll3/b0;->f:Lj3/a0;

    invoke-virtual {v5, v2}, Lj3/f0;->a(Lj3/c0;)V

    sget-object v2, Ll3/b0;->g:Lj3/d0;

    invoke-virtual {v5, v2}, Lj3/f0;->a(Lj3/c0;)V

    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    iget-object v2, v2, Lj3/g;->a:Lj3/v;

    iget-object v8, v1, Ll3/r;->f:Lj3/u;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    if-nez v2, :cond_11

    move-object v14, v13

    goto :goto_a

    :cond_11
    move-object v14, v2

    :goto_a
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Lj3/v;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    invoke-static {v2, v5, v3, v3}, Ll3/b0;->c(Lj3/g;Lj3/f0;IZ)[Lj3/B;

    move-result-object v2

    iget-object v3, v1, Ll3/r;->i:Lj3/g;

    iget-object v3, v3, Lj3/g;->a:Lj3/v;

    iget-object v4, v1, Ll3/r;->f:Lj3/u;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_12

    const-string v3, "Context"

    goto :goto_b

    :cond_12
    const-string v3, "CallOptions"

    :goto_b
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v4}, Lj3/v;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    long-to-double v4, v4

    sget-wide v6, Ll3/r;->r:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ClientCall started after %s deadline was exceeded .9%f seconds ago"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ll3/U;

    sget-object v5, Lj3/r0;->h:Lj3/r0;

    invoke-virtual {v5, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    sget-object v5, Ll3/t;->a:Ll3/t;

    invoke-direct {v4, v3, v5, v2}, Ll3/U;-><init>(Lj3/r0;Ll3/t;[Lj3/B;)V

    iput-object v4, v1, Ll3/r;->j:Ll3/s;

    move-object v15, v12

    goto/16 :goto_11

    :cond_13
    iget-object v2, v1, Ll3/r;->f:Lj3/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    iget-object v2, v2, Lj3/g;->a:Lj3/v;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v9, Ll3/r;->q:Ljava/util/logging/Logger;

    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_14

    if-eqz v14, :cond_14

    invoke-virtual {v14, v13}, Lj3/v;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    :cond_14
    move-object v15, v12

    goto :goto_d

    :cond_15
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v15, v12

    invoke-virtual {v14, v8}, Lj3/v;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Call timeout set to \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "\' ns, due to context deadline."

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_16

    const-string v2, " Explicit call timeout was not set."

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_16
    invoke-virtual {v2, v8}, Lj3/v;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, " Explicit call timeout was \'"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "\' ns."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_d
    iget-object v6, v1, Ll3/r;->n:Lj1/a;

    iget-object v7, v1, Ll3/r;->a:Lj3/h0;

    iget-object v8, v1, Ll3/r;->i:Lj3/g;

    iget-object v10, v1, Ll3/r;->f:Lj3/u;

    iget-object v2, v6, Lj1/a;->b:Ljava/lang/Object;

    check-cast v2, Ll3/L0;

    iget-boolean v9, v2, Ll3/L0;->W:Z

    if-nez v9, :cond_17

    new-instance v2, Ll3/f1;

    invoke-direct {v2, v7, v5, v8}, Ll3/f1;-><init>(Lj3/h0;Lj3/f0;Lj3/g;)V

    invoke-virtual {v6, v2}, Lj1/a;->r(Ll3/f1;)Ll3/v;

    move-result-object v2

    invoke-virtual {v10}, Lj3/u;->a()Lj3/u;

    move-result-object v4

    invoke-static {v8, v5, v3, v3}, Ll3/b0;->c(Lj3/g;Lj3/f0;IZ)[Lj3/B;

    move-result-object v3

    :try_start_0
    invoke-interface {v2, v7, v5, v8, v3}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10, v4}, Lj3/u;->c(Lj3/u;)V

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v10, v4}, Lj3/u;->c(Lj3/u;)V

    throw v2

    :cond_17
    iget-object v2, v2, Ll3/L0;->Q:Ll3/R0;

    iget-object v9, v2, Ll3/R0;->d:Ll3/A1;

    invoke-virtual {v8, v4}, Lj3/g;->a(LG3/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/P0;

    if-nez v2, :cond_18

    move-object v11, v13

    goto :goto_e

    :cond_18
    iget-object v3, v2, Ll3/P0;->e:Ll3/B1;

    move-object v11, v3

    :goto_e
    if-nez v2, :cond_19

    move-object v12, v13

    goto :goto_f

    :cond_19
    iget-object v2, v2, Ll3/P0;->f:Ll3/d0;

    move-object v12, v2

    :goto_f
    new-instance v16, Ll3/B0;

    move-object/from16 v2, v16

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v5, p2

    move-object v6, v8

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v10}, Ll3/B0;-><init>(Lj1/a;Lj3/h0;Lj3/f0;Lj3/g;Ll3/B1;Ll3/d0;Ll3/A1;Lj3/u;)V

    :goto_10
    iput-object v2, v1, Ll3/r;->j:Ll3/s;

    :goto_11
    iget-boolean v2, v1, Ll3/r;->d:Z

    if-eqz v2, :cond_1a

    iget-object v2, v1, Ll3/r;->j:Ll3/s;

    invoke-interface {v2}, Ll3/O1;->o()V

    :cond_1a
    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    iget-object v2, v2, Lj3/g;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    iget-object v3, v1, Ll3/r;->j:Ll3/s;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ll3/s;->m(I)V

    :cond_1b
    iget-object v2, v1, Ll3/r;->i:Lj3/g;

    iget-object v2, v2, Lj3/g;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    iget-object v3, v1, Ll3/r;->j:Ll3/s;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ll3/s;->c(I)V

    :cond_1c
    if-eqz v14, :cond_1d

    iget-object v2, v1, Ll3/r;->j:Ll3/s;

    invoke-interface {v2, v14}, Ll3/s;->e(Lj3/v;)V

    :cond_1d
    iget-object v2, v1, Ll3/r;->j:Ll3/s;

    move-object v3, v15

    invoke-interface {v2, v3}, Ll3/O1;->a(Lj3/o;)V

    iget-object v2, v1, Ll3/r;->j:Ll3/s;

    iget-object v3, v1, Ll3/r;->p:Lj3/x;

    invoke-interface {v2, v3}, Ll3/s;->h(Lj3/x;)V

    iget-object v2, v1, Ll3/r;->e:LR0/i;

    iget-object v3, v2, LR0/i;->b:Ljava/lang/Object;

    check-cast v3, Ll3/w0;

    invoke-interface {v3}, Ll3/w0;->a()V

    iget-object v2, v2, LR0/i;->a:Ljava/lang/Object;

    check-cast v2, Ll3/P1;

    invoke-virtual {v2}, Ll3/P1;->f()J

    iget-object v2, v1, Ll3/r;->j:Ll3/s;

    new-instance v3, LJ2/e;

    invoke-direct {v3, v1, v0}, LJ2/e;-><init>(Ll3/r;Lj3/j;)V

    invoke-interface {v2, v3}, Ll3/s;->g(Ll3/u;)V

    iget-object v0, v1, Ll3/r;->f:Lj3/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj3/u;->a:Ljava/util/logging/Logger;

    if-eqz v14, :cond_1e

    iget-object v0, v1, Ll3/r;->f:Lj3/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14, v13}, Lj3/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Ll3/r;->o:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1e

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v0}, Lj3/v;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    new-instance v4, Ll3/v0;

    new-instance v5, LY0/G0;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v2, v3, v6}, LY0/G0;-><init>(Ljava/lang/Object;JI)V

    invoke-direct {v4, v5}, Ll3/v0;-><init>(Ljava/lang/Runnable;)V

    iget-object v5, v1, Ll3/r;->o:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5, v4, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Ll3/r;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_1e
    iget-boolean v0, v1, Ll3/r;->k:Z

    if-eqz v0, :cond_1f

    invoke-virtual/range {p0 .. p0}, Ll3/r;->b()V

    :cond_1f
    return-void
.end method

.method public final getAttributes()Lj3/b;
    .locals 1

    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ll3/s;->k()Lj3/b;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lj3/b;->b:Lj3/b;

    return-object v0
.end method

.method public final halfClose()V
    .locals 3

    invoke-static {}, Ly3/b;->b()V

    :try_start_0
    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/r;->l:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/r;->m:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-boolean v1, p0, Ll3/r;->m:Z

    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    invoke-interface {v0}, Ll3/s;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Ly3/b;->d()V

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    iget-boolean v0, p0, Ll3/r;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->i()Z

    move-result v0

    return v0
.end method

.method public final request(I)V
    .locals 4

    invoke-static {}, Ly3/b;->b()V

    :try_start_0
    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Not started"

    invoke-static {v0, v3}, LZ2/l;->m(ZLjava/lang/String;)V

    if-ltz p1, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Number requested must be non-negative"

    invoke-static {v1, v0}, LZ2/l;->f(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->l(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Ly3/b;->d()V

    throw p1
.end method

.method public final sendMessage(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Ly3/b;->b()V

    :try_start_0
    invoke-virtual {p0, p1}, Ll3/r;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Ly3/b;->d()V

    throw p1
.end method

.method public final setMessageCompression(Z)V
    .locals 2

    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/r;->j:Ll3/s;

    invoke-interface {v0, p1}, Ll3/O1;->b(Z)V

    return-void
.end method

.method public final start(Lj3/j;Lj3/f0;)V
    .locals 0

    invoke-static {}, Ly3/b;->b()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ll3/r;->d(Lj3/j;Lj3/f0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Ly3/b;->d()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "method"

    iget-object v2, p0, Ll3/r;->a:Lj3/h0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
