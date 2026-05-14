.class public final Le1/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/f;
.implements Le1/e;


# instance fields
.field public final a:Le1/g;

.field public final b:Le1/j;

.field public c:I

.field public d:Le1/c;

.field public e:Ljava/lang/Object;

.field public volatile f:Li1/p;

.field public l:Le1/d;


# direct methods
.method public constructor <init>(Le1/g;Le1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/D;->a:Le1/g;

    iput-object p2, p0, Le1/D;->b:Le1/j;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v9, v1, Le1/D;->e:Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    iput-object v10, v1, Le1/D;->e:Ljava/lang/Object;

    const-string v11, "SourceGenerator"

    const-string v12, "Finished encoding source to cache, key: "

    sget v3, Ly1/g;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    :try_start_0
    iget-object v3, v1, Le1/D;->a:Le1/g;

    invoke-virtual {v3, v9}, Le1/g;->d(Ljava/lang/Object;)Lb1/c;

    move-result-object v15

    new-instance v8, LJ2/e;

    iget-object v3, v1, Le1/D;->a:Le1/g;

    iget-object v6, v3, Le1/g;->i:Lb1/h;

    const/16 v7, 0xb

    const/16 v16, 0x0

    move-object v3, v8

    move-object v4, v15

    move-object v5, v9

    move-object v0, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, LJ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    new-instance v3, Le1/d;

    iget-object v4, v1, Le1/D;->f:Li1/p;

    iget-object v4, v4, Li1/p;->a:Lb1/e;

    iget-object v5, v1, Le1/D;->a:Le1/g;

    iget-object v6, v5, Le1/g;->n:Lb1/e;

    invoke-direct {v3, v4, v6}, Le1/d;-><init>(Lb1/e;Lb1/e;)V

    iput-object v3, v1, Le1/D;->l:Le1/d;

    iget-object v3, v5, Le1/g;->h:Le1/m;

    invoke-virtual {v3}, Le1/m;->a()Lg1/a;

    move-result-object v3

    iget-object v4, v1, Le1/D;->l:Le1/d;

    invoke-interface {v3, v4, v0}, Lg1/a;->d(Lb1/e;LJ2/e;)V

    const/4 v0, 0x2

    invoke-static {v11, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Le1/D;->l:Le1/d;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", encoder: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Ly1/g;->a(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, v1, Le1/D;->f:Li1/p;

    iget-object v0, v0, Li1/p;->c:Lc1/e;

    invoke-interface {v0}, Lc1/e;->b()V

    new-instance v0, Le1/c;

    iget-object v3, v1, Le1/D;->f:Li1/p;

    iget-object v3, v3, Li1/p;->a:Lb1/e;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Le1/D;->a:Le1/g;

    invoke-direct {v0, v3, v4, v1}, Le1/c;-><init>(Ljava/util/List;Le1/g;Le1/e;)V

    iput-object v0, v1, Le1/D;->d:Le1/c;

    goto :goto_2

    :goto_1
    iget-object v2, v1, Le1/D;->f:Li1/p;

    iget-object v2, v2, Li1/p;->c:Lc1/e;

    invoke-interface {v2}, Lc1/e;->b()V

    throw v0

    :cond_1
    :goto_2
    iget-object v0, v1, Le1/D;->d:Le1/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Le1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iput-object v10, v1, Le1/D;->d:Le1/c;

    iput-object v10, v1, Le1/D;->f:Li1/p;

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    iget v3, v1, Le1/D;->c:I

    iget-object v4, v1, Le1/D;->a:Le1/g;

    invoke-virtual {v4}, Le1/g;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v3, v1, Le1/D;->a:Le1/g;

    invoke-virtual {v3}, Le1/g;->b()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v1, Le1/D;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Le1/D;->c:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li1/p;

    iput-object v3, v1, Le1/D;->f:Li1/p;

    iget-object v3, v1, Le1/D;->f:Li1/p;

    if-eqz v3, :cond_3

    iget-object v3, v1, Le1/D;->a:Le1/g;

    iget-object v3, v3, Le1/g;->p:Le1/l;

    iget-object v4, v1, Le1/D;->f:Li1/p;

    iget-object v4, v4, Li1/p;->c:Lc1/e;

    invoke-interface {v4}, Lc1/e;->e()Lb1/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Le1/l;->a(Lb1/a;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Le1/D;->a:Le1/g;

    iget-object v4, v1, Le1/D;->f:Li1/p;

    iget-object v4, v4, Li1/p;->c:Lc1/e;

    invoke-interface {v4}, Lc1/e;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Le1/g;->c(Ljava/lang/Class;)Le1/y;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v0, v1, Le1/D;->f:Li1/p;

    iget-object v3, v1, Le1/D;->f:Li1/p;

    iget-object v3, v3, Li1/p;->c:Lc1/e;

    iget-object v4, v1, Le1/D;->a:Le1/g;

    iget-object v4, v4, Le1/g;->o:Lcom/bumptech/glide/d;

    new-instance v5, LD2/e;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-direct {v5, v6, v1, v0, v7}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v3, v4, v5}, Lc1/e;->d(Lcom/bumptech/glide/d;Lc1/d;)V

    move v0, v2

    goto :goto_3

    :cond_5
    return v0
.end method

.method public final b(Lb1/e;Ljava/lang/Object;Lc1/e;Lb1/a;Lb1/e;)V
    .locals 6

    iget-object v0, p0, Le1/D;->b:Le1/j;

    iget-object p4, p0, Le1/D;->f:Li1/p;

    iget-object p4, p4, Li1/p;->c:Lc1/e;

    invoke-interface {p4}, Lc1/e;->e()Lb1/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Le1/j;->b(Lb1/e;Ljava/lang/Object;Lc1/e;Lb1/a;Lb1/e;)V

    return-void
.end method

.method public final c(Lb1/e;Ljava/lang/Exception;Lc1/e;Lb1/a;)V
    .locals 1

    iget-object p4, p0, Le1/D;->b:Le1/j;

    iget-object v0, p0, Le1/D;->f:Li1/p;

    iget-object v0, v0, Li1/p;->c:Lc1/e;

    invoke-interface {v0}, Lc1/e;->e()Lb1/a;

    move-result-object v0

    invoke-virtual {p4, p1, p2, p3, v0}, Le1/j;->c(Lb1/e;Ljava/lang/Exception;Lc1/e;Lb1/a;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Le1/D;->f:Li1/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li1/p;->c:Lc1/e;

    invoke-interface {v0}, Lc1/e;->cancel()V

    :cond_0
    return-void
.end method
