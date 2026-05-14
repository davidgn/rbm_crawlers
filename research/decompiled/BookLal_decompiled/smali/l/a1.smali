.class public final Ll/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/z;


# instance fields
.field public a:Lk/m;

.field public b:Lk/o;

.field public final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/a1;->c:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final b(Lk/o;)Z
    .locals 6

    iget-object v0, p0, Ll/a1;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->c()V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->m:Ll/w;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->m:Ll/w;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->m:Ll/w;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lk/o;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    iput-object p1, p0, Ll/a1;->b:Lk/o;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v1, v0, :cond_3

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Ll/b1;

    move-result-object v1

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    and-int/lit8 v3, v3, 0x70

    const v4, 0x800003

    or-int/2addr v3, v4

    iput v3, v1, Ll/b1;->a:I

    iput v2, v1, Ll/b1;->b:I

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ll/b1;

    iget v5, v5, Ll/b1;->b:I

    if-eq v5, v2, :cond_4

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v4, v5, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->J:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput-boolean v3, p1, Lk/o;->H:Z

    iget-object p1, p1, Lk/o;->s:Lk/m;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lk/m;->p(Z)V

    iget-object p1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    instance-of v1, p1, Lj/b;

    if-eqz v1, :cond_6

    check-cast p1, Lj/b;

    invoke-interface {p1}, Lj/b;->b()V

    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->w()V

    return v3
.end method

.method public final c(Lk/m;Z)V
    .locals 0

    return-void
.end method

.method public final d(Lk/F;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lk/o;)Z
    .locals 6

    iget-object v0, p0, Ll/a1;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    instance-of v2, v1, Lj/b;

    if-eqz v2, :cond_0

    check-cast v1, Lj/b;

    invoke-interface {v1}, Lj/b;->e()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->m:Ll/w;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->J:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Ll/a1;->b:Lk/o;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lk/o;->H:Z

    iget-object p1, p1, Lk/o;->s:Lk/m;

    invoke-virtual {p1, v1}, Lk/m;->p(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->w()V

    return v4
.end method

.method public final g(Z)V
    .locals 3

    iget-object p1, p0, Ll/a1;->b:Lk/o;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ll/a1;->a:Lk/m;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Ll/a1;->a:Lk/m;

    invoke-virtual {v1, v0}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Ll/a1;->b:Lk/o;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ll/a1;->b:Lk/o;

    invoke-virtual {p0, p1}, Ll/a1;->e(Lk/o;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final k(Landroid/content/Context;Lk/m;)V
    .locals 1

    iget-object p1, p0, Ll/a1;->a:Lk/m;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ll/a1;->b:Lk/o;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lk/m;->d(Lk/o;)Z

    :cond_0
    iput-object p2, p0, Ll/a1;->a:Lk/m;

    return-void
.end method

.method public final m()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
