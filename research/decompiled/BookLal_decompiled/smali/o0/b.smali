.class public final Lo0/b;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lo0/d;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Landroid/view/InputEvent;


# direct methods
.method public constructor <init>(Lo0/d;Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lo0/b;->b:Lo0/d;

    iput-object p2, p0, Lo0/b;->c:Landroid/net/Uri;

    iput-object p3, p0, Lo0/b;->d:Landroid/view/InputEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lo0/b;

    iget-object v0, p0, Lo0/b;->c:Landroid/net/Uri;

    iget-object v1, p0, Lo0/b;->d:Landroid/view/InputEvent;

    iget-object v2, p0, Lo0/b;->b:Lo0/d;

    invoke-direct {p1, v2, v0, v1, p2}, Lo0/b;-><init>(Lo0/d;Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/u;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lo0/b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lo0/b;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, Lo0/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, Lo0/b;->a:I

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

    iget-object p1, p0, Lo0/b;->b:Lo0/d;

    iget-object p1, p1, Lo0/d;->a:Lq0/b;

    iput v2, p0, Lo0/b;->a:I

    iget-object v1, p0, Lo0/b;->c:Landroid/net/Uri;

    iget-object v2, p0, Lo0/b;->d:Landroid/view/InputEvent;

    invoke-virtual {p1, v1, v2, p0}, Lq0/b;->c(Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method
