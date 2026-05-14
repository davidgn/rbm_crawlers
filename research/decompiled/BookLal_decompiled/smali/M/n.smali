.class public final synthetic LM/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LM/n;->a:I

    iput-object p2, p0, LM/n;->b:Ljava/lang/Object;

    iput-object p3, p0, LM/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 2

    iget p1, p0, LM/n;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LM/n;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/activity/G;

    const-string v0, "$dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LM/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/p;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    if-ne p2, v1, :cond_0

    sget-object p2, Landroidx/activity/h;->a:Landroidx/activity/h;

    invoke-virtual {p2, v0}, Landroidx/activity/h;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    const-string v0, "invoker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Landroidx/activity/G;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean p2, p1, Landroidx/activity/G;->g:Z

    invoke-virtual {p1, p2}, Landroidx/activity/G;->d(Z)V

    :cond_0
    return-void

    :pswitch_0
    sget-object p1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    iget-object v0, p0, LM/n;->b:Ljava/lang/Object;

    check-cast v0, LM/p;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, LM/n;->c:Ljava/lang/Object;

    check-cast p1, LM/r;

    invoke-virtual {v0, p1}, LM/p;->b(LM/r;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
