.class public Lu0/X;
.super LM/b;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:La0/b;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, LM/b;-><init>()V

    iput-object p1, p0, Lu0/X;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lu0/X;->e:La0/b;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lu0/X;->e:La0/b;

    goto :goto_0

    :cond_0
    new-instance p1, La0/b;

    invoke-direct {p1, p0}, La0/b;-><init>(Lu0/X;)V

    iput-object p1, p0, Lu0/X;->e:La0/b;

    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, LM/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu0/X;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lu0/F;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lu0/F;

    move-result-object p1

    invoke-virtual {p1, p2}, Lu0/F;->Q(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;LN/i;)V
    .locals 2

    iget-object v0, p0, LM/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lu0/X;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lu0/F;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lu0/F;

    move-result-object p1

    iget-object v0, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {p1, v1, v0, p2}, Lu0/F;->R(Lu0/L;Lu0/S;LN/i;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2, p3}, LM/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    iget-object p1, p0, Lu0/X;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lu0/F;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lu0/F;

    move-result-object p1

    iget-object v0, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    iget v0, p1, Lu0/F;->o:I

    iget v2, p1, Lu0/F;->n:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    :cond_1
    const/16 v3, 0x1000

    if-eq p2, v3, :cond_5

    const/16 v3, 0x2000

    if-eq p2, v3, :cond_2

    move p2, v1

    move v0, p2

    goto :goto_2

    :cond_2
    iget-object p2, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lu0/F;->D()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Lu0/F;->A()I

    move-result p2

    sub-int/2addr v0, p2

    neg-int p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    iget-object v0, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lu0/F;->B()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lu0/F;->C()I

    move-result v0

    sub-int/2addr v2, v0

    neg-int v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object p2, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lu0/F;->D()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Lu0/F;->A()I

    move-result p2

    sub-int/2addr v0, p2

    move p2, v0

    goto :goto_1

    :cond_6
    move p2, v1

    :goto_1
    iget-object v0, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lu0/F;->B()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lu0/F;->C()I

    move-result v0

    sub-int v0, v2, v0

    :goto_2
    if-nez p2, :cond_7

    if-nez v0, :cond_7

    move p3, v1

    goto :goto_3

    :cond_7
    iget-object p1, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->e0(IIZ)V

    :goto_3
    return p3

    :cond_8
    return v1
.end method
