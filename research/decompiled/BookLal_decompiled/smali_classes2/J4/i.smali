.class public final LJ4/i;
.super LF4/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LJ4/i;->e:I

    iput-object p2, p0, LJ4/i;->f:Ljava/lang/Object;

    iput-object p3, p0, LJ4/i;->g:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, LF4/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget v0, v1, LJ4/i;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, LJ4/i;->f:Ljava/lang/Object;

    check-cast v0, LJ4/k;

    iget-object v6, v1, LJ4/i;->g:Ljava/lang/Object;

    check-cast v6, LJ4/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/jvm/internal/m;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v8, v0, LJ4/k;->b:LJ4/o;

    iget-object v9, v8, LJ4/o;->B:LJ4/x;

    monitor-enter v9

    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v8, LJ4/o;->v:LJ4/B;

    new-instance v10, LJ4/B;

    invoke-direct {v10}, LJ4/B;-><init>()V

    invoke-virtual {v10, v0}, LJ4/B;->b(LJ4/B;)V

    invoke-virtual {v10, v6}, LJ4/B;->b(LJ4/B;)V

    iput-object v10, v7, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    invoke-virtual {v10}, LJ4/B;->a()I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v0}, LJ4/B;->a()I

    move-result v0

    int-to-long v12, v0

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1

    iget-object v0, v8, LJ4/o;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v8, LJ4/o;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v14, v3, [LJ4/w;

    invoke-interface {v0, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJ4/w;

    :goto_0
    move-object v14, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    iget-object v0, v7, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    check-cast v0, LJ4/B;

    const-string v15, "<set-?>"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, LJ4/o;->v:LJ4/B;

    iget-object v0, v8, LJ4/o;->o:LF4/b;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, LJ4/o;->c:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onSettings"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, LJ4/i;

    invoke-direct {v5, v4, v8, v7, v3}, LJ4/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v5, v12, v13}, LF4/b;->c(LF4/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v8, LJ4/o;->B:LJ4/x;

    iget-object v4, v7, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    check-cast v4, LJ4/B;

    invoke-virtual {v0, v4}, LJ4/x;->b(LJ4/B;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v8, v2, v2, v0}, LJ4/o;->b(IILjava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v9

    if-eqz v14, :cond_3

    array-length v0, v14

    :goto_4
    if-ge v3, v0, :cond_3

    aget-object v2, v14, v3

    monitor-enter v2

    :try_start_5
    iget-wide v4, v2, LJ4/w;->f:J

    add-long/2addr v4, v10

    iput-wide v4, v2, LJ4/w;->f:J

    if-lez v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    monitor-exit v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    const-wide/16 v2, -0x1

    return-wide v2

    :goto_5
    :try_start_6
    monitor-exit v8

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    monitor-exit v9

    throw v0

    :pswitch_0
    :try_start_7
    iget-object v0, v1, LJ4/i;->f:Ljava/lang/Object;

    check-cast v0, LJ4/o;

    iget-object v0, v0, LJ4/o;->a:LJ4/h;

    iget-object v3, v1, LJ4/i;->g:Ljava/lang/Object;

    check-cast v3, LJ4/w;

    invoke-virtual {v0, v3}, LJ4/h;->b(LJ4/w;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_1
    :goto_7
    const-wide/16 v2, -0x1

    goto :goto_8

    :catch_2
    move-exception v0

    sget-object v3, LL4/n;->a:LL4/n;

    sget-object v3, LL4/n;->a:LL4/n;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Http2Connection.Listener failure for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, LJ4/i;->f:Ljava/lang/Object;

    check-cast v5, LJ4/o;

    iget-object v5, v5, LJ4/o;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    invoke-static {v3, v4, v0}, LL4/n;->i(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_8
    iget-object v3, v1, LJ4/i;->g:Ljava/lang/Object;

    check-cast v3, LJ4/w;

    invoke-virtual {v3, v0, v2}, LJ4/w;->c(Ljava/io/IOException;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_7

    :goto_8
    return-wide v2

    :pswitch_1
    const-wide/16 v2, -0x1

    iget-object v0, v1, LJ4/i;->f:Ljava/lang/Object;

    check-cast v0, LJ4/o;

    iget-object v4, v0, LJ4/o;->a:LJ4/h;

    iget-object v5, v1, LJ4/i;->g:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/m;

    iget-object v5, v5, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    check-cast v5, LJ4/B;

    invoke-virtual {v4, v0, v5}, LJ4/h;->a(LJ4/o;LJ4/B;)V

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
