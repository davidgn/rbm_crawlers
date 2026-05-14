.class public final Landroidx/activity/o;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/F;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/F;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/o;->a:I

    iput-object p1, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/F;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/activity/o;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/activity/G;

    new-instance v1, Landroidx/activity/d;

    iget-object v2, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/F;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/activity/d;-><init>(Landroidx/fragment/app/F;I)V

    invoke-direct {v0, v1}, Landroidx/activity/G;-><init>(Ljava/lang/Runnable;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LD/m;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2, v0}, LD/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Landroidx/activity/p;->access$addObserverForBackInvoker(Landroidx/activity/p;Landroidx/activity/G;)V

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroidx/activity/w;

    iget-object v1, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/F;

    invoke-static {v1}, Landroidx/activity/p;->access$getReportFullyDrawnExecutor$p(Landroidx/activity/p;)Landroidx/activity/k;

    move-result-object v2

    new-instance v3, Landroidx/activity/o;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Landroidx/activity/o;-><init>(Landroidx/fragment/app/F;I)V

    invoke-direct {v0, v2, v3}, Landroidx/activity/w;-><init>(Landroidx/activity/k;Landroidx/activity/o;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/F;

    invoke-virtual {v0}, Landroidx/activity/p;->reportFullyDrawn()V

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :pswitch_2
    new-instance v0, Landroidx/lifecycle/P;

    iget-object v1, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/F;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v0, v2, v1, v3}, Landroidx/lifecycle/P;-><init>(Landroid/app/Application;Ly0/e;Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
