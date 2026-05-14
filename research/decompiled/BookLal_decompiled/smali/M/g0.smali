.class public final LM/g0;
.super Ld4/g;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, LM/g0;->d:Landroid/view/View;

    invoke-direct {p0, p2}, Ld4/g;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, LM/g0;

    iget-object v1, p0, LM/g0;->d:Landroid/view/View;

    invoke-direct {v0, v1, p2}, LM/g0;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, LM/g0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/e;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, LM/g0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, LM/g0;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, LM/g0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, LM/g0;->b:I

    iget-object v2, p0, LM/g0;->d:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    sget-object v4, LY3/j;->a:LY3/j;

    const/4 v5, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, LM/g0;->c:Ljava/lang/Object;

    check-cast v1, Lr4/e;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    instance-of p1, v2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput-object p1, p0, LM/g0;->c:Ljava/lang/Object;

    iput v5, p0, LM/g0;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LM/D;

    new-instance v3, LM/f0;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, LM/f0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v3}, LM/D;-><init>(LM/f0;)V

    iget-object v2, p1, LM/D;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v4

    goto :goto_0

    :cond_2
    iput-object p1, v1, Lr4/e;->c:Ljava/util/Iterator;

    iput v5, v1, Lr4/e;->a:I

    iput-object p0, v1, Lr4/e;->d:Lkotlin/coroutines/Continuation;

    move-object p1, v0

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v4

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, LM/g0;->c:Ljava/lang/Object;

    check-cast p1, Lr4/e;

    iput-object p1, p0, LM/g0;->c:Ljava/lang/Object;

    iput v3, p0, LM/g0;->b:I

    invoke-virtual {p1, v2, p0}, Lr4/e;->c(Ljava/lang/Object;Ld4/g;)V

    return-object v0
.end method
