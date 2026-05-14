.class public abstract Lt4/a;
.super Lt4/g0;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lt4/u;


# instance fields
.field public final c:Lb4/h;


# direct methods
.method public constructor <init>(Lb4/h;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lt4/g0;-><init>(Z)V

    sget-object p2, Lt4/t;->b:Lt4/t;

    invoke-interface {p1, p2}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p2

    check-cast p2, Lt4/W;

    invoke-virtual {p0, p2}, Lt4/g0;->D(Lt4/W;)V

    invoke-interface {p1, p0}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p1

    iput-object p1, p0, Lt4/a;->c:Lb4/h;

    return-void
.end method


# virtual methods
.method public final C(LB0/c;)V
    .locals 1

    iget-object v0, p0, Lt4/a;->c:Lb4/h;

    invoke-static {v0, p1}, Lt4/w;->h(Lb4/h;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final L(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lt4/n;

    if-eqz v0, :cond_0

    check-cast p1, Lt4/n;

    iget-object v0, p1, Lt4/n;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lt4/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public final R(Lt4/v;Lt4/a;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object p1, p0, Lt4/a;->c:Lb4/h;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ly4/a;->m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, p3}, Lkotlin/jvm/internal/p;->a(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v1}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Lc4/a;->a:Lc4/a;

    if-eq p2, p1, :cond_3

    invoke-virtual {p0, p2}, Lt4/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-static {p1, v1}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {p1}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt4/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, LB0/c;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, LB0/c;-><init>(I)V

    throw p1

    :cond_1
    check-cast p3, Ld4/a;

    invoke-virtual {p3, p2, p0}, Ld4/a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p1}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p3, p2, p0}, Landroid/support/v4/media/session/a;->z(Lkotlin/jvm/functions/Function2;Lt4/a;Lt4/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final d()Lb4/h;
    .locals 1

    iget-object v0, p0, Lt4/a;->c:Lb4/h;

    return-object v0
.end method

.method public final getContext()Lb4/h;
    .locals 1

    iget-object v0, p0, Lt4/a;->c:Lb4/h;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, LY3/g;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lt4/n;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lt4/n;-><init>(ZLjava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, p1}, Lt4/g0;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lt4/w;->e:LG3/b;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lt4/a;->l(Ljava/lang/Object;)V

    return-void
.end method
