.class public Landroidx/activity/u;
.super Landroidx/activity/t;
.source "SourceFile"


# virtual methods
.method public b(Landroidx/activity/J;Landroidx/activity/J;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 1

    const-string v0, "statusBarStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "navigationBarStyle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "window"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, LZ2/l;->Q(Landroid/view/Window;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p3, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-static {p3}, LS0/b;->p(Landroid/view/Window;)V

    invoke-static {p3}, LS0/b;->z(Landroid/view/Window;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_0

    new-instance p1, LM/B0;

    invoke-direct {p1, p3}, LM/B0;-><init>(Landroid/view/Window;)V

    goto :goto_0

    :cond_0
    new-instance p1, LM/A0;

    invoke-direct {p1, p3}, LM/A0;-><init>(Landroid/view/Window;)V

    :goto_0
    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p1, p2}, La/a;->z(Z)V

    xor-int/lit8 p2, p6, 0x1

    invoke-virtual {p1, p2}, La/a;->y(Z)V

    return-void
.end method
