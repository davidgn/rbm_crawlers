.class public final Ll3/G;
.super Lj3/j;
.source "SourceFile"


# instance fields
.field public final a:Lj3/j;

.field public volatile b:Z

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lj3/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/G;->c:Ljava/util/List;

    iput-object p1, p0, Ll3/G;->a:Lj3/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll3/G;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/G;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onClose(Lj3/r0;Lj3/f0;)V
    .locals 2

    new-instance v0, LJ/k;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, p2, v1}, LJ/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ll3/G;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onHeaders(Lj3/f0;)V
    .locals 2

    iget-boolean v0, p0, Ll3/G;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/G;->a:Lj3/j;

    invoke-virtual {v0, p1}, Lj3/j;->onHeaders(Lj3/f0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ll3/B;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/G;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final onMessage(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Ll3/G;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/G;->a:Lj3/j;

    invoke-virtual {v0, p1}, Lj3/j;->onMessage(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ll3/B;

    check-cast p1, Lcom/google/protobuf/t0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ll3/G;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final onReady()V
    .locals 2

    iget-boolean v0, p0, Ll3/G;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/G;->a:Lj3/j;

    invoke-virtual {v0}, Lj3/j;->onReady()V

    goto :goto_0

    :cond_0
    new-instance v0, LA2/h;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ll3/G;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
