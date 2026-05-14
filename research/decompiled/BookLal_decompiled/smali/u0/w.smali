.class public final Lu0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu0/a;)V
    .locals 3

    iget v0, p1, Lu0/a;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    iget v1, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lu0/F;->W(II)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    iget v1, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lu0/F;->Y(II)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    iget v1, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lu0/F;->X(II)V

    goto :goto_0

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    iget v1, p1, Lu0/a;->b:I

    iget p1, p1, Lu0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lu0/F;->U(II)V

    :goto_0
    return-void
.end method

.method public b(I)Lu0/W;
    .locals 7

    iget-object v0, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v1}, LJ2/e;->C()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v5, v3}, LJ2/e;->B(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lu0/W;->i()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, Lu0/W;->c:I

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    iget-object v4, v4, LJ2/e;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, v5, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    iget-object p1, p1, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, v4, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v2

    :cond_5
    return-object v4
.end method

.method public c(II)V
    .locals 8

    iget-object v0, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v1}, LJ2/e;->C()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v2, v1, :cond_2

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v5, v2}, LJ2/e;->B(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lu0/W;->p()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v6, Lu0/W;->c:I

    if-lt v7, p1, :cond_1

    if-ge v7, p2, :cond_1

    invoke-virtual {v6, v4}, Lu0/W;->a(I)V

    const/16 v4, 0x400

    invoke-virtual {v6, v4}, Lu0/W;->a(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lu0/G;

    iput-boolean v3, v4, Lu0/G;->c:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    iget-object v2, v1, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_2
    if-ltz v5, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu0/W;

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iget v7, v6, Lu0/W;->c:I

    if-lt v7, p1, :cond_4

    if-ge v7, p2, :cond_4

    invoke-virtual {v6, v4}, Lu0/W;->a(I)V

    invoke-virtual {v1, v5}, Lu0/L;->g(I)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    return-void
.end method

.method public d(II)V
    .locals 8

    iget-object v0, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v1}, LJ2/e;->C()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v5, v3}, LJ2/e;->B(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lu0/W;->p()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lu0/W;->c:I

    if-lt v6, p1, :cond_0

    invoke-virtual {v5, p2, v2}, Lu0/W;->m(IZ)V

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iput-boolean v4, v5, Lu0/S;->f:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    iget-object v1, v1, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu0/W;

    if-eqz v6, :cond_2

    iget v7, v6, Lu0/W;->c:I

    if-lt v7, p1, :cond_2

    invoke-virtual {v6, p2, v2}, Lu0/W;->m(IZ)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    return-void
.end method

.method public e(II)V
    .locals 11

    iget-object v0, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v1}, LJ2/e;->C()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge p1, p2, :cond_0

    move v4, p1

    move v5, p2

    move v6, v3

    goto :goto_0

    :cond_0
    move v5, p1

    move v4, p2

    move v6, v2

    :goto_0
    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v1, :cond_4

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v9, v8}, LJ2/e;->B(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v10, v9, Lu0/W;->c:I

    if-lt v10, v4, :cond_3

    if-le v10, v5, :cond_1

    goto :goto_3

    :cond_1
    if-ne v10, p1, :cond_2

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, Lu0/W;->m(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v6, v7}, Lu0/W;->m(IZ)V

    :goto_2
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iput-boolean v2, v9, Lu0/S;->f:Z

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge p1, p2, :cond_5

    move v4, p1

    move v5, p2

    goto :goto_4

    :cond_5
    move v5, p1

    move v4, p2

    move v3, v2

    :goto_4
    iget-object v1, v1, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    :goto_5
    if-ge v8, v6, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lu0/W;

    if-eqz v9, :cond_8

    iget v10, v9, Lu0/W;->c:I

    if-lt v10, v4, :cond_8

    if-le v10, v5, :cond_6

    goto :goto_6

    :cond_6
    if-ne v10, p1, :cond_7

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, Lu0/W;->m(IZ)V

    goto :goto_6

    :cond_7
    invoke-virtual {v9, v3, v7}, Lu0/W;->m(IZ)V

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    return-void
.end method

.method public f(Lu0/W;LM/w;LM/w;)V
    .locals 8

    iget-object v0, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu0/W;->o(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    move-object v2, v1

    check-cast v2, Lu0/h;

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LM/w;->a:I

    iget v6, p3, LM/w;->a:I

    if-ne v4, v6, :cond_0

    iget v1, p2, LM/w;->b:I

    iget v3, p3, LM/w;->b:I

    if-eq v1, v3, :cond_1

    :cond_0
    iget v5, p2, LM/w;->b:I

    iget v7, p3, LM/w;->b:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lu0/h;->g(Lu0/W;IIII)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Lu0/h;->l(Lu0/W;)V

    iget-object p2, p1, Lu0/W;->a:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, v2, Lu0/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    :cond_2
    return-void
.end method

.method public g(Lu0/W;LM/w;LM/w;)V
    .locals 8

    iget-object v0, p0, Lu0/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    invoke-virtual {v1, p1}, Lu0/L;->l(Lu0/W;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Lu0/W;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu0/W;->o(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    move-object v2, v1

    check-cast v2, Lu0/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LM/w;->a:I

    iget v5, p2, LM/w;->b:I

    iget-object p2, p1, Lu0/W;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    iget v1, p3, LM/w;->a:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v7, p3

    goto :goto_3

    :cond_1
    iget p3, p3, LM/w;->b:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lu0/W;->i()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v4, v6, :cond_2

    if-eq v5, v7, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lu0/h;->g(Lu0/W;IIII)Z

    move-result p1

    goto :goto_4

    :cond_3
    invoke-virtual {v2, p1}, Lu0/h;->l(Lu0/W;)V

    iget-object p2, v2, Lu0/h;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    :cond_4
    return-void
.end method
