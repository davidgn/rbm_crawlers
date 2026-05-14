.class public final Lp0/a;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lp0/b;

.field public final synthetic c:Lr0/a;


# direct methods
.method public constructor <init>(Lp0/b;Lr0/a;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lp0/a;->b:Lp0/b;

    iput-object p2, p0, Lp0/a;->c:Lr0/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lp0/a;

    iget-object v0, p0, Lp0/a;->b:Lp0/b;

    iget-object v1, p0, Lp0/a;->c:Lr0/a;

    invoke-direct {p1, v0, v1, p2}, Lp0/a;-><init>(Lp0/b;Lr0/a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/u;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lp0/a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lp0/a;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, Lp0/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, Lp0/a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp0/a;->b:Lp0/b;

    iget-object p1, p1, Lp0/b;->a:Lr0/f;

    iput v2, p0, Lp0/a;->a:I

    iget-object v1, p0, Lp0/a;->c:Lr0/a;

    invoke-virtual {p1, v1, p0}, Lr0/f;->b(Lr0/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
