.class public final LX/t;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LX/F;


# direct methods
.method public constructor <init>(LX/F;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, LX/t;->c:LX/F;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, LX/t;

    iget-object v1, p0, LX/t;->c:LX/F;

    invoke-direct {v0, v1, p2}, LX/t;-><init>(LX/F;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, LX/t;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw4/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, LX/t;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, LX/t;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, LX/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, LX/t;->a:I

    sget-object v2, LY3/j;->a:LY3/j;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, LX/t;->b:Ljava/lang/Object;

    check-cast p1, Lw4/b;

    iget-object v1, p0, LX/t;->c:LX/F;

    iget-object v2, v1, LX/F;->f:Lw4/h;

    invoke-virtual {v2}, Lw4/h;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/G;

    instance-of v4, v2, LX/a;

    if-nez v4, :cond_2

    new-instance v4, LX/k;

    invoke-direct {v4, v2}, LX/k;-><init>(LX/G;)V

    iget-object v5, v1, LX/F;->h:LR0/i;

    invoke-virtual {v5, v4}, LR0/i;->l(LX/m;)V

    :cond_2
    new-instance v4, LX/q;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, LX/q;-><init>(LX/G;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, LX/t;->a:I

    new-instance v2, LX/s;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, LX/s;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lkotlin/jvm/internal/l;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lw4/d;

    invoke-direct {v3, p1, v2, v4}, Lw4/d;-><init>(Lkotlin/jvm/internal/l;Lw4/b;LX/q;)V

    iget-object p1, v1, LX/F;->f:Lw4/h;

    invoke-virtual {p1, v3, p0}, Lw4/h;->a(Lw4/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    return-object v0
.end method
