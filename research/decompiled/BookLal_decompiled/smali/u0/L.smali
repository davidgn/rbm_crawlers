.class public final Lu0/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Lu0/K;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu0/L;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lu0/L;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lu0/L;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lu0/L;->e:I

    iput p1, p0, Lu0/L;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lu0/W;Z)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->j(Lu0/W;)V

    iget-object v0, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lu0/X;

    const/4 v2, 0x0

    iget-object v3, p1, Lu0/W;->a:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lu0/X;->e:La0/b;

    if-eqz v1, :cond_0

    iget-object v1, v1, La0/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/b;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v3, v1}, LM/a0;->m(Landroid/view/View;LM/b;)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lu0/y;->g(Lu0/W;)V

    :cond_2
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    if-eqz p2, :cond_4

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lj3/G;

    invoke-virtual {p2, p1}, Lj3/G;->H(Lu0/W;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iput-object v2, p1, Lu0/W;->x:Lu0/y;

    iput-object v2, p1, Lu0/W;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lu0/L;->c()Lu0/K;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lu0/W;->f:I

    invoke-virtual {p2, v0}, Lu0/K;->a(I)Lu0/J;

    move-result-object v1

    iget-object v1, v1, Lu0/J;->a:Ljava/util/ArrayList;

    iget-object p2, p2, Lu0/K;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu0/J;

    iget p2, p2, Lu0/J;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_5

    invoke-static {v3}, LS4/b;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lu0/W;->n()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final b(I)I
    .locals 4

    iget-object v0, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {v1}, Lu0/S;->b()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iget-boolean v1, v1, Lu0/S;->g:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LC4/E;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LC4/E;->g(II)I

    move-result p1

    return p1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "invalid position "

    const-string v3, ". State item count is "

    invoke-static {p1, v2, v3}, Le1/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {v2}, Lu0/S;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Lu0/K;
    .locals 2

    iget-object v0, p0, Lu0/L;->g:Lu0/K;

    if-nez v0, :cond_0

    new-instance v0, Lu0/K;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lu0/K;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, v0, Lu0/K;->b:I

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lu0/K;->c:Ljava/util/Set;

    iput-object v0, p0, Lu0/L;->g:Lu0/K;

    invoke-virtual {p0}, Lu0/L;->d()V

    :cond_0
    iget-object v0, p0, Lu0/L;->g:Lu0/K;

    return-object v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lu0/L;->g:Lu0/K;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lu0/K;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final e(Lu0/y;Z)V
    .locals 4

    iget-object v0, p0, Lu0/L;->g:Lu0/K;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lu0/K;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v1, v0, Lu0/K;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/J;

    iget-object v1, v1, Lu0/J;->a:Ljava/util/ArrayList;

    move v2, p1

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu0/W;

    iget-object v3, v3, Lu0/W;->a:Landroid/view/View;

    invoke-static {v3}, LS4/b;->c(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lu0/L;->g(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->F0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:LS3/g;

    iget-object v1, v0, LS3/g;->d:Ljava/lang/Object;

    check-cast v1, [I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, LS3/g;->c:I

    :cond_2
    return-void
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/W;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lu0/L;->a(Lu0/W;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v0

    invoke-virtual {v0}, Lu0/W;->k()Z

    move-result v1

    iget-object v2, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lu0/W;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lu0/W;->s:Lu0/L;

    invoke-virtual {p1, v0}, Lu0/L;->l(Lu0/W;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lu0/W;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Lu0/W;->o:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Lu0/W;->o:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lu0/L;->i(Lu0/W;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lu0/W;->h()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    invoke-virtual {p1, v0}, Lu0/C;->d(Lu0/W;)V

    :cond_3
    return-void
.end method

.method public final i(Lu0/W;)V
    .locals 12

    invoke-virtual {p1}, Lu0/W;->j()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p1, Lu0/W;->a:Landroid/view/View;

    if-nez v0, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Lu0/W;->k()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lu0/W;->p()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p1, Lu0/W;->o:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {p1}, Lu0/W;->h()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, p0, Lu0/L;->f:I

    if-lez v5, :cond_8

    const/16 v5, 0x20e

    invoke-virtual {p1, v5}, Lu0/W;->d(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lu0/L;->f:I

    if-lt v6, v7, :cond_2

    if-lez v6, :cond_2

    invoke-virtual {p0, v1}, Lu0/L;->g(I)V

    add-int/lit8 v6, v6, -0x1

    :cond_2
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->F0:Z

    if-eqz v7, :cond_7

    if-lez v6, :cond_7

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->i0:LS3/g;

    iget v8, p1, Lu0/W;->c:I

    iget-object v9, v7, LS3/g;->d:Ljava/lang/Object;

    check-cast v9, [I

    if-eqz v9, :cond_4

    iget v9, v7, LS3/g;->c:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v1

    :goto_1
    if-ge v10, v9, :cond_4

    iget-object v11, v7, LS3/g;->d:Ljava/lang/Object;

    check-cast v11, [I

    aget v11, v11, v10

    if-ne v11, v8, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    :cond_4
    sub-int/2addr v6, v2

    :goto_2
    if-ltz v6, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu0/W;

    iget v7, v7, Lu0/W;->c:I

    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView;->i0:LS3/g;

    iget-object v9, v8, LS3/g;->d:Ljava/lang/Object;

    check-cast v9, [I

    if-eqz v9, :cond_6

    iget v9, v8, LS3/g;->c:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v1

    :goto_3
    if-ge v10, v9, :cond_6

    iget-object v11, v8, LS3/g;->d:Ljava/lang/Object;

    check-cast v11, [I

    aget v11, v11, v10

    if-ne v11, v7, :cond_5

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_6
    add-int/2addr v6, v2

    :cond_7
    :goto_4
    invoke-virtual {v5, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v1

    :goto_5
    if-nez v5, :cond_9

    invoke-virtual {p0, p1, v2}, Lu0/L;->a(Lu0/W;Z)V

    :goto_6
    move v1, v5

    goto :goto_7

    :cond_9
    move v2, v1

    goto :goto_6

    :cond_a
    move v2, v1

    :goto_7
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Lj3/G;

    invoke-virtual {v3, p1}, Lj3/G;->H(Lu0/W;)V

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    if-eqz v0, :cond_b

    invoke-static {v4}, LS4/b;->c(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lu0/W;->x:Lu0/y;

    iput-object v0, p1, Lu0/W;->w:Landroidx/recyclerview/widget/RecyclerView;

    :cond_b
    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu0/W;->j()Z

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_f

    move v1, v2

    :cond_f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lu0/W;->d(I)Z

    move-result v0

    iget-object v1, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lu0/W;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lu0/W;->c()Ljava/util/List;

    move-result-object v2

    check-cast v0, Lu0/h;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v0, v0, Lu0/h;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lu0/W;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu0/L;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu0/L;->b:Ljava/util/ArrayList;

    :cond_1
    iput-object p0, p1, Lu0/W;->s:Lu0/L;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lu0/W;->t:Z

    iget-object v0, p0, Lu0/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lu0/W;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lu0/W;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    iget-boolean v0, v0, Lu0/y;->b:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iput-object p0, p1, Lu0/W;->s:Lu0/L;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lu0/W;->t:Z

    iget-object v0, p0, Lu0/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final k(IJ)Lu0/W;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget-object v4, v1, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v0, :cond_4b

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {v5}, Lu0/S;->b()I

    move-result v5

    if-ge v0, v5, :cond_4b

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iget-boolean v6, v5, Lu0/S;->g:Z

    const/4 v8, 0x0

    const/16 v9, 0x20

    if-eqz v6, :cond_6

    iget-object v6, v1, Lu0/L;->b:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    move v10, v8

    :goto_0
    if-ge v10, v6, :cond_2

    iget-object v11, v1, Lu0/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lu0/W;

    invoke-virtual {v11}, Lu0/W;->q()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Lu0/W;->b()I

    move-result v12

    if-ne v12, v0, :cond_1

    invoke-virtual {v11, v9}, Lu0/W;->a(I)V

    goto :goto_3

    :cond_1
    add-int/2addr v10, v3

    goto :goto_0

    :cond_2
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    iget-boolean v10, v10, Lu0/y;->b:Z

    if-eqz v10, :cond_4

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->e:LC4/E;

    invoke-virtual {v10, v0, v8}, LC4/E;->g(II)I

    move-result v10

    if-lez v10, :cond_4

    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v11}, Lu0/y;->a()I

    move-result v11

    if-ge v10, v11, :cond_4

    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v11, v10}, Lu0/y;->b(I)J

    move-result-wide v10

    move v12, v8

    :goto_1
    if-ge v12, v6, :cond_4

    iget-object v13, v1, Lu0/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lu0/W;

    invoke-virtual {v13}, Lu0/W;->q()Z

    move-result v14

    if-nez v14, :cond_3

    iget-wide v14, v13, Lu0/W;->e:J

    cmp-long v14, v14, v10

    if-nez v14, :cond_3

    invoke-virtual {v13, v9}, Lu0/W;->a(I)V

    move-object v11, v13

    goto :goto_3

    :cond_3
    add-int/2addr v12, v3

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v8

    goto :goto_4

    :cond_6
    move v6, v8

    const/4 v11, 0x0

    :goto_4
    iget-object v10, v1, Lu0/L;->c:Ljava/util/ArrayList;

    iget-object v12, v1, Lu0/L;->a:Ljava/util/ArrayList;

    if-nez v11, :cond_1c

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v13, v8

    :goto_5
    if-ge v13, v11, :cond_9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lu0/W;

    invoke-virtual {v14}, Lu0/W;->q()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v14}, Lu0/W;->b()I

    move-result v15

    if-ne v15, v0, :cond_8

    invoke-virtual {v14}, Lu0/W;->g()Z

    move-result v15

    if-nez v15, :cond_8

    iget-boolean v15, v5, Lu0/S;->g:Z

    if-nez v15, :cond_7

    invoke-virtual {v14}, Lu0/W;->i()Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    invoke-virtual {v14, v9}, Lu0/W;->a(I)V

    move-object v11, v14

    goto/16 :goto_b

    :cond_8
    add-int/2addr v13, v3

    goto :goto_5

    :cond_9
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    iget-object v11, v11, LJ2/e;->d:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v8

    :goto_6
    if-ge v14, v13, :cond_b

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lu0/W;->b()I

    move-result v7

    if-ne v7, v0, :cond_a

    invoke-virtual/range {v16 .. v16}, Lu0/W;->g()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual/range {v16 .. v16}, Lu0/W;->i()Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    add-int/2addr v14, v3

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_11

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v7

    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    iget-object v13, v11, LJ2/e;->b:Ljava/lang/Object;

    check-cast v13, Lu0/x;

    iget-object v13, v13, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_10

    iget-object v14, v11, LJ2/e;->c:Ljava/lang/Object;

    check-cast v14, LI4/a;

    invoke-virtual {v14, v13}, LI4/a;->d(I)Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual {v14, v13}, LI4/a;->a(I)V

    invoke-virtual {v11, v15}, LJ2/e;->T(Landroid/view/View;)V

    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    iget-object v13, v11, LJ2/e;->b:Ljava/lang/Object;

    check-cast v13, Lu0/x;

    iget-object v13, v13, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    if-ne v13, v2, :cond_c

    :goto_8
    move v13, v2

    goto :goto_9

    :cond_c
    iget-object v11, v11, LJ2/e;->c:Ljava/lang/Object;

    check-cast v11, LI4/a;

    invoke-virtual {v11, v13}, LI4/a;->d(I)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v11, v13}, LI4/a;->b(I)I

    move-result v11

    sub-int/2addr v13, v11

    :goto_9
    if-eq v13, v2, :cond_e

    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v11, v13}, LJ2/e;->n(I)V

    invoke-virtual {v1, v15}, Lu0/L;->j(Landroid/view/View;)V

    const/16 v11, 0x2020

    invoke-virtual {v7, v11}, Lu0/W;->a(I)V

    move-object v11, v7

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v11, v8

    :goto_a
    if-ge v11, v7, :cond_13

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lu0/W;

    invoke-virtual {v13}, Lu0/W;->g()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v13}, Lu0/W;->b()I

    move-result v14

    if-ne v14, v0, :cond_12

    invoke-virtual {v13}, Lu0/W;->e()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v11, v13

    goto :goto_b

    :cond_12
    add-int/2addr v11, v3

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    :goto_b
    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Lu0/W;->i()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-boolean v7, v5, Lu0/S;->g:Z

    goto :goto_c

    :cond_14
    iget v7, v11, Lu0/W;->c:I

    if-ltz v7, :cond_1b

    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v13}, Lu0/y;->a()I

    move-result v13

    if-ge v7, v13, :cond_1b

    iget-boolean v7, v5, Lu0/S;->g:Z

    if-nez v7, :cond_16

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    iget v13, v11, Lu0/W;->c:I

    invoke-virtual {v7, v13}, Lu0/y;->c(I)I

    move-result v7

    iget v13, v11, Lu0/W;->f:I

    if-eq v7, v13, :cond_16

    :cond_15
    move v7, v8

    goto :goto_c

    :cond_16
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    iget-boolean v13, v7, Lu0/y;->b:Z

    if-eqz v13, :cond_17

    iget-wide v13, v11, Lu0/W;->e:J

    iget v15, v11, Lu0/W;->c:I

    invoke-virtual {v7, v15}, Lu0/y;->b(I)J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-nez v7, :cond_15

    :cond_17
    move v7, v3

    :goto_c
    if-nez v7, :cond_1a

    const/4 v7, 0x4

    invoke-virtual {v11, v7}, Lu0/W;->a(I)V

    invoke-virtual {v11}, Lu0/W;->j()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v11, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v7, v11, Lu0/W;->s:Lu0/L;

    invoke-virtual {v7, v11}, Lu0/L;->l(Lu0/W;)V

    goto :goto_d

    :cond_18
    invoke-virtual {v11}, Lu0/W;->q()Z

    move-result v7

    if-eqz v7, :cond_19

    iget v7, v11, Lu0/W;->o:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v11, Lu0/W;->o:I

    :cond_19
    :goto_d
    invoke-virtual {v1, v11}, Lu0/L;->i(Lu0/W;)V

    const/4 v11, 0x0

    goto :goto_e

    :cond_1a
    move v6, v3

    goto :goto_e

    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_e
    const-wide/16 v18, 0x0

    const-wide v20, 0x7fffffffffffffffL

    if-nez v11, :cond_31

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->e:LC4/E;

    invoke-virtual {v7, v0, v8}, LC4/E;->g(II)I

    move-result v7

    if-ltz v7, :cond_30

    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v13}, Lu0/y;->a()I

    move-result v13

    if-ge v7, v13, :cond_30

    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v13, v7}, Lu0/y;->c(I)I

    move-result v13

    iget-object v14, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    iget-boolean v15, v14, Lu0/y;->b:Z

    if-eqz v15, :cond_25

    invoke-virtual {v14, v7}, Lu0/y;->b(I)J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    :goto_f
    if-ltz v11, :cond_1f

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lu0/W;

    iget-wide v8, v3, Lu0/W;->e:J

    cmp-long v8, v8, v14

    if-nez v8, :cond_1e

    invoke-virtual {v3}, Lu0/W;->q()Z

    move-result v8

    if-nez v8, :cond_1e

    iget v8, v3, Lu0/W;->f:I

    if-ne v13, v8, :cond_1d

    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Lu0/W;->a(I)V

    invoke-virtual {v3}, Lu0/W;->i()Z

    move-result v8

    if-eqz v8, :cond_23

    iget-boolean v8, v5, Lu0/S;->g:Z

    if-nez v8, :cond_23

    iget v8, v3, Lu0/W;->o:I

    and-int/lit8 v8, v8, -0xf

    or-int/lit8 v8, v8, 0x2

    iput v8, v3, Lu0/W;->o:I

    goto :goto_11

    :cond_1d
    const/16 v8, 0x20

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v3, Lu0/W;->a:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v3

    const/4 v8, 0x0

    iput-object v8, v3, Lu0/W;->s:Lu0/L;

    iput-boolean v9, v3, Lu0/W;->t:Z

    iget v8, v3, Lu0/W;->o:I

    and-int/lit8 v8, v8, -0x21

    iput v8, v3, Lu0/W;->o:I

    invoke-virtual {v1, v3}, Lu0/L;->i(Lu0/W;)V

    :cond_1e
    add-int/2addr v11, v2

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x20

    goto :goto_f

    :cond_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    :goto_10
    if-ltz v3, :cond_21

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu0/W;

    iget-wide v11, v8, Lu0/W;->e:J

    cmp-long v9, v11, v14

    if-nez v9, :cond_22

    invoke-virtual {v8}, Lu0/W;->e()Z

    move-result v9

    if-nez v9, :cond_22

    iget v9, v8, Lu0/W;->f:I

    if-ne v13, v9, :cond_20

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v3, v8

    goto :goto_11

    :cond_20
    invoke-virtual {v1, v3}, Lu0/L;->g(I)V

    :cond_21
    const/4 v3, 0x0

    goto :goto_11

    :cond_22
    add-int/2addr v3, v2

    goto :goto_10

    :cond_23
    :goto_11
    if-eqz v3, :cond_24

    iput v7, v3, Lu0/W;->c:I

    move-object v11, v3

    const/4 v6, 0x1

    goto :goto_12

    :cond_24
    move-object v11, v3

    :cond_25
    :goto_12
    if-nez v11, :cond_29

    invoke-virtual/range {p0 .. p0}, Lu0/L;->c()Lu0/K;

    move-result-object v3

    iget-object v3, v3, Lu0/K;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu0/J;

    if-eqz v3, :cond_27

    iget-object v3, v3, Lu0/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_27

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_13
    if-ltz v7, :cond_27

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu0/W;

    invoke-virtual {v8}, Lu0/W;->e()Z

    move-result v8

    if-nez v8, :cond_26

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu0/W;

    goto :goto_14

    :cond_26
    add-int/2addr v7, v2

    goto :goto_13

    :cond_27
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lu0/W;->n()V

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->C0:[I

    :cond_28
    move-object v11, v2

    :cond_29
    if-nez v11, :cond_31

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    cmp-long v7, p2, v20

    if-eqz v7, :cond_2c

    iget-object v7, v1, Lu0/L;->g:Lu0/K;

    invoke-virtual {v7, v13}, Lu0/K;->a(I)Lu0/J;

    move-result-object v7

    iget-wide v7, v7, Lu0/J;->c:J

    cmp-long v9, v7, v18

    if-eqz v9, :cond_2b

    add-long/2addr v7, v2

    cmp-long v7, v7, p2

    if-gez v7, :cond_2a

    goto :goto_15

    :cond_2a
    const/4 v7, 0x0

    goto :goto_16

    :cond_2b
    :goto_15
    const/4 v7, 0x1

    :goto_16
    if-nez v7, :cond_2c

    const/4 v7, 0x0

    return-object v7

    :cond_2c
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v8, "RV CreateView"

    sget v9, LI/o;->a:I

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v13}, Lu0/y;->f(Landroid/view/ViewGroup;I)Lu0/W;

    move-result-object v11

    iget-object v7, v11, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_2f

    iput v13, v11, Lu0/W;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->F0:Z

    if-eqz v7, :cond_2d

    iget-object v7, v11, Lu0/W;->a:Landroid/view/View;

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    if-eqz v7, :cond_2d

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v11, Lu0/W;->b:Ljava/lang/ref/WeakReference;

    :cond_2d
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    iget-object v9, v1, Lu0/L;->g:Lu0/K;

    sub-long/2addr v7, v2

    invoke-virtual {v9, v13}, Lu0/K;->a(I)Lu0/J;

    move-result-object v2

    iget-wide v9, v2, Lu0/J;->c:J

    cmp-long v3, v9, v18

    if-nez v3, :cond_2e

    goto :goto_17

    :cond_2e
    const-wide/16 v12, 0x4

    div-long/2addr v9, v12

    const-wide/16 v14, 0x3

    mul-long/2addr v9, v14

    div-long/2addr v7, v12

    add-long/2addr v7, v9

    :goto_17
    iput-wide v7, v2, Lu0/J;->c:J

    goto :goto_19

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_2f
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_18
    sget v2, LI/o;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_30
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Inconsistency detected. Invalid item position "

    const-string v6, "(offset:"

    const-string v8, ").state:"

    invoke-static {v3, v0, v6, v7, v8}, Le1/i;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lu0/S;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    :goto_19
    if-eqz v6, :cond_32

    iget-boolean v2, v5, Lu0/S;->g:Z

    if-nez v2, :cond_32

    const/16 v2, 0x2000

    invoke-virtual {v11, v2}, Lu0/W;->d(I)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, v11, Lu0/W;->o:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, v11, Lu0/W;->o:I

    iget-boolean v2, v5, Lu0/S;->j:Z

    if-eqz v2, :cond_32

    invoke-static {v11}, Lu0/C;->b(Lu0/W;)V

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    invoke-virtual {v11}, Lu0/W;->c()Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LM/w;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v11}, LM/w;->a(Lu0/W;)V

    invoke-virtual {v4, v11, v2}, Landroidx/recyclerview/widget/RecyclerView;->V(Lu0/W;LM/w;)V

    :cond_32
    iget-boolean v2, v5, Lu0/S;->g:Z

    iget-object v3, v11, Lu0/W;->a:Landroid/view/View;

    if-eqz v2, :cond_33

    invoke-virtual {v11}, Lu0/W;->f()Z

    move-result v2

    if-eqz v2, :cond_33

    iput v0, v11, Lu0/W;->l:I

    goto :goto_1b

    :cond_33
    invoke-virtual {v11}, Lu0/W;->f()Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, v11, Lu0/W;->o:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    goto :goto_1a

    :cond_34
    const/4 v2, 0x0

    :goto_1a
    if-nez v2, :cond_36

    invoke-virtual {v11}, Lu0/W;->g()Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_1c

    :cond_35
    :goto_1b
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/16 v16, 0x0

    goto/16 :goto_25

    :cond_36
    :goto_1c
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->e:LC4/E;

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, LC4/E;->g(II)I

    move-result v2

    const/4 v7, 0x0

    iput-object v7, v11, Lu0/W;->x:Lu0/y;

    iput-object v4, v11, Lu0/W;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget v8, v11, Lu0/W;->f:I

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    cmp-long v10, p2, v20

    if-eqz v10, :cond_38

    iget-object v10, v1, Lu0/L;->g:Lu0/K;

    invoke-virtual {v10, v8}, Lu0/K;->a(I)Lu0/J;

    move-result-object v8

    iget-wide v14, v8, Lu0/J;->d:J

    cmp-long v8, v14, v18

    if-eqz v8, :cond_38

    add-long/2addr v14, v12

    cmp-long v8, v14, p2

    if-gez v8, :cond_37

    goto :goto_1d

    :cond_37
    move v0, v9

    const/4 v2, 0x1

    goto/16 :goto_24

    :cond_38
    :goto_1d
    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v11, Lu0/W;->x:Lu0/y;

    if-nez v10, :cond_39

    const/4 v10, 0x1

    goto :goto_1e

    :cond_39
    move v10, v9

    :goto_1e
    if-eqz v10, :cond_3b

    iput v2, v11, Lu0/W;->c:I

    iget-boolean v14, v8, Lu0/y;->b:Z

    if-eqz v14, :cond_3a

    invoke-virtual {v8, v2}, Lu0/y;->b(I)J

    move-result-wide v14

    iput-wide v14, v11, Lu0/W;->e:J

    :cond_3a
    iget v14, v11, Lu0/W;->o:I

    and-int/lit16 v14, v14, -0x208

    const/4 v15, 0x1

    or-int/2addr v14, v15

    iput v14, v11, Lu0/W;->o:I

    sget v14, LI/o;->a:I

    const-string v14, "RV OnBindView"

    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_3b
    iput-object v8, v11, Lu0/W;->x:Lu0/y;

    invoke-virtual {v11}, Lu0/W;->c()Ljava/util/List;

    invoke-virtual {v8, v11, v2}, Lu0/y;->e(Lu0/W;I)V

    if-eqz v10, :cond_3e

    iget-object v2, v11, Lu0/W;->p:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_3c
    iget v2, v11, Lu0/W;->o:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v11, Lu0/W;->o:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v8, v2, Lu0/G;

    if-eqz v8, :cond_3d

    check-cast v2, Lu0/G;

    const/4 v8, 0x1

    iput-boolean v8, v2, Lu0/G;->c:Z

    :cond_3d
    sget v2, LI/o;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3e
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v14

    iget-object v2, v1, Lu0/L;->g:Lu0/K;

    iget v8, v11, Lu0/W;->f:I

    sub-long/2addr v14, v12

    invoke-virtual {v2, v8}, Lu0/K;->a(I)Lu0/J;

    move-result-object v2

    iget-wide v12, v2, Lu0/J;->d:J

    cmp-long v8, v12, v18

    if-nez v8, :cond_3f

    goto :goto_1f

    :cond_3f
    const-wide/16 v16, 0x4

    div-long v12, v12, v16

    const-wide/16 v18, 0x3

    mul-long v12, v12, v18

    div-long v14, v14, v16

    add-long/2addr v14, v12

    :goto_1f
    iput-wide v14, v2, Lu0/J;->d:J

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_20

    :cond_40
    move v2, v9

    :goto_20
    if-eqz v2, :cond_46

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_21

    :cond_41
    const/4 v2, 0x1

    :goto_21
    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->q0:Lu0/X;

    if-nez v8, :cond_42

    goto :goto_23

    :cond_42
    iget-object v8, v8, Lu0/X;->e:La0/b;

    if-eqz v8, :cond_45

    invoke-static {v3}, LM/a0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v10

    if-nez v10, :cond_43

    goto :goto_22

    :cond_43
    instance-of v7, v10, LM/a;

    if-eqz v7, :cond_44

    check-cast v10, LM/a;

    iget-object v7, v10, LM/a;->a:LM/b;

    goto :goto_22

    :cond_44
    new-instance v7, LM/b;

    invoke-direct {v7, v10}, LM/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_22
    if-eqz v7, :cond_45

    if-eq v7, v8, :cond_45

    iget-object v10, v8, La0/b;->f:Ljava/lang/Object;

    check-cast v10, Ljava/util/WeakHashMap;

    invoke-virtual {v10, v3, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    invoke-static {v3, v8}, LM/a0;->m(Landroid/view/View;LM/b;)V

    goto :goto_23

    :cond_46
    const/4 v2, 0x1

    :goto_23
    iget-boolean v5, v5, Lu0/S;->g:Z

    if-eqz v5, :cond_47

    iput v0, v11, Lu0/W;->l:I

    :cond_47
    move v0, v2

    :goto_24
    move/from16 v16, v0

    :goto_25
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_48

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26

    :cond_48
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26

    :cond_49
    check-cast v0, Lu0/G;

    :goto_26
    iput-object v11, v0, Lu0/G;->a:Lu0/W;

    if-eqz v6, :cond_4a

    if-eqz v16, :cond_4a

    move v3, v2

    goto :goto_27

    :cond_4a
    move v3, v9

    :goto_27
    iput-boolean v3, v0, Lu0/G;->d:Z

    return-object v11

    :cond_4b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Invalid item position "

    const-string v5, "("

    const-string v6, "). Item count:"

    invoke-static {v3, v0, v5, v0, v6}, Le1/i;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {v3}, Lu0/S;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final l(Lu0/W;)V
    .locals 1

    iget-boolean v0, p1, Lu0/W;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu0/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu0/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lu0/W;->s:Lu0/L;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lu0/W;->t:Z

    iget v0, p1, Lu0/W;->o:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, Lu0/W;->o:I

    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lu0/L;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    if-eqz v0, :cond_0

    iget v0, v0, Lu0/F;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lu0/L;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lu0/L;->f:I

    iget-object v0, p0, Lu0/L;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lu0/L;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lu0/L;->g(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
