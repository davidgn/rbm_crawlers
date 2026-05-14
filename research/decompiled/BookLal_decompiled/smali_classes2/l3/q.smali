.class public final Ll3/q;
.super LU0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJ2/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/q;->c:I

    .line 5
    iput-object p1, p0, Ll3/q;->d:Ljava/lang/Object;

    .line 6
    iget-object p1, p1, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, Ll3/r;

    .line 7
    iget-object p1, p1, Ll3/r;->f:Lj3/u;

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0}, LU0/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ll3/H0;Lj3/u;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/q;->c:I

    .line 1
    iput-object p1, p0, Ll3/q;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, LU0/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ll3/H0;Ll3/G;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ll3/q;->c:I

    .line 2
    iput-object p2, p0, Ll3/q;->d:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ll3/H0;->c:Lj3/u;

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, LU0/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget v0, p0, Ll3/q;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/q;->d:Ljava/lang/Object;

    check-cast v0, Ll3/G;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Ll3/G;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Ll3/G;->c:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll3/G;->b:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v2, v0, Ll3/G;->c:Ljava/util/List;

    iput-object v1, v0, Ll3/G;->c:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object v1, v2

    goto :goto_0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_0
    iget-object v0, p0, Ll3/q;->d:Ljava/lang/Object;

    check-cast v0, Ll3/H0;

    invoke-virtual {v0}, Ll3/H0;->c()V

    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/q;->d:Ljava/lang/Object;

    check-cast v0, LJ2/e;

    iget-object v1, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ll3/r;

    iget-object v2, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, Ll3/r;

    iget-object v1, v1, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->b()V

    sget-object v1, Ly3/b;->a:Ly3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v1, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, Lj3/r0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    :try_start_3
    iget-object v1, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lj3/j;

    invoke-virtual {v1}, Lj3/j;->onReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    sget-object v3, Lj3/r0;->f:Lj3/r0;

    invoke-virtual {v3, v1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v1

    const-string v3, "Failed to call onReady."

    invoke-virtual {v1, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    iput-object v1, v0, LJ2/e;->c:Ljava/lang/Object;

    iget-object v0, v2, Ll3/r;->j:Ll3/s;

    invoke-interface {v0, v1}, Ll3/s;->d(Lj3/r0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    iget-object v0, v2, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->d()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, v2, Ll3/r;->b:Ly3/c;

    invoke-static {}, Ly3/b;->d()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
