.class public final LE4/h;
.super LF4/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, LE4/h;->e:I

    iput-object p1, p0, LE4/h;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, LF4/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, LE4/h;->e:I

    iput-object p2, p0, LE4/h;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, LF4/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 13

    iget v0, p0, LE4/h;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE4/h;->f:Ljava/lang/Object;

    check-cast v0, LJ4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, v0, LJ4/o;->B:LJ4/x;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, LJ4/x;->m(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1, v1, v2}, LJ4/o;->b(IILjava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    iget-object v0, p0, LE4/h;->f:Ljava/lang/Object;

    check-cast v0, LG4/l;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, v0, LG4/l;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    move-wide v7, v6

    move-object v6, v5

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LG4/k;

    const-string v10, "connection"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v9

    :try_start_1
    invoke-virtual {v0, v9, v1, v2}, LG4/l;->b(LG4/k;J)I

    move-result v10

    if-lez v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    iget-wide v10, v9, LG4/k;->q:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v10, v1, v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_1

    move-object v6, v9

    move-wide v7, v10

    :cond_1
    :goto_2
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_2
    iget-wide v9, v0, LG4/l;->a:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_6

    const/4 v3, 0x5

    if-le v4, v3, :cond_3

    goto :goto_3

    :cond_3
    if-lez v4, :cond_4

    sub-long/2addr v9, v7

    goto :goto_4

    :cond_4
    if-lez v5, :cond_5

    goto :goto_4

    :cond_5
    const-wide/16 v9, -0x1

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {v6}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    monitor-enter v6

    :try_start_2
    iget-object v3, v6, LG4/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v9, 0x0

    if-nez v3, :cond_7

    monitor-exit v6

    goto :goto_4

    :cond_7
    :try_start_3
    iget-wide v3, v6, LG4/k;->q:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long/2addr v3, v7

    cmp-long v1, v3, v1

    if-eqz v1, :cond_8

    monitor-exit v6

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, v6, LG4/k;->j:Z

    iget-object v1, v0, LG4/l;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v6

    iget-object v1, v6, LG4/k;->d:Ljava/net/Socket;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-static {v1}, LD4/c;->e(Ljava/net/Socket;)V

    iget-object v1, v0, LG4/l;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, LG4/l;->b:LF4/b;

    invoke-virtual {v0}, LF4/b;->a()V

    :cond_9
    :goto_4
    return-wide v9

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    :pswitch_1
    iget-object v0, p0, LE4/h;->f:Ljava/lang/Object;

    check-cast v0, LJ4/k;

    invoke-virtual {v0}, LJ4/k;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_2
    iget-object v0, p0, LE4/h;->f:Ljava/lang/Object;

    check-cast v0, LE4/i;

    monitor-enter v0

    :try_start_5
    iget-boolean v1, v0, LE4/i;->q:Z

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, LE4/i;->r:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {v0}, LE4/i;->v()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_9

    :catch_1
    :try_start_7
    iput-boolean v1, v0, LE4/i;->s:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_5
    :try_start_8
    invoke-virtual {v0}, LE4/i;->m()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, LE4/i;->t()V

    const/4 v4, 0x0

    iput v4, v0, LE4/i;->n:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catch_2
    :try_start_9
    iput-boolean v1, v0, LE4/i;->t:Z

    new-instance v1, LQ4/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object v1

    iput-object v1, v0, LE4/i;->l:LQ4/r;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_b
    :goto_6
    monitor-exit v0

    goto :goto_8

    :cond_c
    :goto_7
    monitor-exit v0

    :goto_8
    return-wide v2

    :goto_9
    monitor-exit v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
