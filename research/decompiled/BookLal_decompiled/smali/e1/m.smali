.class public final Le1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public volatile b:Ljava/lang/Object;


# virtual methods
.method public a()Lg1/a;
    .locals 4

    iget-object v0, p0, Le1/m;->b:Ljava/lang/Object;

    check-cast v0, Lg1/a;

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le1/m;->b:Ljava/lang/Object;

    check-cast v0, Lg1/a;

    if-nez v0, :cond_4

    iget-object v0, p0, Le1/m;->a:Ljava/lang/Object;

    check-cast v0, LK0/j;

    iget-object v0, v0, LK0/j;->b:Ljava/lang/Object;

    check-cast v0, LL0/f;

    iget-object v0, v0, LL0/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v2, "image_manager_disk_cache"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lg1/d;

    invoke-direct {v1, v3}, Lg1/d;-><init>(Ljava/io/File;)V

    :cond_3
    :goto_1
    iput-object v1, p0, Le1/m;->b:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Le1/m;->b:Ljava/lang/Object;

    check-cast v0, Lg1/a;

    if-nez v0, :cond_5

    new-instance v0, Ld3/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ld3/a;-><init>(I)V

    iput-object v0, p0, Le1/m;->b:Ljava/lang/Object;

    :cond_5
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_4
    iget-object v0, p0, Le1/m;->b:Ljava/lang/Object;

    check-cast v0, Lg1/a;

    return-object v0
.end method

.method public b(Lj3/q;)V
    .locals 2

    const-string v0, "newState"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le1/m;->b:Ljava/lang/Object;

    check-cast v0, Lj3/q;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Le1/m;->b:Ljava/lang/Object;

    check-cast v0, Lj3/q;

    sget-object v1, Lj3/q;->e:Lj3/q;

    if-eq v0, v1, :cond_1

    iput-object p1, p0, Le1/m;->b:Ljava/lang/Object;

    iget-object p1, p0, Le1/m;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Le1/m;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le1/m;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/A;

    iget-object v1, v0, Ll3/A;->a:Lcom/google/firebase/firestore/remote/g;

    iget-object v0, v0, Ll3/A;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
