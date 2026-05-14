.class public final LJ4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ4/y;


# instance fields
.field public final a:J

.field public b:Z

.field public final c:LQ4/g;

.field public final d:LQ4/g;

.field public e:Z

.field public final synthetic f:LJ4/w;


# direct methods
.method public constructor <init>(LJ4/w;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/u;->f:LJ4/w;

    iput-wide p2, p0, LJ4/u;->a:J

    iput-boolean p4, p0, LJ4/u;->b:Z

    new-instance p1, LQ4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/u;->c:LQ4/g;

    new-instance p1, LQ4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/u;->d:LQ4/g;

    return-void
.end method


# virtual methods
.method public final a()LQ4/A;
    .locals 1

    iget-object v0, p0, LJ4/u;->f:LJ4/w;

    iget-object v0, v0, LJ4/w;->k:LJ4/v;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    sget-object v0, LD4/c;->a:[B

    iget-object v0, p0, LJ4/u;->f:LJ4/w;

    iget-object v0, v0, LJ4/w;->b:LJ4/o;

    invoke-virtual {v0, p1, p2}, LJ4/o;->g(J)V

    return-void
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, LJ4/u;->f:LJ4/w;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LJ4/u;->e:Z

    iget-object v1, p0, LJ4/u;->d:LQ4/g;

    iget-wide v2, v1, LQ4/g;->b:J

    invoke-virtual {v1}, LQ4/g;->b()V

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2, v3}, LJ4/u;->b(J)V

    :cond_0
    iget-object v0, p0, LJ4/u;->f:LJ4/w;

    invoke-virtual {v0}, LJ4/w;->a()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final l(LQ4/g;J)J
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_9

    :goto_0
    iget-object v6, v1, LJ4/u;->f:LJ4/w;

    monitor-enter v6

    :try_start_0
    iget-object v7, v6, LJ4/w;->k:LJ4/v;

    invoke-virtual {v7}, LQ4/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v7, v6, LJ4/w;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    monitor-exit v6

    if-eqz v7, :cond_0

    iget-boolean v7, v1, LJ4/u;->b:Z

    if-nez v7, :cond_0

    iget-object v7, v6, LJ4/w;->n:Ljava/io/IOException;

    if-nez v7, :cond_1

    new-instance v7, LJ4/C;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v8, v6, LJ4/w;->m:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v6

    invoke-static {v8}, Le1/i;->i(I)V

    invoke-direct {v7, v8}, LJ4/C;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_0
    const/4 v7, 0x0

    :cond_1
    :goto_1
    iget-boolean v8, v1, LJ4/u;->e:Z

    if-nez v8, :cond_8

    iget-object v8, v1, LJ4/u;->d:LQ4/g;

    iget-wide v9, v8, LQ4/g;->b:J

    cmp-long v11, v9, v4

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    if-lez v11, :cond_2

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v0, v9, v10}, LQ4/g;->l(LQ4/g;J)J

    move-result-wide v8

    iget-wide v10, v6, LJ4/w;->c:J

    add-long/2addr v10, v8

    iput-wide v10, v6, LJ4/w;->c:J

    iget-wide v4, v6, LJ4/w;->d:J

    sub-long/2addr v10, v4

    if-nez v7, :cond_4

    iget-object v4, v6, LJ4/w;->b:LJ4/o;

    iget-object v4, v4, LJ4/o;->u:LJ4/B;

    invoke-virtual {v4}, LJ4/B;->a()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v4, v10, v4

    if-ltz v4, :cond_4

    iget-object v4, v6, LJ4/w;->b:LJ4/o;

    iget v5, v6, LJ4/w;->a:I

    invoke-virtual {v4, v5, v10, v11}, LJ4/o;->q(IJ)V

    iget-wide v4, v6, LJ4/w;->c:J

    iput-wide v4, v6, LJ4/w;->d:J

    goto :goto_2

    :cond_2
    iget-boolean v4, v1, LJ4/u;->b:Z

    if-nez v4, :cond_3

    if-nez v7, :cond_3

    invoke-virtual {v6}, LJ4/w;->k()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x1

    :cond_3
    move-wide v8, v12

    :cond_4
    :goto_2
    :try_start_8
    iget-object v4, v6, LJ4/w;->k:LJ4/v;

    invoke-virtual {v4}, LJ4/v;->k()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v6

    if-eqz v14, :cond_5

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_5
    cmp-long v0, v8, v12

    if-eqz v0, :cond_6

    return-wide v8

    :cond_6
    if-nez v7, :cond_7

    return-wide v12

    :cond_7
    throw v7

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_8
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_3
    :try_start_c
    iget-object v2, v6, LJ4/w;->k:LJ4/v;

    invoke-virtual {v2}, LJ4/v;->k()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_4
    monitor-exit v6

    throw v0

    :cond_9
    const-string v0, "byteCount < 0: "

    invoke-static {v2, v3, v0}, Le1/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
