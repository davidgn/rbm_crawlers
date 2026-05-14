.class public final LK3/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT4/a;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/N;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput p2, p0, LK3/N;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lz3/g;)V
    .locals 7

    new-instance v0, LK3/O;

    invoke-direct {v0, p1}, LK3/O;-><init>(Lz3/g;)V

    invoke-interface {p1, v0}, Lz3/g;->c(LT4/b;)V

    :goto_0
    iget-object p1, p0, LK3/N;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK3/P;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LK3/P;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, LK3/P;

    iget-object v2, p0, LK3/N;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, LK3/N;->b:I

    invoke-direct {v1, v2, v3}, LK3/P;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    iget-object v2, p0, LK3/N;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v1

    :goto_2
    iget-object v4, v3, LK3/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [LK3/O;

    sget-object p1, LK3/P;->o:[LK3/O;

    if-ne v5, p1, :cond_3

    goto :goto_0

    :cond_3
    array-length p1, v5

    add-int/lit8 v1, p1, 0x1

    new-array v6, v1, [LK3/O;

    const/4 v1, 0x0

    invoke-static {v5, v1, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v6, p1

    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p1, v1, v4

    if-nez p1, :cond_5

    invoke-virtual {v3, v0}, LK3/P;->h(LK3/O;)V

    goto :goto_3

    :cond_5
    iput-object v3, v0, LK3/O;->b:LK3/P;

    :goto_3
    invoke-virtual {v3}, LK3/P;->f()V

    return-void

    :cond_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v5, :cond_4

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_2

    goto :goto_0
.end method
