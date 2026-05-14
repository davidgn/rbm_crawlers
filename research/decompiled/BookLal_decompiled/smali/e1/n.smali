.class public final Le1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Z


# instance fields
.field public final a:Le1/x;

.field public final b:Lz2/e;

.field public final c:Lg1/e;

.field public final d:LR1/l;

.field public final e:LK/g;

.field public final f:LH4/h;

.field public final g:LR0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Le1/n;->h:Z

    return-void
.end method

.method public constructor <init>(Lg1/e;LK0/j;Lh1/c;Lh1/c;Lh1/c;Lh1/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/n;->c:Lg1/e;

    new-instance v0, Le1/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Le1/m;->a:Ljava/lang/Object;

    new-instance p2, LR0/i;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, LR0/i;-><init>(I)V

    iput-object p2, p0, Le1/n;->g:LR0/i;

    monitor-enter p0

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p0, p2, LR0/i;->d:Ljava/lang/Object;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p2, Lz2/e;

    const/16 v1, 0x12

    invoke-direct {p2, v1}, Lz2/e;-><init>(I)V

    iput-object p2, p0, Le1/n;->b:Lz2/e;

    new-instance p2, Le1/x;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Le1/x;-><init>(I)V

    iput-object p2, p0, Le1/n;->a:Le1/x;

    new-instance p2, LR1/l;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v1, LC4/o;

    const/16 v2, 0x16

    invoke-direct {v1, p2, v2}, LC4/o;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0x96

    invoke-static {v2, v1}, Lz1/g;->a(ILz1/d;)LJ2/e;

    move-result-object v1

    iput-object v1, p2, LR1/l;->g:Ljava/lang/Object;

    iput-object p3, p2, LR1/l;->a:Ljava/lang/Object;

    iput-object p4, p2, LR1/l;->b:Ljava/lang/Object;

    iput-object p5, p2, LR1/l;->c:Ljava/lang/Object;

    iput-object p6, p2, LR1/l;->d:Ljava/lang/Object;

    iput-object p0, p2, LR1/l;->e:Ljava/lang/Object;

    iput-object p0, p2, LR1/l;->f:Ljava/lang/Object;

    iput-object p2, p0, Le1/n;->d:LR1/l;

    new-instance p2, LH4/h;

    invoke-direct {p2, v0}, LH4/h;-><init>(Le1/m;)V

    iput-object p2, p0, Le1/n;->f:LH4/h;

    new-instance p2, LK/g;

    invoke-direct {p2}, LK/g;-><init>()V

    iput-object p2, p0, Le1/n;->e:LK/g;

    iput-object p0, p1, Lg1/e;->d:Le1/n;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static c(Ljava/lang/String;JLe1/s;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p0, v0}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Ly1/g;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f(Le1/A;)V
    .locals 1

    instance-of v0, p0, Le1/t;

    if-eqz v0, :cond_0

    check-cast p0, Le1/t;

    invoke-virtual {p0}, Le1/t;->e()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/c;Ljava/lang/Object;Lb1/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d;Le1/l;Ly1/c;ZZLb1/h;ZZLu1/e;LI/i;)LJ2/e;
    .locals 22

    move-object/from16 v15, p0

    sget-boolean v0, Le1/n;->h:Z

    if-eqz v0, :cond_0

    sget v0, Ly1/g;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    move-wide v13, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v15, Le1/n;->b:Lz2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le1/s;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Le1/s;-><init>(Ljava/lang/Object;Lb1/e;IILy1/c;Ljava/lang/Class;Ljava/lang/Class;Lb1/h;)V

    monitor-enter p0

    move/from16 v12, p14

    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Le1/n;->b(Le1/s;ZJ)Le1/t;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v20, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, v0

    invoke-virtual/range {v1 .. v21}, Le1/n;->g(Lcom/bumptech/glide/c;Ljava/lang/Object;Lb1/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d;Le1/l;Ly1/c;ZZLb1/h;ZZLu1/e;LI/i;Le1/s;J)LJ2/e;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lb1/a;->e:Lb1/a;

    move-object/from16 v2, p16

    invoke-virtual {v2, v1, v0}, Lu1/e;->i(Le1/A;Lb1/a;)V

    const/4 v0, 0x0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Le1/s;ZJ)Le1/t;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object p2, p0, Le1/n;->g:LR0/i;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p2

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/t;

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, LR0/i;->c(Le1/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_0
    monitor-exit p2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Le1/t;->d()V

    :cond_3
    if-eqz v2, :cond_5

    sget-boolean p2, Le1/n;->h:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    invoke-static {p2, p3, p4, p1}, Le1/n;->c(Ljava/lang/String;JLe1/s;)V

    :cond_4
    return-object v2

    :cond_5
    iget-object v1, p0, Le1/n;->c:Lg1/e;

    monitor-enter v1

    :try_start_2
    iget-object p2, v1, Ly1/h;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-wide v2, v1, Ly1/h;->c:J

    invoke-virtual {v1, p2}, Lg1/e;->b(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Ly1/h;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_6
    :goto_2
    monitor-exit v1

    move-object v3, p2

    check-cast v3, Le1/A;

    if-nez v3, :cond_7

    move-object v3, v0

    goto :goto_3

    :cond_7
    instance-of p2, v3, Le1/t;

    if-eqz p2, :cond_8

    check-cast v3, Le1/t;

    goto :goto_3

    :cond_8
    new-instance p2, Le1/t;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p2

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Le1/t;-><init>(Le1/A;ZZLe1/s;Le1/n;)V

    move-object v3, p2

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Le1/t;->d()V

    iget-object p2, p0, Le1/n;->g:LR0/i;

    invoke-virtual {p2, p1, v3}, LR0/i;->a(Le1/s;Le1/t;)V

    :cond_9
    if-eqz v3, :cond_b

    sget-boolean p2, Le1/n;->h:Z

    if-eqz p2, :cond_a

    const-string p2, "Loaded resource from cache"

    invoke-static {p2, p3, p4, p1}, Le1/n;->c(Ljava/lang/String;JLe1/s;)V

    :cond_a
    return-object v3

    :cond_b
    return-object v0

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_5
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Le1/r;Le1/s;Le1/t;)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v0, p3, Le1/t;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/n;->g:LR0/i;

    invoke-virtual {v0, p2, p3}, LR0/i;->a(Le1/s;Le1/t;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p3, p0, Le1/n;->a:Le1/x;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Le1/x;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Le1/s;Le1/t;)V
    .locals 3

    iget-object v0, p0, Le1/n;->g:LR0/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le1/a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Le1/a;->c:Le1/A;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    iget-boolean v0, p2, Le1/t;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le1/n;->c:Lg1/e;

    invoke-virtual {v0, p1, p2}, Ly1/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/A;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le1/n;->e:LK/g;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, LK/g;->d(Le1/A;Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Lcom/bumptech/glide/c;Ljava/lang/Object;Lb1/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d;Le1/l;Ly1/c;ZZLb1/h;ZZLu1/e;LI/i;Le1/s;J)LJ2/e;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    iget-object v14, v1, Le1/n;->a:Le1/x;

    iget-object v14, v14, Le1/x;->a:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le1/r;

    if-eqz v14, :cond_1

    invoke-virtual {v14, v9, v10}, Le1/r;->a(Lu1/e;LI/i;)V

    sget-boolean v0, Le1/n;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "Added to existing load"

    invoke-static {v0, v12, v13, v11}, Le1/n;->c(Ljava/lang/String;JLe1/s;)V

    :cond_0
    new-instance v0, LJ2/e;

    invoke-direct {v0, v1, v9, v14}, LJ2/e;-><init>(Le1/n;Lu1/e;Le1/r;)V

    return-object v0

    :cond_1
    iget-object v14, v1, Le1/n;->d:LR1/l;

    iget-object v14, v14, LR1/l;->g:Ljava/lang/Object;

    check-cast v14, LJ2/e;

    invoke-virtual {v14}, LJ2/e;->g()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le1/r;

    monitor-enter v14

    :try_start_0
    iput-object v11, v14, Le1/r;->p:Le1/s;

    move/from16 v15, p14

    iput-boolean v15, v14, Le1/r;->q:Z

    move/from16 v15, p15

    iput-boolean v15, v14, Le1/r;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v14

    iget-object v15, v1, Le1/n;->f:LH4/h;

    iget-object v12, v15, LH4/h;->d:Ljava/lang/Object;

    check-cast v12, LJ2/e;

    invoke-virtual {v12}, LJ2/e;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le1/j;

    iget v13, v15, LH4/h;->b:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, LH4/h;->b:I

    iget-object v9, v12, Le1/j;->a:Le1/g;

    iput-object v0, v9, Le1/g;->c:Lcom/bumptech/glide/c;

    iput-object v2, v9, Le1/g;->d:Ljava/lang/Object;

    iput-object v3, v9, Le1/g;->n:Lb1/e;

    iput v4, v9, Le1/g;->e:I

    iput v5, v9, Le1/g;->f:I

    iput-object v7, v9, Le1/g;->p:Le1/l;

    move-object/from16 v15, p6

    iput-object v15, v9, Le1/g;->g:Ljava/lang/Class;

    iget-object v15, v12, Le1/j;->d:Le1/m;

    iput-object v15, v9, Le1/g;->h:Le1/m;

    move-object/from16 v15, p7

    iput-object v15, v9, Le1/g;->k:Ljava/lang/Class;

    iput-object v6, v9, Le1/g;->o:Lcom/bumptech/glide/d;

    iput-object v8, v9, Le1/g;->i:Lb1/h;

    move-object/from16 v15, p10

    iput-object v15, v9, Le1/g;->j:Ly1/c;

    move/from16 v15, p11

    iput-boolean v15, v9, Le1/g;->q:Z

    move/from16 v15, p12

    iput-boolean v15, v9, Le1/g;->r:Z

    iput-object v0, v12, Le1/j;->m:Lcom/bumptech/glide/c;

    iput-object v3, v12, Le1/j;->n:Lb1/e;

    iput-object v6, v12, Le1/j;->o:Lcom/bumptech/glide/d;

    iput-object v11, v12, Le1/j;->p:Le1/s;

    iput v4, v12, Le1/j;->q:I

    iput v5, v12, Le1/j;->r:I

    iput-object v7, v12, Le1/j;->s:Le1/l;

    iput-object v8, v12, Le1/j;->t:Lb1/h;

    iput-object v14, v12, Le1/j;->u:Le1/r;

    iput v13, v12, Le1/j;->v:I

    const/4 v0, 0x1

    iput v0, v12, Le1/j;->I:I

    iput-object v2, v12, Le1/j;->x:Ljava/lang/Object;

    iget-object v2, v1, Le1/n;->a:Le1/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Le1/x;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p16

    invoke-virtual {v14, v2, v10}, Le1/r;->a(Lu1/e;LI/i;)V

    monitor-enter v14

    :try_start_1
    iput-object v12, v14, Le1/r;->y:Le1/j;

    invoke-virtual {v12, v0}, Le1/j;->h(I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, v14, Le1/r;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, v14, Le1/r;->n:Lh1/c;

    goto :goto_1

    :cond_3
    iget-object v0, v14, Le1/r;->m:Lh1/c;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, v14, Le1/r;->l:Lh1/c;

    :goto_1
    invoke-virtual {v0, v12}, Lh1/c;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    sget-boolean v0, Le1/n;->h:Z

    if-eqz v0, :cond_5

    const-string v0, "Started new load"

    move-wide/from16 v3, p19

    invoke-static {v0, v3, v4, v11}, Le1/n;->c(Ljava/lang/String;JLe1/s;)V

    :cond_5
    new-instance v0, LJ2/e;

    invoke-direct {v0, v1, v2, v14}, LJ2/e;-><init>(Le1/n;Lu1/e;Le1/r;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
