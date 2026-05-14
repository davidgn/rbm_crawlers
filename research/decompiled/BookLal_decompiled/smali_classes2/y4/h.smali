.class public final Ly4/h;
.super Lt4/D;
.source "SourceFile"

# interfaces
.implements Ld4/d;
.implements Lkotlin/coroutines/Continuation;


# static fields
.field public static final synthetic m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final d:Lt4/s;

.field public final e:Ld4/c;

.field public f:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, Ly4/h;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ly4/h;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lt4/s;Ld4/c;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lt4/D;-><init>(I)V

    iput-object p1, p0, Ly4/h;->d:Lt4/s;

    iput-object p2, p0, Ly4/h;->e:Ld4/c;

    sget-object p1, Ly4/a;->c:LG3/b;

    iput-object p1, p0, Ly4/h;->f:Ljava/lang/Object;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ly4/x;->b:Ly4/x;

    invoke-interface {p1, p2, v0}, Lb4/h;->m(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Ly4/h;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    instance-of v0, p1, Lt4/o;

    if-eqz v0, :cond_0

    check-cast p1, Lt4/o;

    iget-object p1, p1, Lt4/o;->b:Lk4/l;

    invoke-interface {p1, p2}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final d()Lkotlin/coroutines/Continuation;
    .locals 0

    return-object p0
.end method

.method public final getCallerFrame()Ld4/d;
    .locals 1

    iget-object v0, p0, Ly4/h;->e:Ld4/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContext()Lb4/h;
    .locals 1

    iget-object v0, p0, Ly4/h;->e:Ld4/c;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly4/h;->f:Ljava/lang/Object;

    sget-object v1, Ly4/a;->c:LG3/b;

    iput-object v1, p0, Ly4/h;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Ly4/h;->e:Ld4/c;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v1

    invoke-static {p1}, LY3/g;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, Lt4/n;

    invoke-direct {v4, v3, v2}, Lt4/n;-><init>(ZLjava/lang/Throwable;)V

    :goto_0
    iget-object v2, p0, Ly4/h;->d:Lt4/s;

    invoke-virtual {v2}, Lt4/s;->r()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Ly4/h;->f:Ljava/lang/Object;

    iput v3, p0, Lt4/D;->c:I

    invoke-virtual {v2, v1, p0}, Lt4/s;->q(Lb4/h;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lt4/q0;->a()Lt4/O;

    move-result-object v1

    iget-wide v5, v1, Lt4/O;->c:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    iput-object v4, p0, Ly4/h;->f:Ljava/lang/Object;

    iput v3, p0, Lt4/D;->c:I

    iget-object p1, v1, Lt4/O;->e:LZ3/e;

    if-nez p1, :cond_2

    new-instance p1, LZ3/e;

    invoke-direct {p1}, LZ3/e;-><init>()V

    iput-object p1, v1, Lt4/O;->e:LZ3/e;

    :cond_2
    invoke-virtual {p1, p0}, LZ3/e;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lt4/O;->u(Z)V

    :try_start_0
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lb4/h;

    move-result-object v2

    iget-object v3, p0, Ly4/h;->l:Ljava/lang/Object;

    invoke-static {v2, v3}, Ly4/a;->m(Lb4/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1}, Lt4/O;->v()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v1}, Lt4/O;->s()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v3}, Ly4/a;->h(Lb4/h;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Lt4/D;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lt4/O;->s()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ly4/h;->d:Lt4/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/h;->e:Ld4/c;

    invoke-static {v1}, Lt4/w;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
