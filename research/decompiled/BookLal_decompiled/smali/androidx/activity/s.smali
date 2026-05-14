.class public Landroidx/activity/s;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Landroid/view/Window;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/activity/J;Landroidx/activity/J;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 1

    const-string v0, "statusBarStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationBarStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, LZ2/l;->Q(Landroid/view/Window;)V

    if-eqz p5, :cond_0

    iget p1, p1, Landroidx/activity/J;->b:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/activity/J;->a:I

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    if-eqz p6, :cond_1

    iget p1, p2, Landroidx/activity/J;->b:I

    goto :goto_1

    :cond_1
    iget p1, p2, Landroidx/activity/J;->a:I

    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    new-instance p1, LM/B0;

    invoke-direct {p1, p3}, LM/B0;-><init>(Landroid/view/Window;)V

    goto :goto_2

    :cond_2
    new-instance p1, LM/A0;

    invoke-direct {p1, p3}, LM/A0;-><init>(Landroid/view/Window;)V

    :goto_2
    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p1, p2}, La/a;->z(Z)V

    xor-int/lit8 p2, p6, 0x1

    invoke-virtual {p1, p2}, La/a;->y(Z)V

    return-void
.end method
