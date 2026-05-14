.class public abstract Lu0/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu0/x;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(Lu0/W;)V
    .locals 2

    iget v0, p0, Lu0/W;->o:I

    invoke-virtual {p0}, Lu0/W;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Lu0/W;->w:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->G(Lu0/W;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lu0/W;Lu0/W;LM/w;LM/w;)Z
.end method

.method public final c(Lu0/W;)V
    .locals 9

    iget-object v0, p0, Lu0/C;->a:Lu0/x;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lu0/W;->o(Z)V

    iget-object v2, p1, Lu0/W;->m:Lu0/W;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lu0/W;->n:Lu0/W;

    if-nez v2, :cond_0

    iput-object v3, p1, Lu0/W;->m:Lu0/W;

    :cond_0
    iput-object v3, p1, Lu0/W;->n:Lu0/W;

    iget v2, p1, Lu0/W;->o:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->f0()V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    iget-object v3, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v3, Lu0/x;

    iget-object v4, v3, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p1, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v4, v6, :cond_2

    invoke-virtual {v2, v5}, LJ2/e;->T(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v6, v2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v6, LI4/a;

    invoke-virtual {v6, v4}, LI4/a;->d(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v4}, LI4/a;->f(I)Z

    invoke-virtual {v2, v5}, LJ2/e;->T(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lu0/x;->a(I)V

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v2

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    invoke-virtual {v3, v2}, Lu0/L;->l(Lu0/W;)V

    invoke-virtual {v3, v2}, Lu0/L;->i(Lu0/W;)V

    :cond_4
    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->g0(Z)V

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lu0/W;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public abstract d(Lu0/W;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
