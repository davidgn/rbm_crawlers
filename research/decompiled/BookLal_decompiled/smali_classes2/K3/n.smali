.class public final LK3/n;
.super LQ3/a;
.source "SourceFile"


# instance fields
.field public final f:Lcom/google/firebase/inappmessaging/internal/k;

.field public final l:Lz2/e;

.field public final m:Ly3/c;

.field public final n:Ly3/c;


# direct methods
.method public constructor <init>(LH3/a;Lcom/google/firebase/inappmessaging/internal/k;Lz2/e;Ly3/c;Ly3/c;)V
    .locals 0

    invoke-direct {p0, p1}, LQ3/a;-><init>(LH3/a;)V

    iput-object p2, p0, LK3/n;->f:Lcom/google/firebase/inappmessaging/internal/k;

    iput-object p3, p0, LK3/n;->l:Lz2/e;

    iput-object p4, p0, LK3/n;->m:Ly3/c;

    iput-object p5, p0, LK3/n;->n:Ly3/c;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, LQ3/a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, LK3/n;->f:Lcom/google/firebase/inappmessaging/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/k;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LQ3/a;->a:LH3/a;

    invoke-interface {v0, p1}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LQ3/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, LQ3/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LK3/n;->m:Ly3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LQ3/a;->d:Z

    iget-object v0, p0, LQ3/a;->a:LH3/a;

    invoke-interface {v0}, Lz3/g;->onComplete()V

    :try_start_1
    iget-object v0, p0, LK3/n;->n:Ly3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, LQ3/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, LQ3/a;->a:LH3/a;

    iget-boolean v1, p0, LQ3/a;->d:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LQ3/a;->d:Z

    :try_start_0
    iget-object v1, p0, LK3/n;->l:Lz2/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v2, LC3/b;

    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object p1, p0, LK3/n;->n:Ly3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, LQ3/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LQ3/a;->e:I

    iget-object v1, p0, LQ3/a;->a:LH3/a;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, LK3/n;->f:Lcom/google/firebase/inappmessaging/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/k;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LQ3/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LK3/n;->l:Lz2/e;

    :try_start_0
    iget-object v1, p0, LQ3/a;->c:LH3/e;

    invoke-interface {v1}, LH3/h;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v2, p0, LK3/n;->n:Ly3/c;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v3, p0, LK3/n;->f:Lcom/google/firebase/inappmessaging/internal/k;

    invoke-virtual {v3, v1}, Lcom/google/firebase/inappmessaging/internal/k;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v0, LS3/d;->a:LS3/c;

    instance-of v0, v1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    check-cast v1, Ljava/lang/Exception;

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_0
    throw v1

    :catchall_2
    move-exception v0

    new-instance v3, LC3/b;

    filled-new-array {v1, v0}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, v0}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :cond_1
    iget v0, p0, LQ3/a;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, LK3/n;->m:Ly3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_1
    return-object v1

    :catchall_3
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    sget-object v0, LS3/d;->a:LS3/c;

    instance-of v0, v1, Ljava/lang/Exception;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/lang/Exception;

    throw v1

    :cond_3
    throw v1

    :catchall_4
    move-exception v0

    new-instance v2, LC3/b;

    filled-new-array {v1, v0}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v0}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    throw v2
.end method
