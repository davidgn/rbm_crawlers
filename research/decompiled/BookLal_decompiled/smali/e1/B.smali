.class public final Le1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/f;
.implements Lc1/d;


# instance fields
.field public final a:Le1/j;

.field public final b:Le1/g;

.field public c:I

.field public d:I

.field public e:Lb1/e;

.field public f:Ljava/util/List;

.field public l:I

.field public volatile m:Li1/p;

.field public n:Ljava/io/File;

.field public o:Le1/C;


# direct methods
.method public constructor <init>(Le1/g;Le1/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le1/B;->d:I

    iput-object p1, p0, Le1/B;->b:Le1/g;

    iput-object p2, p0, Le1/B;->a:Le1/j;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Le1/B;->b:Le1/g;

    invoke-virtual {v0}, Le1/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Le1/B;->b:Le1/g;

    iget-object v4, v2, Le1/g;->c:Lcom/bumptech/glide/c;

    iget-object v4, v4, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/f;

    iget-object v5, v2, Le1/g;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Le1/g;->g:Ljava/lang/Class;

    iget-object v2, v2, Le1/g;->k:Ljava/lang/Class;

    iget-object v7, v4, Lcom/bumptech/glide/f;->h:Lj3/G;

    iget-object v8, v7, Lj3/G;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly1/i;

    if-nez v8, :cond_1

    new-instance v8, Ly1/i;

    invoke-direct {v8, v5, v6, v2}, Ly1/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iput-object v5, v8, Ly1/i;->a:Ljava/lang/Class;

    iput-object v6, v8, Ly1/i;->b:Ljava/lang/Class;

    iput-object v2, v8, Ly1/i;->c:Ljava/lang/Class;

    :goto_0
    iget-object v10, v7, Lj3/G;->c:Ljava/lang/Object;

    check-cast v10, Lr/b;

    monitor-enter v10

    :try_start_0
    iget-object v11, v7, Lj3/G;->c:Ljava/lang/Object;

    check-cast v11, Lr/b;

    invoke-virtual {v11, v8, v9}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v7, v7, Lj3/G;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v11, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v4, Lcom/bumptech/glide/f;->a:Li1/t;

    monitor-enter v7

    :try_start_1
    iget-object v8, v7, Li1/t;->a:Li1/w;

    invoke-virtual {v8, v5}, Li1/w;->c(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    iget-object v10, v4, Lcom/bumptech/glide/f;->c:Lj3/G;

    invoke-virtual {v10, v8, v6}, Lj3/G;->o(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    iget-object v12, v4, Lcom/bumptech/glide/f;->f:LC4/v;

    invoke-virtual {v12, v10, v2}, LC4/v;->h(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v4, v4, Lcom/bumptech/glide/f;->h:Lj3/G;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v4, Lj3/G;->c:Ljava/lang/Object;

    check-cast v8, Lr/b;

    monitor-enter v8

    :try_start_2
    iget-object v4, v4, Lj3/G;->c:Ljava/lang/Object;

    check-cast v4, Lr/b;

    new-instance v10, Ly1/i;

    invoke-direct {v10, v5, v6, v2}, Ly1/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v7}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const-class v0, Ljava/io/File;

    iget-object v2, v1, Le1/B;->b:Le1/g;

    iget-object v2, v2, Le1/g;->k:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find any load path from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Le1/B;->b:Le1/g;

    iget-object v3, v3, Le1/g;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Le1/B;->b:Le1/g;

    iget-object v3, v3, Le1/g;->k:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object v2, v1, Le1/B;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    iget v5, v1, Le1/B;->l:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_a

    iput-object v9, v1, Le1/B;->m:Li1/p;

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    iget v0, v1, Le1/B;->l:I

    iget-object v2, v1, Le1/B;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v0, v1, Le1/B;->f:Ljava/util/List;

    iget v2, v1, Le1/B;->l:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v1, Le1/B;->l:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/q;

    iget-object v2, v1, Le1/B;->n:Ljava/io/File;

    iget-object v5, v1, Le1/B;->b:Le1/g;

    iget v6, v5, Le1/g;->e:I

    iget v7, v5, Le1/g;->f:I

    iget-object v5, v5, Le1/g;->i:Lb1/h;

    invoke-interface {v0, v2, v6, v7, v5}, Li1/q;->a(Ljava/lang/Object;IILb1/h;)Li1/p;

    move-result-object v0

    iput-object v0, v1, Le1/B;->m:Li1/p;

    iget-object v0, v1, Le1/B;->m:Li1/p;

    if-eqz v0, :cond_8

    iget-object v0, v1, Le1/B;->b:Le1/g;

    iget-object v2, v1, Le1/B;->m:Li1/p;

    iget-object v2, v2, Li1/p;->c:Lc1/e;

    invoke-interface {v2}, Lc1/e;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Le1/g;->c(Ljava/lang/Class;)Le1/y;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Le1/B;->m:Li1/p;

    iget-object v0, v0, Li1/p;->c:Lc1/e;

    iget-object v2, v1, Le1/B;->b:Le1/g;

    iget-object v2, v2, Le1/g;->o:Lcom/bumptech/glide/d;

    invoke-interface {v0, v2, v1}, Lc1/e;->d(Lcom/bumptech/glide/d;Lc1/d;)V

    move v3, v4

    goto :goto_4

    :cond_9
    return v3

    :cond_a
    iget v2, v1, Le1/B;->d:I

    add-int/2addr v2, v4

    iput v2, v1, Le1/B;->d:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_c

    iget v2, v1, Le1/B;->c:I

    add-int/2addr v2, v4

    iput v2, v1, Le1/B;->c:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_b

    return v3

    :cond_b
    iput v3, v1, Le1/B;->d:I

    :cond_c
    iget v2, v1, Le1/B;->c:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/e;

    iget v4, v1, Le1/B;->d:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v5, v1, Le1/B;->b:Le1/g;

    invoke-virtual {v5, v4}, Le1/g;->e(Ljava/lang/Class;)Lb1/l;

    move-result-object v18

    new-instance v5, Le1/C;

    iget-object v6, v1, Le1/B;->b:Le1/g;

    iget-object v7, v6, Le1/g;->c:Lcom/bumptech/glide/c;

    iget-object v13, v7, Lcom/bumptech/glide/c;->a:Lf1/f;

    iget-object v15, v6, Le1/g;->n:Lb1/e;

    iget v7, v6, Le1/g;->e:I

    iget v8, v6, Le1/g;->f:I

    iget-object v10, v6, Le1/g;->i:Lb1/h;

    move-object v12, v5

    move-object v14, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Le1/C;-><init>(Lf1/f;Lb1/e;Lb1/e;IILb1/l;Ljava/lang/Class;Lb1/h;)V

    iput-object v5, v1, Le1/B;->o:Le1/C;

    iget-object v4, v6, Le1/g;->h:Le1/m;

    invoke-virtual {v4}, Le1/m;->a()Lg1/a;

    move-result-object v4

    iget-object v5, v1, Le1/B;->o:Le1/C;

    invoke-interface {v4, v5}, Lg1/a;->i(Lb1/e;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Le1/B;->n:Ljava/io/File;

    if-eqz v4, :cond_7

    iput-object v2, v1, Le1/B;->e:Lb1/e;

    iget-object v2, v1, Le1/B;->b:Le1/g;

    iget-object v2, v2, Le1/g;->c:Lcom/bumptech/glide/c;

    iget-object v2, v2, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/f;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Le1/B;->f:Ljava/util/List;

    iput v3, v1, Le1/B;->l:I

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Le1/B;->a:Le1/j;

    iget-object v1, p0, Le1/B;->o:Le1/C;

    iget-object v2, p0, Le1/B;->m:Li1/p;

    iget-object v2, v2, Li1/p;->c:Lc1/e;

    sget-object v3, Lb1/a;->d:Lb1/a;

    invoke-virtual {v0, v1, p1, v2, v3}, Le1/j;->c(Lb1/e;Ljava/lang/Exception;Lc1/e;Lb1/a;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Le1/B;->m:Li1/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li1/p;->c:Lc1/e;

    invoke-interface {v0}, Lc1/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Le1/B;->a:Le1/j;

    iget-object v1, p0, Le1/B;->e:Lb1/e;

    iget-object v2, p0, Le1/B;->m:Li1/p;

    iget-object v3, v2, Li1/p;->c:Lc1/e;

    sget-object v4, Lb1/a;->d:Lb1/a;

    iget-object v5, p0, Le1/B;->o:Le1/C;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Le1/j;->b(Lb1/e;Ljava/lang/Object;Lc1/e;Lb1/a;Lb1/e;)V

    return-void
.end method
