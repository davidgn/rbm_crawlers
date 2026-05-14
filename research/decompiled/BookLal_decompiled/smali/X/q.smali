.class public final LX/q;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LX/G;


# direct methods
.method public constructor <init>(LX/G;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, LX/q;->b:LX/G;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, LX/q;

    iget-object v1, p0, LX/q;->b:LX/G;

    invoke-direct {v0, v1, p2}, LX/q;-><init>(LX/G;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, LX/q;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LX/G;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, LX/q;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, LX/q;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, LX/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, LX/q;->a:Ljava/lang/Object;

    check-cast p1, LX/G;

    iget-object v0, p0, LX/q;->b:LX/G;

    instance-of v1, v0, LX/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, v0, LX/g;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
