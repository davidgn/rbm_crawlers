.class public final LG4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:LC4/C;

.field public final b:LC4/F;

.field public final c:LG4/l;

.field public final d:LG4/h;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Ljava/lang/Object;

.field public l:LG4/e;

.field public m:LG4/k;

.field public n:LC4/g;

.field public o:Z

.field public p:Z

.field public q:Z

.field public volatile r:Z

.field public volatile s:LC4/g;

.field public volatile t:LG4/k;


# direct methods
.method public constructor <init>(LC4/C;LC4/F;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG4/i;->a:LC4/C;

    iput-object p2, p0, LG4/i;->b:LC4/F;

    iget-object p2, p1, LC4/C;->b:LC4/o;

    iget-object p2, p2, LC4/o;->b:Ljava/lang/Object;

    check-cast p2, LG4/l;

    iput-object p2, p0, LG4/i;->c:LG4/l;

    iget-object p1, p1, LC4/C;->e:LD4/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LG4/h;

    invoke-direct {p1, p0}, LG4/h;-><init>(LG4/i;)V

    const/4 p2, 0x0

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, LQ4/A;->g(JLjava/util/concurrent/TimeUnit;)LQ4/A;

    iput-object p1, p0, LG4/i;->d:LG4/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LG4/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, LG4/i;->q:Z

    return-void
.end method

.method public static final a(LG4/i;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, LG4/i;->r:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LG4/i;->b:LC4/F;

    iget-object p0, p0, LC4/F;->c:Ljava/lang/Object;

    check-cast p0, LC4/y;

    invoke-virtual {p0}, LC4/y;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(LG4/k;)V
    .locals 2

    sget-object v0, LD4/c;->a:[B

    iget-object v0, p0, LG4/i;->m:LG4/k;

    if-nez v0, :cond_0

    iput-object p1, p0, LG4/i;->m:LG4/k;

    iget-object p1, p1, LG4/k;->p:Ljava/util/ArrayList;

    new-instance v0, LG4/g;

    iget-object v1, p0, LG4/i;->f:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, LG4/g;-><init>(LG4/i;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    sget-object v0, LD4/c;->a:[B

    iget-object v0, p0, LG4/i;->m:LG4/k;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LG4/i;->k()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, LG4/i;->m:LG4/k;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v1}, LD4/c;->e(Ljava/net/Socket;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, LG4/i;->d:LG4/h;

    invoke-virtual {v0}, LQ4/d;->i()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    :cond_5
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, LG4/i;

    iget-object v1, p0, LG4/i;->b:LC4/F;

    iget-object v2, p0, LG4/i;->a:LC4/C;

    invoke-direct {v0, v2, v1}, LG4/i;-><init>(LC4/C;LC4/F;)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, LG4/i;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LG4/i;->r:Z

    iget-object v0, p0, LG4/i;->s:LC4/g;

    if-eqz v0, :cond_1

    iget-object v0, v0, LC4/g;->d:Ljava/lang/Object;

    check-cast v0, LH4/e;

    invoke-interface {v0}, LH4/e;->cancel()V

    :cond_1
    iget-object v0, p0, LG4/i;->t:LG4/k;

    if-eqz v0, :cond_2

    iget-object v0, v0, LG4/k;->c:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, LD4/c;->e(Ljava/net/Socket;)V

    :cond_2
    return-void
.end method

.method public final e(LC4/j;)V
    .locals 5

    iget-object v0, p0, LG4/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, LL4/n;->a:LL4/n;

    sget-object v0, LL4/n;->a:LL4/n;

    invoke-virtual {v0}, LL4/n;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LG4/i;->f:Ljava/lang/Object;

    iget-object v0, p0, LG4/i;->a:LC4/C;

    iget-object v0, v0, LC4/C;->a:LR0/i;

    new-instance v1, LG4/f;

    invoke-direct {v1, p0, p1}, LG4/f;-><init>(LG4/i;LC4/j;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, LR0/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LG4/i;->b:LC4/F;

    iget-object p1, p1, LC4/F;->c:Ljava/lang/Object;

    check-cast p1, LC4/y;

    iget-object p1, p1, LC4/y;->d:Ljava/lang/String;

    iget-object v2, v0, LR0/i;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG4/f;

    iget-object v4, v3, LG4/f;->c:LG4/i;

    iget-object v4, v4, LG4/i;->b:LC4/F;

    iget-object v4, v4, LC4/F;->c:Ljava/lang/Object;

    check-cast v4, LC4/y;

    iget-object v4, v4, LC4/y;->d:Ljava/lang/String;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    iget-object v2, v0, LR0/i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG4/f;

    iget-object v4, v3, LG4/f;->c:LG4/i;

    iget-object v4, v4, LG4/i;->b:LC4/F;

    iget-object v4, v4, LC4/F;->c:Ljava/lang/Object;

    check-cast v4, LC4/y;

    iget-object v4, v4, LC4/y;->d:Ljava/lang/String;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    iget-object p1, v3, LG4/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v1, LG4/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    invoke-virtual {v0}, LR0/i;->q()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    const-string p1, "Already Executed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()LC4/I;
    .locals 3

    iget-object v0, p0, LG4/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG4/i;->d:LG4/h;

    invoke-virtual {v0}, LQ4/d;->h()V

    sget-object v0, LL4/n;->a:LL4/n;

    sget-object v0, LL4/n;->a:LL4/n;

    invoke-virtual {v0}, LL4/n;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LG4/i;->f:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, LG4/i;->a:LC4/C;

    iget-object v0, v0, LC4/C;->a:LR0/i;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    invoke-virtual {p0}, LG4/i;->h()LC4/I;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, LG4/i;->a:LC4/C;

    iget-object v1, v1, LC4/C;->a:LR0/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, LR0/i;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, LR0/i;->e(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    iget-object v1, p0, LG4/i;->a:LC4/C;

    iget-object v1, v1, LC4/C;->a:LR0/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, LR0/i;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, LR0/i;->e(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-string v0, "Already Executed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final g(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LG4/i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, LG4/i;->s:LC4/g;

    if-eqz p1, :cond_0

    iget-object v1, p1, LC4/g;->d:Ljava/lang/Object;

    check-cast v1, LH4/e;

    invoke-interface {v1}, LH4/e;->cancel()V

    const/4 v1, 0x1

    iget-object v2, p1, LC4/g;->b:Ljava/lang/Object;

    check-cast v2, LG4/i;

    invoke-virtual {v2, p1, v1, v1, v0}, LG4/i;->i(LC4/g;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, LG4/i;->n:LC4/g;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h()LC4/I;
    .locals 11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, LG4/i;->a:LC4/C;

    iget-object v0, v0, LC4/C;->c:Ljava/util/List;

    invoke-static {v2, v0}, LZ3/m;->d0(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, LH4/a;

    iget-object v1, p0, LG4/i;->a:LC4/C;

    invoke-direct {v0, v1}, LH4/a;-><init>(LC4/C;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LH4/a;

    iget-object v1, p0, LG4/i;->a:LC4/C;

    iget-object v1, v1, LC4/C;->o:LC4/b;

    invoke-direct {v0, v1}, LH4/a;-><init>(LC4/b;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LE4/b;

    iget-object v1, p0, LG4/i;->a:LC4/C;

    iget-object v1, v1, LC4/C;->p:LC4/h;

    invoke-direct {v0, v1}, LE4/b;-><init>(LC4/h;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LG4/a;->a:LG4/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LG4/i;->a:LC4/C;

    iget-object v0, v0, LC4/C;->d:Ljava/util/List;

    invoke-static {v2, v0}, LZ3/m;->d0(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, LH4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, LH4/g;

    iget-object v5, p0, LG4/i;->b:LC4/F;

    iget-object v0, p0, LG4/i;->a:LC4/C;

    iget v6, v0, LC4/C;->B:I

    iget v7, v0, LC4/C;->C:I

    iget v8, v0, LC4/C;->D:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, LH4/g;-><init>(LG4/i;Ljava/util/ArrayList;ILC4/g;LC4/F;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LG4/i;->b:LC4/F;

    invoke-virtual {v9, v2}, LH4/g;->b(LC4/F;)LC4/I;

    move-result-object v2

    iget-boolean v3, p0, LG4/i;->r:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, LG4/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {v2}, LD4/c;->d(Ljava/io/Closeable;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, LG4/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    move v10, v2

    move-object v2, v1

    move v1, v10

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, LG4/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    throw v2
.end method

.method public final i(LC4/g;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LG4/i;->s:LC4/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    monitor-enter p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, LG4/i;->o:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, LG4/i;->p:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v0, p0, LG4/i;->o:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean v0, p0, LG4/i;->p:Z

    :cond_4
    iget-boolean p2, p0, LG4/i;->o:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, LG4/i;->p:Z

    if-nez p3, :cond_5

    move p3, p1

    goto :goto_1

    :cond_5
    move p3, v0

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, LG4/i;->p:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, LG4/i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move v0, p1

    :cond_6
    move p2, v0

    move v0, p3

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, v0

    :goto_3
    monitor-exit p0

    if-eqz v0, :cond_8

    const/4 p3, 0x0

    iput-object p3, p0, LG4/i;->s:LC4/g;

    iget-object p3, p0, LG4/i;->m:LG4/k;

    if-eqz p3, :cond_8

    monitor-enter p3

    :try_start_1
    iget v0, p3, LG4/k;->m:I

    add-int/2addr v0, p1

    iput v0, p3, LG4/k;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, LG4/i;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p4
.end method

.method public final j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LG4/i;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LG4/i;->q:Z

    iget-boolean v0, p0, LG4/i;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LG4/i;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, LG4/i;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final k()Ljava/net/Socket;
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, LG4/i;->m:LG4/k;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    sget-object v2, LD4/c;->a:[B

    iget-object v2, v1, LG4/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_1
    if-eq v4, v6, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, LG4/i;->m:LG4/k;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v1, LG4/k;->q:J

    iget-object v2, p0, LG4/i;->c:LG4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LD4/c;->a:[B

    iget-boolean v4, v1, LG4/k;->j:Z

    iget-object v5, v2, LG4/l;->b:LF4/b;

    if-nez v4, :cond_2

    iget-object v0, v2, LG4/l;->c:LE4/h;

    invoke-static {v5, v0}, LF4/b;->d(LF4/b;LF4/a;)V

    goto :goto_2

    :cond_2
    iput-boolean v0, v1, LG4/k;->j:Z

    iget-object v0, v2, LG4/l;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, LF4/b;->a()V

    :cond_3
    iget-object v0, v1, LG4/k;->d:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
