.class public final Lt4/v0;
.super Ly4/t;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Lb4/h;Ld4/c;)V
    .locals 2

    sget-object v0, Lt4/w0;->a:Lt4/w0;

    invoke-interface {p1, v0}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Ly4/t;-><init>(Lb4/h;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lt4/v0;->e:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object p2

    sget-object v0, Lb4/d;->a:Lb4/d;

    invoke-interface {p2, v0}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p2

    instance-of p2, p2, Lt4/s;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ly4/a;->m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lt4/v0;->T(Lb4/h;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final S()Z
    .locals 3

    iget-boolean v0, p0, Lt4/v0;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt4/v0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lt4/v0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final T(Lb4/h;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt4/v0;->threadLocalIsSet:Z

    iget-object v0, p0, Lt4/v0;->e:Ljava/lang/ThreadLocal;

    new-instance v1, LY3/e;

    invoke-direct {v1, p1, p2}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, Lt4/v0;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt4/v0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY3/e;

    if-eqz v0, :cond_0

    iget-object v1, v0, LY3/e;->a:Ljava/lang/Object;

    check-cast v1, Lb4/h;

    iget-object v0, v0, LY3/e;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lt4/v0;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    invoke-static {p1}, Lt4/w;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Ly4/t;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ly4/a;->m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ly4/a;->f:LG3/b;

    if-eq v3, v4, :cond_2

    invoke-static {v0, v1, v3}, Lt4/w;->q(Lkotlin/coroutines/Continuation;Lb4/h;Ljava/lang/Object;)Lt4/v0;

    move-result-object v2

    :cond_2
    :try_start_0
    iget-object v0, p0, Ly4/t;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lt4/v0;->S()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v1, v3}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lt4/v0;->S()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {v1, v3}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    :cond_6
    throw p1
.end method
