.class public final Le1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/e;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lz1/e;


# instance fields
.field public A:Lb1/e;

.field public B:Ljava/lang/Object;

.field public C:Lb1/a;

.field public D:Lc1/e;

.field public volatile E:Le1/f;

.field public volatile F:Z

.field public volatile G:Z

.field public H:I

.field public I:I

.field public final a:Le1/g;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lz1/h;

.field public final d:Le1/m;

.field public final e:LJ2/e;

.field public final f:LJ2/e;

.field public final l:Le1/h;

.field public m:Lcom/bumptech/glide/c;

.field public n:Lb1/e;

.field public o:Lcom/bumptech/glide/d;

.field public p:Le1/s;

.field public q:I

.field public r:I

.field public s:Le1/l;

.field public t:Lb1/h;

.field public u:Le1/r;

.field public v:I

.field public w:J

.field public x:Ljava/lang/Object;

.field public y:Ljava/lang/Thread;

.field public z:Lb1/e;


# direct methods
.method public constructor <init>(Le1/m;LJ2/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le1/g;

    invoke-direct {v0}, Le1/g;-><init>()V

    iput-object v0, p0, Le1/j;->a:Le1/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le1/j;->b:Ljava/util/ArrayList;

    new-instance v0, Lz1/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le1/j;->c:Lz1/h;

    new-instance v0, LJ2/e;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LJ2/e;-><init>(I)V

    iput-object v0, p0, Le1/j;->f:LJ2/e;

    new-instance v0, Le1/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le1/j;->l:Le1/h;

    iput-object p1, p0, Le1/j;->d:Le1/m;

    iput-object p2, p0, Le1/j;->e:LJ2/e;

    return-void
.end method


# virtual methods
.method public final a(Lc1/e;Ljava/lang/Object;Lb1/a;)Le1/A;
    .locals 5

    const-string v0, "Decoded result "

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Lc1/e;->b()V

    return-object v1

    :cond_0
    :try_start_0
    sget v2, Ly1/g;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0, p2, p3}, Le1/j;->e(Ljava/lang/Object;Lb1/a;)Le1/A;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v1, v2, v3}, Le1/j;->i(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lc1/e;->b()V

    return-object p2

    :goto_1
    invoke-interface {p1}, Lc1/e;->b()V

    throw p2
.end method

.method public final b(Lb1/e;Ljava/lang/Object;Lc1/e;Lb1/a;Lb1/e;)V
    .locals 0

    iput-object p1, p0, Le1/j;->z:Lb1/e;

    iput-object p2, p0, Le1/j;->B:Ljava/lang/Object;

    iput-object p3, p0, Le1/j;->D:Lc1/e;

    iput-object p4, p0, Le1/j;->C:Lb1/a;

    iput-object p5, p0, Le1/j;->A:Lb1/e;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Le1/j;->y:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Le1/j;->I:I

    iget-object p1, p0, Le1/j;->u:Le1/r;

    iget-boolean p2, p1, Le1/r;->r:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Le1/r;->n:Lh1/c;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Le1/r;->m:Lh1/c;

    :goto_0
    invoke-virtual {p1, p0}, Lh1/c;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Le1/j;->f()V

    :goto_1
    return-void
.end method

.method public final c(Lb1/e;Ljava/lang/Exception;Lc1/e;Lb1/a;)V
    .locals 2

    invoke-interface {p3}, Lc1/e;->b()V

    new-instance v0, Le1/v;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Le1/v;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3}, Lc1/e;->a()Ljava/lang/Class;

    move-result-object p2

    iput-object p1, v0, Le1/v;->b:Lb1/e;

    iput-object p4, v0, Le1/v;->c:Lb1/a;

    iput-object p2, v0, Le1/v;->d:Ljava/lang/Class;

    iget-object p1, p0, Le1/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Le1/j;->y:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Le1/j;->I:I

    iget-object p1, p0, Le1/j;->u:Le1/r;

    iget-boolean p2, p1, Le1/r;->r:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Le1/r;->n:Lh1/c;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Le1/r;->m:Lh1/c;

    :goto_0
    invoke-virtual {p1, p0}, Lh1/c;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Le1/j;->m()V

    :goto_1
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Le1/j;

    iget-object v0, p0, Le1/j;->o:Lcom/bumptech/glide/d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Le1/j;->o:Lcom/bumptech/glide/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Le1/j;->v:I

    iget p1, p1, Le1/j;->v:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final d()Lz1/h;
    .locals 1

    iget-object v0, p0, Le1/j;->c:Lz1/h;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Lb1/a;)Le1/A;
    .locals 8

    iget-object v0, p0, Le1/j;->a:Le1/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Le1/g;->c(Ljava/lang/Class;)Le1/y;

    move-result-object v2

    iget-object v0, p0, Le1/j;->t:Lb1/h;

    sget-object v1, Lb1/a;->d:Lb1/a;

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Le1/j;->a:Le1/g;

    iget-boolean v1, v1, Le1/g;->r:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-object v3, Ll1/o;->i:Lb1/g;

    invoke-virtual {v0, v3}, Lb1/h;->c(Lb1/g;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_3
    new-instance v0, Lb1/h;

    invoke-direct {v0}, Lb1/h;-><init>()V

    iget-object v4, p0, Le1/j;->t:Lb1/h;

    iget-object v5, v0, Lb1/h;->b:Ly1/c;

    iget-object v4, v4, Lb1/h;->b:Ly1/c;

    invoke-virtual {v5, v4}, Ly1/c;->i(Lr/k;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v4, v0, Lb1/h;->b:Ly1/c;

    invoke-virtual {v4, v3, v1}, Ly1/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Le1/j;->m:Lcom/bumptech/glide/c;

    iget-object v0, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->e:Lc1/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/f;

    if-nez v1, :cond_5

    iget-object v3, v0, Lc1/i;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc1/f;

    invoke-interface {v4}, Lc1/f;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, v4

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_4
    if-nez v1, :cond_6

    sget-object v1, Lc1/i;->c:Lc1/h;

    :cond_6
    invoke-interface {v1, p1}, Lc1/f;->b(Ljava/lang/Object;)Lc1/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :try_start_1
    iget v3, p0, Le1/j;->q:I

    iget v4, p0, Le1/j;->r:I

    new-instance v5, LD2/e;

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {v5, v0, p0, p2, v1}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Le1/y;->a(IILD2/e;Lb1/h;Lc1/g;)Le1/A;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p1}, Lc1/g;->b()V

    return-object p2

    :catchall_1
    move-exception p2

    invoke-interface {p1}, Lc1/g;->b()V

    throw p2

    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 12

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v1, p0, Le1/j;->w:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Le1/j;->B:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le1/j;->z:Lb1/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le1/j;->D:Lc1/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1, v2}, Le1/j;->i(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Le1/j;->D:Lc1/e;

    iget-object v2, p0, Le1/j;->B:Ljava/lang/Object;

    iget-object v3, p0, Le1/j;->C:Lb1/a;

    invoke-virtual {p0, v1, v2, v3}, Le1/j;->a(Lc1/e;Ljava/lang/Object;Lb1/a;)Le1/A;

    move-result-object v1
    :try_end_0
    .catch Le1/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Le1/j;->A:Lb1/e;

    iget-object v3, p0, Le1/j;->C:Lb1/a;

    iput-object v2, v1, Le1/v;->b:Lb1/e;

    iput-object v3, v1, Le1/v;->c:Lb1/a;

    iput-object v0, v1, Le1/v;->d:Ljava/lang/Class;

    iget-object v2, p0, Le1/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_b

    iget-object v2, p0, Le1/j;->C:Lb1/a;

    instance-of v3, v1, Le1/w;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Le1/w;

    invoke-interface {v3}, Le1/w;->initialize()V

    :cond_1
    iget-object v3, p0, Le1/j;->f:LJ2/e;

    iget-object v3, v3, LJ2/e;->d:Ljava/lang/Object;

    check-cast v3, Le1/z;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    sget-object v0, Le1/z;->e:LJ2/e;

    invoke-virtual {v0}, LJ2/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le1/z;

    iput-boolean v4, v0, Le1/z;->d:Z

    iput-boolean v5, v0, Le1/z;->c:Z

    iput-object v1, v0, Le1/z;->b:Le1/A;

    move-object v1, v0

    :cond_2
    invoke-virtual {p0}, Le1/j;->o()V

    iget-object v3, p0, Le1/j;->u:Le1/r;

    monitor-enter v3

    :try_start_1
    iput-object v1, v3, Le1/r;->s:Le1/A;

    iput-object v2, v3, Le1/r;->t:Lb1/a;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-enter v3

    :try_start_2
    iget-object v1, v3, Le1/r;->b:Lz1/h;

    invoke-virtual {v1}, Lz1/h;->a()V

    iget-boolean v1, v3, Le1/r;->z:Z

    if-eqz v1, :cond_3

    iget-object v1, v3, Le1/r;->s:Le1/A;

    invoke-interface {v1}, Le1/A;->a()V

    invoke-virtual {v3}, Le1/r;->g()V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-object v1, v3, Le1/r;->a:Le1/q;

    iget-object v1, v1, Le1/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, v3, Le1/r;->u:Z

    if-nez v1, :cond_9

    iget-object v1, v3, Le1/r;->e:Ly3/c;

    iget-object v7, v3, Le1/r;->s:Le1/A;

    iget-boolean v8, v3, Le1/r;->q:Z

    iget-object v10, v3, Le1/r;->p:Le1/s;

    iget-object v11, v3, Le1/r;->c:Le1/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le1/t;

    const/4 v9, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Le1/t;-><init>(Le1/A;ZZLe1/s;Le1/n;)V

    iput-object v1, v3, Le1/r;->x:Le1/t;

    iput-boolean v5, v3, Le1/r;->u:Z

    iget-object v1, v3, Le1/r;->a:Le1/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Le1/q;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v3, v1}, Le1/r;->e(I)V

    iget-object v1, v3, Le1/r;->p:Le1/s;

    iget-object v6, v3, Le1/r;->x:Le1/t;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v7, v3, Le1/r;->f:Le1/n;

    invoke-virtual {v7, v3, v1, v6}, Le1/n;->d(Le1/r;Le1/s;Le1/t;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/p;

    iget-object v6, v2, Le1/p;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Le1/o;

    iget-object v2, v2, Le1/p;->a:Lu1/e;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v2, v8}, Le1/o;-><init>(Le1/r;Lu1/e;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Le1/r;->c()V

    :goto_2
    const/4 v1, 0x5

    iput v1, p0, Le1/j;->H:I

    :try_start_3
    iget-object v1, p0, Le1/j;->f:LJ2/e;

    iget-object v2, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Le1/z;

    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    if-eqz v4, :cond_6

    iget-object v2, p0, Le1/j;->d:Le1/m;

    iget-object v9, p0, Le1/j;->t:Lb1/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Le1/m;->a()Lg1/a;

    move-result-object v2

    iget-object v3, v1, LJ2/e;->b:Ljava/lang/Object;

    check-cast v3, Lb1/e;

    new-instance v4, LJ2/e;

    iget-object v6, v1, LJ2/e;->c:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lb1/k;

    iget-object v6, v1, LJ2/e;->d:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Le1/z;

    const/16 v10, 0xb

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, LJ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v2, v3, v4}, Lg1/a;->d(Lb1/e;LJ2/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Le1/z;

    invoke-virtual {v1}, Le1/z;->e()V

    goto :goto_3

    :catchall_1
    move-exception v2

    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Le1/z;

    invoke-virtual {v1}, Le1/z;->e()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Le1/z;->e()V

    :cond_7
    iget-object v1, p0, Le1/j;->l:Le1/h;

    monitor-enter v1

    :try_start_6
    iput-boolean v5, v1, Le1/h;->b:Z

    invoke-virtual {v1}, Le1/h;->a()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v1

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Le1/j;->k()V

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Le1/z;->e()V

    :cond_8
    throw v1

    :cond_9
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_b
    invoke-virtual {p0}, Le1/j;->m()V

    :cond_c
    :goto_6
    return-void
.end method

.method public final g()Le1/f;
    .locals 3

    iget v0, p0, Le1/j;->H:I

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Le1/j;->a:Le1/g;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Le1/j;->H:I

    invoke-static {v1}, Le1/i;->m(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Le1/D;

    invoke-direct {v0, v2, p0}, Le1/D;-><init>(Le1/g;Le1/j;)V

    return-object v0

    :cond_2
    new-instance v0, Le1/c;

    invoke-virtual {v2}, Le1/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Le1/c;-><init>(Ljava/util/List;Le1/g;Le1/e;)V

    return-object v0

    :cond_3
    new-instance v0, Le1/B;

    invoke-direct {v0, v2, p0}, Le1/B;-><init>(Le1/g;Le1/j;)V

    return-object v0
.end method

.method public final h(I)I
    .locals 4

    invoke-static {p1}, Ls/e;->d(I)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Le1/i;->m(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    iget-object p1, p0, Le1/j;->s:Le1/l;

    iget p1, p1, Le1/l;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Le1/j;->h(I)I

    move-result v3

    :goto_2
    return v3

    :cond_5
    iget-object p1, p0, Le1/j;->s:Le1/l;

    iget p1, p1, Le1/l;->a:I

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x1

    goto :goto_3

    :pswitch_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Le1/j;->h(I)I

    move-result v1

    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, " in "

    invoke-static {p1, v0}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3, p4}, Ly1/g;->a(J)D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ", load key: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Le1/j;->p:Le1/s;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p3, ", "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j()V
    .locals 7

    invoke-virtual {p0}, Le1/j;->o()V

    new-instance v0, Le1/v;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Le1/j;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Le1/v;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Le1/j;->u:Le1/r;

    monitor-enter v1

    :try_start_0
    iput-object v0, v1, Le1/r;->v:Le1/v;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Le1/r;->b:Lz1/h;

    invoke-virtual {v0}, Lz1/h;->a()V

    iget-boolean v0, v1, Le1/r;->z:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Le1/r;->g()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, v1, Le1/r;->a:Le1/q;

    iget-object v0, v0, Le1/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, Le1/r;->w:Z

    if-nez v0, :cond_3

    iput-boolean v2, v1, Le1/r;->w:Z

    iget-object v0, v1, Le1/r;->p:Le1/s;

    iget-object v3, v1, Le1/r;->a:Le1/q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Le1/q;->a:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Le1/r;->e(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, v1, Le1/r;->f:Le1/n;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v0, v5}, Le1/n;->d(Le1/r;Le1/s;Le1/t;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le1/p;

    iget-object v4, v3, Le1/p;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Le1/o;

    iget-object v3, v3, Le1/p;->a:Lu1/e;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v6}, Le1/o;-><init>(Le1/r;Lu1/e;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Le1/r;->c()V

    :goto_1
    iget-object v0, p0, Le1/j;->l:Le1/h;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, Le1/h;->c:Z

    invoke-virtual {v0}, Le1/h;->a()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Le1/j;->k()V

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Le1/j;->l:Le1/h;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Le1/h;->b:Z

    iput-boolean v1, v0, Le1/h;->a:Z

    iput-boolean v1, v0, Le1/h;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Le1/j;->f:LJ2/e;

    const/4 v2, 0x0

    iput-object v2, v0, LJ2/e;->b:Ljava/lang/Object;

    iput-object v2, v0, LJ2/e;->c:Ljava/lang/Object;

    iput-object v2, v0, LJ2/e;->d:Ljava/lang/Object;

    iget-object v0, p0, Le1/j;->a:Le1/g;

    iput-object v2, v0, Le1/g;->c:Lcom/bumptech/glide/c;

    iput-object v2, v0, Le1/g;->d:Ljava/lang/Object;

    iput-object v2, v0, Le1/g;->n:Lb1/e;

    iput-object v2, v0, Le1/g;->g:Ljava/lang/Class;

    iput-object v2, v0, Le1/g;->k:Ljava/lang/Class;

    iput-object v2, v0, Le1/g;->i:Lb1/h;

    iput-object v2, v0, Le1/g;->o:Lcom/bumptech/glide/d;

    iput-object v2, v0, Le1/g;->j:Ly1/c;

    iput-object v2, v0, Le1/g;->p:Le1/l;

    iget-object v3, v0, Le1/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, Le1/g;->l:Z

    iget-object v3, v0, Le1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, Le1/g;->m:Z

    iput-boolean v1, p0, Le1/j;->F:Z

    iput-object v2, p0, Le1/j;->m:Lcom/bumptech/glide/c;

    iput-object v2, p0, Le1/j;->n:Lb1/e;

    iput-object v2, p0, Le1/j;->t:Lb1/h;

    iput-object v2, p0, Le1/j;->o:Lcom/bumptech/glide/d;

    iput-object v2, p0, Le1/j;->p:Le1/s;

    iput-object v2, p0, Le1/j;->u:Le1/r;

    iput v1, p0, Le1/j;->H:I

    iput-object v2, p0, Le1/j;->E:Le1/f;

    iput-object v2, p0, Le1/j;->y:Ljava/lang/Thread;

    iput-object v2, p0, Le1/j;->z:Lb1/e;

    iput-object v2, p0, Le1/j;->B:Ljava/lang/Object;

    iput-object v2, p0, Le1/j;->C:Lb1/a;

    iput-object v2, p0, Le1/j;->D:Lc1/e;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Le1/j;->w:J

    iput-boolean v1, p0, Le1/j;->G:Z

    iget-object v0, p0, Le1/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Le1/j;->e:LJ2/e;

    invoke-virtual {v0, p0}, LJ2/e;->N(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final l()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Le1/j;->I:I

    iget-object v0, p0, Le1/j;->u:Le1/r;

    iget-boolean v1, v0, Le1/r;->r:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Le1/r;->n:Lh1/c;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Le1/r;->m:Lh1/c;

    :goto_0
    invoke-virtual {v0, p0}, Lh1/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Le1/j;->y:Ljava/lang/Thread;

    sget v0, Ly1/g;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Le1/j;->w:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Le1/j;->G:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Le1/j;->E:Le1/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, Le1/j;->E:Le1/f;

    invoke-interface {v0}, Le1/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v1, p0, Le1/j;->H:I

    invoke-virtual {p0, v1}, Le1/j;->h(I)I

    move-result v1

    iput v1, p0, Le1/j;->H:I

    invoke-virtual {p0}, Le1/j;->g()Le1/f;

    move-result-object v1

    iput-object v1, p0, Le1/j;->E:Le1/f;

    iget v1, p0, Le1/j;->H:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Le1/j;->l()V

    return-void

    :cond_1
    iget v1, p0, Le1/j;->H:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Le1/j;->G:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Le1/j;->j()V

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    iget v0, p0, Le1/j;->I:I

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le1/j;->f()V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Le1/j;->I:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "null"

    goto :goto_0

    :cond_1
    const-string v1, "DECODE_DATA"

    goto :goto_0

    :cond_2
    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    goto :goto_0

    :cond_3
    const-string v1, "INITIALIZE"

    :goto_0
    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Le1/j;->m()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Le1/j;->h(I)I

    move-result v0

    iput v0, p0, Le1/j;->H:I

    invoke-virtual {p0}, Le1/j;->g()Le1/f;

    move-result-object v0

    iput-object v0, p0, Le1/j;->E:Le1/f;

    invoke-virtual {p0}, Le1/j;->m()V

    :goto_1
    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Le1/j;->c:Lz1/h;

    invoke-virtual {v0}, Lz1/h;->a()V

    iget-boolean v0, p0, Le1/j;->F:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Le1/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le1/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iput-boolean v1, p0, Le1/j;->F:Z

    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "DecodeJob"

    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    iget-object v2, p0, Le1/j;->D:Lc1/e;

    :try_start_0
    iget-boolean v3, p0, Le1/j;->G:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Le1/j;->j()V
    :try_end_0
    .catch Le1/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lc1/e;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Le1/j;->n()V
    :try_end_1
    .catch Le1/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lc1/e;->b()V

    :cond_2
    return-void

    :goto_0
    const/4 v4, 0x3

    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Le1/j;->G:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stage: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le1/j;->H:I

    invoke-static {v1}, Le1/i;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    iget v0, p0, Le1/j;->H:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Le1/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Le1/j;->j()V

    :cond_4
    iget-boolean v0, p0, Le1/j;->G:Z

    if-nez v0, :cond_5

    throw v3

    :cond_5
    throw v3

    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lc1/e;->b()V

    :cond_6
    throw v0
.end method
