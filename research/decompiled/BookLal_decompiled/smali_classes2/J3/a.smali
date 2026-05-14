.class public final LJ3/a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lz3/b;


# instance fields
.field public final a:Lz3/b;

.field public final b:[Lz3/c;

.field public c:I

.field public final d:LB3/c;


# direct methods
.method public constructor <init>(Lz3/b;[Lz3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LJ3/a;->a:Lz3/b;

    iput-object p2, p0, LJ3/a;->b:[Lz3/c;

    new-instance p1, LB3/c;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LB3/c;-><init>(I)V

    iput-object p1, p0, LJ3/a;->d:LB3/c;

    return-void
.end method


# virtual methods
.method public final a(LB3/b;)V
    .locals 1

    iget-object v0, p0, LJ3/a;->d:LB3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LF3/a;->e(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, LJ3/a;->d:LB3/c;

    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, LJ3/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LJ3/a;->c:I

    iget-object v2, p0, LJ3/a;->b:[Lz3/c;

    array-length v3, v2

    if-ne v1, v3, :cond_3

    iget-object v0, p0, LJ3/a;->a:Lz3/b;

    invoke-interface {v0}, Lz3/b;->onComplete()V

    return-void

    :cond_3
    aget-object v1, v2, v1

    check-cast v1, Lz3/a;

    invoke-virtual {v1, p0}, Lz3/a;->d(Lz3/b;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, LJ3/a;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LJ3/a;->a:Lz3/b;

    invoke-interface {v0, p1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
