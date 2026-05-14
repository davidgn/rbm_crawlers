.class public final Lj0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/C;
.implements Ll3/S0;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lj0/d;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lj0/d;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj0/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj0/d;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lj0/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk0/e;Lj0/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj0/d;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lj0/d;->b:Z

    .line 7
    iput-object p1, p0, Lj0/d;->c:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lj0/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll3/o0;Ll3/l0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj0/d;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/d;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lj0/d;->b:Z

    .line 11
    iput-object p2, p0, Lj0/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lu1/b;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    check-cast p1, Lu1/e;

    invoke-virtual {p1}, Lu1/e;->c()V

    :cond_3
    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/d;->b:Z

    iget-object v0, p0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Lj0/a;

    iget-object v1, p0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v1, Lk0/e;

    invoke-interface {v0, v1, p1}, Lj0/a;->onLoadFinished(Lk0/e;Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ly1/k;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu1/b;

    check-cast v1, Lu1/e;

    invoke-virtual {v1}, Lu1/e;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lu1/e;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v1, Lu1/e;->z:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lu1/e;->c()V

    iget-boolean v2, p0, Lj0/d;->b:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lu1/e;->a()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method public d(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 2

    iget-object v0, p0, Lj0/d;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lj0/d;->b:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lj0/d;->d:Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Z)V
    .locals 4

    iget-object v0, p0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v0, Ll3/l0;

    iget-object v1, p0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v1, Ll3/o0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/i;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1, v0, p1}, Landroidx/fragment/app/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, v1, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {p1, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Lj3/r0;)V
    .locals 5

    iget-object v0, p0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v1, v0, Ll3/o0;->i:Lj3/i;

    iget-object v2, p0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v2, Ll3/l0;

    invoke-virtual {v2}, Ll3/W;->e()Lj3/J;

    move-result-object v2

    invoke-static {p1}, Ll3/o0;->i(Lj3/r0;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{0} SHUTDOWN with {1}"

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3, v2}, Lj3/i;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj0/d;->b:Z

    new-instance v1, Ll3/B;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {p1, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 6

    iget-boolean v0, p0, Lj0/d;->b:Z

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v1, v0, Ll3/o0;->i:Lj3/i;

    iget-object v2, p0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v2, Ll3/l0;

    invoke-virtual {v2}, Ll3/W;->e()Lj3/J;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "{0} Terminated"

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4, v3}, Lj3/i;->f(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Ll3/o0;->g:Lj3/F;

    iget-object v1, v1, Lj3/F;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ll3/W;->e()Lj3/J;

    move-result-object v3

    iget-wide v3, v3, Lj3/J;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/I;

    new-instance v1, Landroidx/fragment/app/i;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/fragment/app/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object v0, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Ll3/m0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ll3/m0;-><init>(Lj0/d;I)V

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lj0/d;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lj0/d;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Lj0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
