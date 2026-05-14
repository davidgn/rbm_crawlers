.class public final Lt4/e0;
.super Ly4/b;
.source "SourceFile"


# instance fields
.field public final b:Lt4/a0;

.field public c:Lt4/j0;

.field public final synthetic d:Lt4/g0;

.field public final synthetic e:Lt4/T;


# direct methods
.method public constructor <init>(Lt4/a0;Lt4/g0;Lt4/T;)V
    .locals 0

    iput-object p2, p0, Lt4/e0;->d:Lt4/g0;

    iput-object p3, p0, Lt4/e0;->e:Lt4/T;

    invoke-direct {p0}, Ly4/b;-><init>()V

    iput-object p1, p0, Lt4/e0;->b:Lt4/a0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ly4/k;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lt4/e0;->b:Lt4/a0;

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lt4/e0;->c:Lt4/j0;

    :goto_1
    if-eqz v1, :cond_4

    sget-object v2, Ly4/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_4

    iget-object p1, p0, Lt4/e0;->c:Lt4/j0;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ly4/k;->f(Ly4/k;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    :cond_4
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/Object;)LG3/b;
    .locals 1

    check-cast p1, Ly4/k;

    iget-object p1, p0, Lt4/e0;->d:Lt4/g0;

    invoke-virtual {p1}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lt4/e0;->e:Lt4/T;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Ly4/a;->e:LG3/b;

    :goto_0
    return-object p1
.end method
