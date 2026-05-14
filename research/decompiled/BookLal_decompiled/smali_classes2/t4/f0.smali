.class public final Lt4/f0;
.super Ld4/g;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:Lt4/j0;

.field public c:Ly4/k;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lt4/g0;


# direct methods
.method public constructor <init>(Lt4/g0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lt4/f0;->f:Lt4/g0;

    invoke-direct {p0, p2}, Ld4/g;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lt4/f0;

    iget-object v1, p0, Lt4/f0;->f:Lt4/g0;

    invoke-direct {v0, v1, p2}, Lt4/f0;-><init>(Lt4/g0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lt4/f0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/e;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lt4/f0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lt4/f0;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, Lt4/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, Lt4/f0;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lt4/f0;->c:Ly4/k;

    iget-object v3, p0, Lt4/f0;->b:Lt4/j0;

    iget-object v4, p0, Lt4/f0;->e:Ljava/lang/Object;

    check-cast v4, Lr4/e;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lt4/f0;->e:Ljava/lang/Object;

    check-cast p1, Lr4/e;

    iget-object v1, p0, Lt4/f0;->f:Lt4/g0;

    invoke-virtual {v1}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lt4/j;

    if-eqz v4, :cond_3

    check-cast v1, Lt4/j;

    iget-object v1, v1, Lt4/j;->e:Lt4/g0;

    iput v3, p0, Lt4/f0;->d:I

    invoke-virtual {p1, v1, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0

    :cond_3
    instance-of v3, v1, Lt4/T;

    if-eqz v3, :cond_5

    check-cast v1, Lt4/T;

    invoke-interface {v1}, Lt4/T;->d()Lt4/j0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ly4/k;->g()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ly4/k;

    move-object v4, p1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, v1, Lt4/j;

    if-eqz p1, :cond_4

    move-object p1, v1

    check-cast p1, Lt4/j;

    iput-object v4, p0, Lt4/f0;->e:Ljava/lang/Object;

    iput-object v3, p0, Lt4/f0;->b:Lt4/j0;

    iput-object v1, p0, Lt4/f0;->c:Ly4/k;

    iput v2, p0, Lt4/f0;->d:I

    iget-object p1, p1, Lt4/j;->e:Lt4/g0;

    invoke-virtual {v4, p1, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Ly4/k;->h()Ly4/k;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_2
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method
