.class public final Lt4/b0;
.super Lt4/f;
.source "SourceFile"


# instance fields
.field public final n:Lt4/l;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lt4/l;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lt4/f;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p2, p0, Lt4/b0;->n:Lt4/l;

    return-void
.end method


# virtual methods
.method public final q(Lt4/g0;)Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lt4/b0;->n:Lt4/l;

    invoke-virtual {v0}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lt4/d0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lt4/d0;

    invoke-virtual {v1}, Lt4/d0;->b()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    instance-of v1, v0, Lt4/n;

    if-eqz v1, :cond_1

    check-cast v0, Lt4/n;

    iget-object p1, v0, Lt4/n;->a:Ljava/lang/Throwable;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lt4/g0;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
