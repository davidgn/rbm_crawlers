.class public abstract Lt4/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LG3/b;

.field public static final b:LG3/b;

.field public static final c:LG3/b;

.field public static final d:LG3/b;

.field public static final e:LG3/b;

.field public static final f:LG3/b;

.field public static final g:LG3/b;

.field public static final h:LG3/b;

.field public static final i:Lt4/J;

.field public static final j:Lt4/J;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LG3/b;

    const-string v1, "RESUME_TOKEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->a:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "REMOVED_TASK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->b:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->c:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "COMPLETING_ALREADY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->d:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->e:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->f:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->g:LG3/b;

    new-instance v0, LG3/b;

    const-string v1, "SEALED"

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4/w;->h:LG3/b;

    new-instance v0, Lt4/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt4/J;-><init>(Z)V

    sput-object v0, Lt4/w;->i:Lt4/J;

    new-instance v0, Lt4/J;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt4/J;-><init>(Z)V

    sput-object v0, Lt4/w;->j:Lt4/J;

    return-void
.end method

.method public static final a(Lb4/h;)Ly4/e;
    .locals 3

    new-instance v0, Ly4/e;

    sget-object v1, Lt4/t;->b:Lt4/t;

    invoke-interface {p0, v1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lt4/Z;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lt4/Z;-><init>(Lt4/W;)V

    invoke-interface {p0, v1}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ly4/e;-><init>(Lb4/h;)V

    return-object v0
.end method

.method public static b(Lt4/u;Lt4/v;Lkotlin/jvm/functions/Function2;I)Lt4/A;
    .locals 2

    sget-object v0, Lb4/i;->a:Lb4/i;

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p1, Lt4/v;->a:Lt4/v;

    :cond_0
    invoke-interface {p0}, Lt4/u;->d()Lb4/h;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p0, v0, p3}, Lt4/w;->e(Lb4/h;Lb4/h;Z)Lb4/h;

    move-result-object p0

    sget-object v0, Lt4/E;->a:LA4/e;

    if-eq p0, v0, :cond_1

    sget-object v1, Lb4/d;->a:Lb4/d;

    invoke-interface {p0, v1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lt4/v;->b:Lt4/v;

    if-ne p1, v0, :cond_2

    new-instance p3, Lt4/h0;

    invoke-direct {p3, p0, p2}, Lt4/h0;-><init>(Lb4/h;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lt4/A;

    invoke-direct {v0, p0, p3}, Lt4/a;-><init>(Lb4/h;Z)V

    move-object p3, v0

    :goto_0
    invoke-virtual {p3, p1, p3, p2}, Lt4/a;->R(Lt4/v;Lt4/a;Lkotlin/jvm/functions/Function2;)V

    return-object p3
.end method

.method public static c(Lb4/h;)V
    .locals 4

    sget-object v0, Lt4/t;->b:Lt4/t;

    invoke-interface {p0, v0}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p0

    check-cast p0, Lt4/W;

    if-eqz p0, :cond_0

    check-cast p0, Lt4/g0;

    new-instance v0, Lt4/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt4/f0;-><init>(Lt4/g0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, LZ2/l;->D(Lkotlin/jvm/functions/Function2;)Lr4/e;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lr4/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/e;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/W;

    check-cast v0, Lt4/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lt4/X;

    invoke-virtual {v0}, Lt4/g0;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lt4/X;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt4/g0;)V

    invoke-virtual {v0, v2}, Lt4/g0;->o(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final d(Lb4/h;)V
    .locals 1

    sget-object v0, Lt4/t;->b:Lt4/t;

    invoke-interface {p0, v0}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p0

    check-cast p0, Lt4/W;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lt4/W;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lt4/g0;

    invoke-virtual {p0}, Lt4/g0;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final e(Lb4/h;Lb4/h;Z)Lb4/h;
    .locals 4

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lt4/p;->c:Lt4/p;

    invoke-interface {p0, p2, v0}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, p2, v0}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lb4/i;->a:Lb4/i;

    new-instance v1, Lt4/p;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lt4/p;-><init>(II)V

    invoke-interface {p0, v0, v1}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb4/h;

    if-eqz p2, :cond_1

    check-cast p1, Lb4/h;

    sget-object p2, Lt4/p;->b:Lt4/p;

    invoke-interface {p1, v0, p2}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    check-cast p1, Lb4/h;

    invoke-interface {p0, p1}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lkotlin/coroutines/Continuation;)Lt4/f;
    .locals 6

    instance-of v0, p0, Ly4/h;

    if-nez v0, :cond_0

    new-instance v0, Lt4/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Ly4/h;

    :cond_1
    :goto_0
    sget-object v1, Ly4/h;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ly4/a;->d:LG3/b;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_1

    :cond_2
    instance-of v5, v2, Lt4/f;

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v2, Lt4/f;

    :goto_1
    if-eqz v2, :cond_6

    sget-object v0, Lt4/f;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lt4/m;

    if-eqz v3, :cond_4

    check-cast v1, Lt4/m;

    iget-object v1, v1, Lt4/m;->d:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lt4/f;->o()V

    goto :goto_2

    :cond_4
    const v1, 0x1fffffff

    sget-object v3, Lt4/f;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Lt4/b;->a:Lt4/b;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v2

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    new-instance v0, Lt4/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    return-object v0

    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v2, :cond_3

    goto :goto_0

    :cond_8
    if-eq v2, v3, :cond_1

    instance-of v1, v2, Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Lb4/h;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    sget-object v0, Lt4/t;->a:Lt4/t;

    invoke-interface {p0, v0}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v0

    check-cast v0, Lu4/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lu4/b;->q(Lb4/h;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Ly4/a;->e(Lb4/h;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    invoke-static {p0, p1}, Ly4/a;->e(Lb4/h;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic i(Lt4/W;ZLt4/a0;I)Lt4/G;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    check-cast p0, Lt4/g0;

    invoke-virtual {p0, p1, v1, p2}, Lt4/g0;->E(ZZLk4/l;)Lt4/G;

    move-result-object p0

    return-object p0
.end method

.method public static final j(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final k(Ljava/util/List;Ld4/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lt4/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lt4/c;

    iget v1, v0, Lt4/c;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lt4/c;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lt4/c;

    invoke-direct {v0, p1}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lt4/c;->b:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lt4/c;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lt4/c;->a:Ljava/util/Iterator;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    sget-object v2, LY3/j;->a:LY3/j;

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt4/W;

    iput-object p0, v0, Lt4/c;->a:Ljava/util/Iterator;

    iput v3, v0, Lt4/c;->c:I

    check-cast p1, Lt4/g0;

    :cond_4
    invoke-virtual {p1}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lt4/T;

    if-nez v5, :cond_5

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object p1

    invoke-static {p1}, Lt4/w;->d(Lb4/h;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v4}, Lt4/g0;->O(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4

    new-instance v4, Lt4/f;

    invoke-static {v0}, Lc4/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v4}, Lt4/f;->s()V

    new-instance v5, Lt4/I;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v6}, Lt4/I;-><init>(Ljava/lang/Object;I)V

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, v5}, Lt4/g0;->E(ZZLk4/l;)Lt4/G;

    move-result-object p1

    new-instance v5, Lt4/H;

    invoke-direct {v5, p1}, Lt4/H;-><init>(Lt4/G;)V

    invoke-virtual {v4, v5}, Lt4/f;->u(Lt4/l0;)V

    invoke-virtual {v4}, Lt4/f;->r()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    if-ne p1, v1, :cond_7

    move-object v2, p1

    :cond_7
    :goto_3
    if-ne v2, v1, :cond_3

    return-object v1

    :cond_8
    return-object v2
.end method

.method public static l(Lt4/u;Lkotlin/jvm/functions/Function2;)V
    .locals 4

    sget-object v0, Lb4/i;->a:Lb4/i;

    sget-object v1, Lt4/v;->a:Lt4/v;

    invoke-interface {p0}, Lt4/u;->d()Lb4/h;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lt4/w;->e(Lb4/h;Lb4/h;Z)Lb4/h;

    move-result-object p0

    sget-object v0, Lt4/E;->a:LA4/e;

    if-eq p0, v0, :cond_0

    sget-object v3, Lb4/d;->a:Lb4/d;

    invoke-interface {p0, v3}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {p0, v0}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p0

    :cond_0
    sget-object v0, Lt4/v;->a:Lt4/v;

    new-instance v0, Lt4/n0;

    invoke-direct {v0, p0, v2}, Lt4/a;-><init>(Lb4/h;Z)V

    invoke-virtual {v0, v1, v0, p1}, Lt4/a;->R(Lt4/v;Lt4/a;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lt4/n;

    if-eqz v0, :cond_0

    check-cast p0, Lt4/n;

    iget-object p0, p0, Lt4/n;->a:Ljava/lang/Throwable;

    invoke-static {p0}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final n(Lt4/f;Lkotlin/coroutines/Continuation;Z)V
    .locals 2

    sget-object v0, Lt4/f;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4/f;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lt4/f;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_5

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly4/h;

    iget-object p2, p1, Ly4/h;->e:Ld4/c;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v0

    iget-object p1, p1, Ly4/h;->l:Ljava/lang/Object;

    invoke-static {v0, p1}, Ly4/a;->m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ly4/a;->f:LG3/b;

    if-eq p1, v1, :cond_1

    invoke-static {p2, v0, p1}, Lt4/w;->q(Lkotlin/coroutines/Continuation;Lb4/h;Ljava/lang/Object;)Lt4/v0;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lt4/v0;->S()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    invoke-static {v0, p1}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lt4/v0;->S()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    invoke-static {v0, p1}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    :cond_4
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final o(Lkotlin/coroutines/Continuation;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Ly4/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt4/w;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object v1

    :goto_0
    invoke-static {v1}, LY3/g;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt4/w;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public static final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lt4/U;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lt4/U;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lt4/U;->a:Lt4/T;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final q(Lkotlin/coroutines/Continuation;Lb4/h;Ljava/lang/Object;)Lt4/v0;
    .locals 2

    instance-of v0, p0, Ld4/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lt4/w0;->a:Lt4/w0;

    invoke-interface {p1, v0}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast p0, Ld4/d;

    :cond_1
    instance-of v0, p0, Lt4/C;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ld4/d;->getCallerFrame()Ld4/d;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lt4/v0;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lt4/v0;

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lt4/v0;->T(Lb4/h;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public static final r(Lb4/h;Ld4/c;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lt4/p;->c:Lt4/p;

    invoke-interface {p0, v1, v2}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Lb4/h;->n(Lb4/h;)Lb4/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, Lt4/w;->e(Lb4/h;Lb4/h;Z)Lb4/h;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lt4/w;->d(Lb4/h;)V

    if-ne p0, v0, :cond_1

    new-instance v0, Ly4/t;

    invoke-direct {v0, p0, p1}, Ly4/t;-><init>(Lb4/h;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v0, p2}, LL4/d;->F(Ly4/t;Ly4/t;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object v1, Lb4/d;->a:Lb4/d;

    invoke-interface {p0, v1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v3

    invoke-interface {v0, v1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lt4/v0;

    invoke-direct {v0, p0, p1}, Lt4/v0;-><init>(Lb4/h;Ld4/c;)V

    const/4 p0, 0x0

    iget-object p1, v0, Lt4/a;->c:Lb4/h;

    invoke-static {p1, p0}, Ly4/a;->m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    invoke-static {v0, v0, p2}, LL4/d;->F(Ly4/t;Ly4/t;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p0}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    move-object p0, p2

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-static {p1, p0}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    throw p2

    :cond_2
    new-instance v0, Lt4/C;

    invoke-direct {v0, p0, p1}, Ly4/t;-><init>(Lb4/h;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v0}, Landroid/support/v4/media/session/a;->z(Lkotlin/jvm/functions/Function2;Lt4/a;Lt4/a;)V

    :cond_3
    sget-object p0, Lt4/C;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    invoke-virtual {v0}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lt4/w;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lt4/n;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p0, Lt4/n;

    iget-object p0, p0, Lt4/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lc4/a;->a:Lc4/a;

    :goto_1
    return-object p0
.end method

.method public static final s(JLkotlin/jvm/functions/Function2;Ld4/c;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    new-instance v0, Lt4/t0;

    invoke-direct {v0, p0, p1, p3}, Lt4/t0;-><init>(JLd4/c;)V

    iget-object p0, v0, Ly4/t;->d:Lkotlin/coroutines/Continuation;

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object p0

    sget-object p1, Lb4/d;->a:Lb4/d;

    invoke-interface {p0, p1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object p0

    instance-of p1, p0, Lt4/B;

    if-eqz p1, :cond_0

    move-object v1, p0

    check-cast v1, Lt4/B;

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lt4/y;->a:Lt4/B;

    :cond_1
    iget-wide p0, v0, Lt4/t0;->e:J

    iget-object p3, v0, Lt4/a;->c:Lb4/h;

    invoke-interface {v1, p0, p1, v0, p3}, Lt4/B;->g(JLt4/t0;Lb4/h;)Lt4/G;

    move-result-object p0

    new-instance p1, Lt4/I;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lt4/I;-><init>(Ljava/lang/Object;I)V

    const/4 p0, 0x1

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p0, p1}, Lt4/g0;->E(ZZLk4/l;)Lt4/G;

    const/4 p0, 0x2

    :try_start_0
    invoke-static {p0, p2}, Lkotlin/jvm/internal/p;->a(ILjava/lang/Object;)V

    invoke-interface {p2, v0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Lt4/n;

    invoke-direct {p1, p3, p0}, Lt4/n;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    sget-object p1, Lc4/a;->a:Lc4/a;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Lt4/g0;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lt4/w;->e:LG3/b;

    if-ne p2, p3, :cond_3

    goto :goto_2

    :cond_3
    instance-of p1, p2, Lt4/n;

    if-eqz p1, :cond_6

    check-cast p2, Lt4/n;

    iget-object p1, p2, Lt4/n;->a:Ljava/lang/Throwable;

    instance-of p2, p1, Lt4/s0;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lt4/s0;

    iget-object p2, p2, Lt4/s0;->a:Lt4/t0;

    if-ne p2, v0, :cond_5

    instance-of p1, p0, Lt4/n;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p0, Lt4/n;

    iget-object p0, p0, Lt4/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    throw p1

    :cond_6
    invoke-static {p2}, Lt4/w;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    move-object p1, p0

    :goto_2
    return-object p1

    :cond_7
    new-instance p0, Lt4/s0;

    const-string p1, "Timed out immediately"

    invoke-direct {p0, p1, v1}, Lt4/s0;-><init>(Ljava/lang/String;Lt4/t0;)V

    throw p0
.end method
