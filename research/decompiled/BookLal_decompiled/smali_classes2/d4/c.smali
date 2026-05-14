.class public abstract Ld4/c;
.super Ld4/a;
.source "SourceFile"


# instance fields
.field private final _context:Lb4/h;

.field private transient intercepted:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb4/h;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ld4/a;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    iput-object p1, p0, Ld4/c;->_context:Lb4/h;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Ld4/c;-><init>(Lb4/h;Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public getContext()Lb4/h;
    .locals 1

    iget-object v0, p0, Ld4/c;->_context:Lb4/h;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    iget-object v0, p0, Ld4/c;->intercepted:Lkotlin/coroutines/Continuation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld4/c;->getContext()Lb4/h;

    move-result-object v0

    sget-object v1, Lb4/d;->a:Lb4/d;

    invoke-interface {v0, v1}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v0

    check-cast v0, Lb4/e;

    if-eqz v0, :cond_0

    check-cast v0, Lt4/s;

    new-instance v1, Ly4/h;

    invoke-direct {v1, v0, p0}, Ly4/h;-><init>(Lt4/s;Ld4/c;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Ld4/c;->intercepted:Lkotlin/coroutines/Continuation;

    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 4

    iget-object v0, p0, Ld4/c;->intercepted:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Ld4/c;->getContext()Lb4/h;

    move-result-object v1

    sget-object v2, Lb4/d;->a:Lb4/d;

    invoke-interface {v1, v2}, Lb4/h;->f(Lb4/g;)Lb4/f;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    check-cast v1, Lb4/e;

    check-cast v0, Ly4/h;

    :cond_0
    sget-object v1, Ly4/h;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ly4/a;->d:LG3/b;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lt4/f;

    if-eqz v1, :cond_1

    check-cast v0, Lt4/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lt4/f;->o()V

    :cond_2
    sget-object v0, Ld4/b;->a:Ld4/b;

    iput-object v0, p0, Ld4/c;->intercepted:Lkotlin/coroutines/Continuation;

    return-void
.end method
