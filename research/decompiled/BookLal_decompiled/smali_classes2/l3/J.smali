.class public final Ll3/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/T0;


# instance fields
.field public final a:Lj3/J;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lj3/w0;

.field public e:Ll3/H;

.field public f:Ll3/H;

.field public g:Ll3/H;

.field public h:Li1/D;

.field public i:Ljava/util/Collection;

.field public j:Lj3/r0;

.field public k:Lj3/B;

.field public l:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lj3/w0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ll3/J;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj3/J;->a(Ljava/lang/Class;Ljava/lang/String;)Lj3/J;

    move-result-object v0

    iput-object v0, p0, Ll3/J;->a:Lj3/J;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll3/J;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ll3/J;->i:Ljava/util/Collection;

    iput-object p1, p0, Ll3/J;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ll3/J;->d:Lj3/w0;

    return-void
.end method


# virtual methods
.method public final a(Ll3/S0;)Ljava/lang/Runnable;
    .locals 2

    check-cast p1, Li1/D;

    iput-object p1, p0, Ll3/J;->h:Li1/D;

    new-instance v0, Ll3/H;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll3/H;-><init>(Li1/D;I)V

    iput-object v0, p0, Ll3/J;->e:Ll3/H;

    new-instance v0, Ll3/H;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ll3/H;-><init>(Li1/D;I)V

    iput-object v0, p0, Ll3/J;->f:Ll3/H;

    new-instance v0, Ll3/H;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ll3/H;-><init>(Li1/D;I)V

    iput-object v0, p0, Ll3/J;->g:Ll3/H;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lj3/r0;)V
    .locals 6

    invoke-virtual {p0, p1}, Ll3/J;->c(Lj3/r0;)V

    iget-object v0, p0, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/J;->i:Ljava/util/Collection;

    iget-object v2, p0, Ll3/J;->g:Ll3/H;

    const/4 v3, 0x0

    iput-object v3, p0, Ll3/J;->g:Ll3/H;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Ll3/J;->i:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/I;

    new-instance v3, Ll3/U;

    sget-object v4, Ll3/t;->b:Ll3/t;

    iget-object v5, v1, Ll3/I;->l:[Lj3/B;

    invoke-direct {v3, p1, v4, v5}, Ll3/U;-><init>(Lj3/r0;Ll3/t;[Lj3/B;)V

    invoke-virtual {v1, v3}, Ll3/N;->t(Ll3/s;)Ll3/L;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ll3/L;->run()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ll3/J;->d:Lj3/w0;

    invoke-virtual {p1, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lj3/r0;)V
    .locals 4

    iget-object v0, p0, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/J;->j:Lj3/r0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ll3/J;->j:Lj3/r0;

    iget-object v1, p0, Ll3/J;->d:Lj3/w0;

    new-instance v2, Ll3/B;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ll3/J;->g()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ll3/J;->g:Ll3/H;

    if-eqz p1, :cond_1

    iget-object v1, p0, Ll3/J;->d:Lj3/w0;

    invoke-virtual {v1, p1}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ll3/J;->g:Ll3/H;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ll3/J;->d:Lj3/w0;

    invoke-virtual {p1}, Lj3/w0;->a()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;
    .locals 6

    :try_start_0
    new-instance v0, Ll3/f1;

    invoke-direct {v0, p1, p2, p3}, Ll3/f1;-><init>(Lj3/h0;Lj3/f0;Lj3/g;)V

    const/4 p1, 0x0

    const-wide/16 v1, -0x1

    :goto_0
    iget-object p2, p0, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Ll3/J;->j:Lj3/r0;

    if-eqz v3, :cond_0

    new-instance p1, Ll3/U;

    sget-object p3, Ll3/t;->a:Ll3/t;

    invoke-direct {p1, v3, p3, p4}, Ll3/U;-><init>(Lj3/r0;Ll3/t;[Lj3/B;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p2, p0, Ll3/J;->d:Lj3/w0;

    invoke-virtual {p2}, Lj3/w0;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_2
    iget-object v3, p0, Ll3/J;->k:Lj3/B;

    if-nez v3, :cond_1

    invoke-virtual {p0, v0, p4}, Ll3/J;->f(Ll3/f1;[Lj3/B;)Ll3/I;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v4, p0, Ll3/J;->l:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_2

    invoke-virtual {p0, v0, p4}, Ll3/J;->f(Ll3/f1;[Lj3/B;)Ll3/I;

    move-result-object p1

    monitor-exit p2

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Ll3/J;->l:J

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3, v0}, Lj3/B;->c(Ll3/f1;)Lj3/N;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p3, Lj3/g;->f:Ljava/lang/Boolean;

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Ll3/b0;->f(Lj3/N;Z)Ll3/v;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, v0, Ll3/f1;->c:Lj3/h0;

    iget-object p3, v0, Ll3/f1;->b:Lj3/f0;

    iget-object v0, v0, Ll3/f1;->a:Lj3/g;

    invoke-interface {p1, p2, p3, v0, p4}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    move-object p1, v3

    goto :goto_0

    :goto_2
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    iget-object p2, p0, Ll3/J;->d:Lj3/w0;

    invoke-virtual {p2}, Lj3/w0;->a()V

    throw p1
.end method

.method public final e()Lj3/J;
    .locals 1

    iget-object v0, p0, Ll3/J;->a:Lj3/J;

    return-object v0
.end method

.method public final f(Ll3/f1;[Lj3/B;)Ll3/I;
    .locals 1

    new-instance v0, Ll3/I;

    invoke-direct {v0, p0, p1, p2}, Ll3/I;-><init>(Ll3/J;Ll3/f1;[Lj3/B;)V

    iget-object p1, p0, Ll3/J;->i:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Ll3/J;->i:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Ll3/J;->d:Lj3/w0;

    iget-object p2, p0, Ll3/J;->e:Ll3/H;

    invoke-virtual {p1, p2}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/J;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Lj3/B;)V
    .locals 11

    iget-object v0, p0, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Ll3/J;->k:Lj3/B;

    iget-wide v1, p0, Ll3/J;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ll3/J;->l:J

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ll3/J;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ll3/J;->i:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/I;

    iget-object v3, v2, Ll3/I;->j:Ll3/f1;

    invoke-virtual {p1, v3}, Lj3/B;->c(Ll3/f1;)Lj3/N;

    move-result-object v3

    iget-object v4, v2, Ll3/I;->j:Ll3/f1;

    iget-object v4, v4, Ll3/f1;->a:Lj3/g;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v4, Lj3/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v3, v5}, Ll3/b0;->f(Lj3/N;Z)Ll3/v;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Ll3/J;->c:Ljava/util/concurrent/Executor;

    iget-object v4, v4, Lj3/g;->b:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_2

    move-object v5, v4

    :cond_2
    iget-object v4, v2, Ll3/I;->k:Lj3/u;

    invoke-virtual {v4}, Lj3/u;->a()Lj3/u;

    move-result-object v6

    :try_start_1
    iget-object v7, v2, Ll3/I;->j:Ll3/f1;

    iget-object v8, v7, Ll3/f1;->c:Lj3/h0;

    iget-object v9, v7, Ll3/f1;->b:Lj3/f0;

    iget-object v7, v7, Ll3/f1;->a:Lj3/g;

    iget-object v10, v2, Ll3/I;->l:[Lj3/B;

    invoke-interface {v3, v8, v9, v7, v10}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4, v6}, Lj3/u;->c(Lj3/u;)V

    invoke-virtual {v2, v3}, Ll3/N;->t(Ll3/s;)Ll3/L;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v5, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v4, v6}, Lj3/u;->c(Lj3/u;)V

    throw p1

    :cond_4
    iget-object p1, p0, Ll3/J;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0}, Ll3/J;->g()Z

    move-result v1

    if-nez v1, :cond_5

    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Ll3/J;->i:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ll3/J;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ll3/J;->i:Ljava/util/Collection;

    :cond_6
    invoke-virtual {p0}, Ll3/J;->g()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Ll3/J;->d:Lj3/w0;

    iget-object v1, p0, Ll3/J;->f:Ll3/H;

    invoke-virtual {v0, v1}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ll3/J;->j:Lj3/r0;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ll3/J;->g:Ll3/H;

    if-eqz v0, :cond_7

    iget-object v1, p0, Ll3/J;->d:Lj3/w0;

    invoke-virtual {v1, v0}, Lj3/w0;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/J;->g:Ll3/H;

    :cond_7
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Ll3/J;->d:Lj3/w0;

    invoke-virtual {p1}, Lj3/w0;->a()V

    return-void

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_8
    :goto_2
    :try_start_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
