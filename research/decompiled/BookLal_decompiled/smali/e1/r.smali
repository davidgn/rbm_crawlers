.class public final Le1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/e;


# static fields
.field public static final A:Ly3/c;


# instance fields
.field public final a:Le1/q;

.field public final b:Lz1/h;

.field public final c:Le1/n;

.field public final d:LJ2/e;

.field public final e:Ly3/c;

.field public final f:Le1/n;

.field public final l:Lh1/c;

.field public final m:Lh1/c;

.field public final n:Lh1/c;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public p:Le1/s;

.field public q:Z

.field public r:Z

.field public s:Le1/A;

.field public t:Lb1/a;

.field public u:Z

.field public v:Le1/v;

.field public w:Z

.field public x:Le1/t;

.field public y:Le1/j;

.field public volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly3/c;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ly3/c;-><init>(I)V

    sput-object v0, Le1/r;->A:Ly3/c;

    return-void
.end method

.method public constructor <init>(Lh1/c;Lh1/c;Lh1/c;Lh1/c;Le1/n;Le1/n;LJ2/e;)V
    .locals 3

    sget-object p3, Le1/r;->A:Ly3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le1/q;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Le1/q;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Le1/r;->a:Le1/q;

    new-instance v0, Lz1/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le1/r;->b:Lz1/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Le1/r;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Le1/r;->l:Lh1/c;

    iput-object p2, p0, Le1/r;->m:Lh1/c;

    iput-object p4, p0, Le1/r;->n:Lh1/c;

    iput-object p5, p0, Le1/r;->f:Le1/n;

    iput-object p6, p0, Le1/r;->c:Le1/n;

    iput-object p7, p0, Le1/r;->d:LJ2/e;

    iput-object p3, p0, Le1/r;->e:Ly3/c;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lu1/e;LI/i;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le1/r;->b:Lz1/h;

    invoke-virtual {v0}, Lz1/h;->a()V

    iget-object v0, p0, Le1/r;->a:Le1/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le1/p;

    invoke-direct {v1, p1, p2}, Le1/p;-><init>(Lu1/e;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Le1/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Le1/r;->u:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Le1/r;->e(I)V

    new-instance v0, Le1/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Le1/o;-><init>(Le1/r;Lu1/e;I)V

    invoke-virtual {p2, v0}, LI/i;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Le1/r;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Le1/r;->e(I)V

    new-instance v0, Le1/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le1/o;-><init>(Le1/r;Lu1/e;I)V

    invoke-virtual {p2, v0}, LI/i;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Le1/r;->z:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p1, p2}, LW2/B;->g(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, Le1/r;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le1/r;->z:Z

    iget-object v1, p0, Le1/r;->y:Le1/j;

    iput-boolean v0, v1, Le1/j;->G:Z

    iget-object v0, v1, Le1/j;->E:Le1/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le1/f;->cancel()V

    :cond_1
    iget-object v0, p0, Le1/r;->f:Le1/n;

    iget-object v1, p0, Le1/r;->p:Le1/s;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Le1/n;->a:Le1/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Le1/x;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le1/r;->b:Lz1/h;

    invoke-virtual {v0}, Lz1/h;->a()V

    invoke-virtual {p0}, Le1/r;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, LW2/B;->g(ZLjava/lang/String;)V

    iget-object v0, p0, Le1/r;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, LW2/B;->g(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Le1/r;->x:Le1/t;

    invoke-virtual {p0}, Le1/r;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Le1/t;->e()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lz1/h;
    .locals 1

    iget-object v0, p0, Le1/r;->b:Lz1/h;

    return-object v0
.end method

.method public final declared-synchronized e(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Le1/r;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, LW2/B;->g(ZLjava/lang/String;)V

    iget-object v0, p0, Le1/r;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le1/r;->x:Le1/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le1/t;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Le1/r;->w:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le1/r;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le1/r;->z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le1/r;->p:Le1/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le1/r;->a:Le1/q;

    iget-object v0, v0, Le1/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Le1/r;->p:Le1/s;

    iput-object v0, p0, Le1/r;->x:Le1/t;

    iput-object v0, p0, Le1/r;->s:Le1/A;

    const/4 v1, 0x0

    iput-boolean v1, p0, Le1/r;->w:Z

    iput-boolean v1, p0, Le1/r;->z:Z

    iput-boolean v1, p0, Le1/r;->u:Z

    iget-object v1, p0, Le1/r;->y:Le1/j;

    iget-object v2, v1, Le1/j;->l:Le1/h;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v2, Le1/h;->a:Z

    invoke-virtual {v2}, Le1/h;->a()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Le1/j;->k()V

    :cond_0
    iput-object v0, p0, Le1/r;->y:Le1/j;

    iput-object v0, p0, Le1/r;->v:Le1/v;

    iput-object v0, p0, Le1/r;->t:Lb1/a;

    iget-object v0, p0, Le1/r;->d:LJ2/e;

    invoke-virtual {v0, p0}, LJ2/e;->N(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized h(Lu1/e;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le1/r;->b:Lz1/h;

    invoke-virtual {v0}, Lz1/h;->a()V

    iget-object v0, p0, Le1/r;->a:Le1/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le1/p;

    sget-object v2, Ly1/f;->b:Lh/G;

    invoke-direct {v1, p1, v2}, Le1/p;-><init>(Lu1/e;Ljava/util/concurrent/Executor;)V

    iget-object p1, v0, Le1/q;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Le1/r;->a:Le1/q;

    iget-object p1, p1, Le1/q;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le1/r;->b()V

    iget-boolean p1, p0, Le1/r;->u:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Le1/r;->w:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Le1/r;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Le1/r;->g()V
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
