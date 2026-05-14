.class public final Ls2/f;
.super Lk/m;
.source "SourceFile"


# virtual methods
.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lk/m;->a(IIILjava/lang/CharSequence;)Lk/o;

    move-result-object p1

    new-instance p2, Ls2/q;

    iget-object p3, p0, Lk/m;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lk/F;-><init>(Landroid/content/Context;Lk/m;Lk/o;)V

    iput-object p2, p1, Lk/o;->t:Lk/F;

    iget-object p1, p1, Lk/o;->e:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lk/F;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method
