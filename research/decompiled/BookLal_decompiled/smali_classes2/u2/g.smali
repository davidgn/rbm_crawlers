.class public final Lu2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/z;


# instance fields
.field public a:Lk2/b;

.field public b:Z

.field public c:I


# virtual methods
.method public final b(Lk/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final g(Z)V
    .locals 7

    iget-boolean v0, p0, Lu2/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lu2/g;->a:Lk2/b;

    invoke-virtual {p1}, Lu2/e;->a()V

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lu2/g;->a:Lk2/b;

    iget-object v0, p1, Lu2/e;->G:Lk/m;

    if-eqz v0, :cond_9

    iget-object v1, p1, Lu2/e;->f:[Lu2/c;

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, v0, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lu2/e;->f:[Lu2/c;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lu2/e;->a()V

    goto/16 :goto_4

    :cond_3
    iget v1, p1, Lu2/e;->l:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p1, Lu2/e;->G:Lk/m;

    invoke-virtual {v4, v3}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p1, Lu2/e;->l:I

    iput v3, p1, Lu2/e;->m:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v3, p1, Lu2/e;->l:I

    if-eq v1, v3, :cond_6

    iget-object v1, p1, Lu2/e;->a:LF0/a;

    invoke-static {p1, v1}, LF0/v;->a(Landroid/view/ViewGroup;LF0/r;)V

    :cond_6
    iget v1, p1, Lu2/e;->e:I

    iget-object v3, p1, Lu2/e;->G:Lk/m;

    invoke-virtual {v3}, Lk/m;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v4, :cond_8

    const/4 v1, 0x3

    if-le v3, v1, :cond_7

    :goto_1
    move v1, v5

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    if-nez v1, :cond_7

    goto :goto_1

    :goto_2
    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_9

    iget-object v4, p1, Lu2/e;->F:Lu2/g;

    iput-boolean v5, v4, Lu2/g;->b:Z

    iget-object v4, p1, Lu2/e;->f:[Lu2/c;

    aget-object v4, v4, v3

    iget v6, p1, Lu2/e;->e:I

    invoke-virtual {v4, v6}, Lu2/c;->setLabelVisibilityMode(I)V

    iget-object v4, p1, Lu2/e;->f:[Lu2/c;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lu2/c;->setShifting(Z)V

    iget-object v4, p1, Lu2/e;->f:[Lu2/c;

    aget-object v4, v4, v3

    iget-object v6, p1, Lu2/e;->G:Lk/m;

    invoke-virtual {v6, v3}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lk/o;

    invoke-virtual {v4, v6}, Lu2/c;->c(Lk/o;)V

    iget-object v4, p1, Lu2/e;->F:Lu2/g;

    iput-boolean v2, v4, Lu2/g;->b:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lu2/g;->c:I

    return v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(Landroid/os/Parcelable;)V
    .locals 13

    instance-of v0, p1, Lu2/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lu2/g;->a:Lk2/b;

    check-cast p1, Lu2/f;

    iget v1, p1, Lu2/f;->a:I

    iget-object v2, v0, Lu2/e;->G:Lk/m;

    iget-object v2, v2, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    iget-object v6, v0, Lu2/e;->G:Lk/m;

    invoke-virtual {v6, v4}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    if-ne v1, v7, :cond_0

    iput v1, v0, Lu2/e;->l:I

    iput v4, v0, Lu2/e;->m:I

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lu2/g;->a:Lk2/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lu2/f;->b:Ls2/r;

    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh2/a;

    if-eqz v6, :cond_5

    new-instance v7, Lh2/b;

    invoke-direct {v7, v0}, Lh2/b;-><init>(Landroid/content/Context;)V

    iget v8, v6, Lh2/a;->e:I

    invoke-virtual {v7, v8}, Lh2/b;->f(I)V

    iget v8, v6, Lh2/a;->d:I

    const/4 v9, -0x1

    iget-object v10, v7, Lh2/b;->c:Ls2/x;

    iget-object v11, v7, Lh2/b;->m:Lh2/a;

    if-eq v8, v9, :cond_2

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v11, Lh2/a;->d:I

    if-eq v9, v8, :cond_2

    iput v8, v11, Lh2/a;->d:I

    iput-boolean v5, v10, Ls2/x;->d:Z

    invoke-virtual {v7}, Lh2/b;->h()V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    iget v8, v6, Lh2/a;->a:I

    iput v8, v11, Lh2/a;->a:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iget-object v9, v7, Lh2/b;->b:Lz2/g;

    iget-object v12, v9, Lz2/g;->a:Lz2/f;

    iget-object v12, v12, Lz2/f;->c:Landroid/content/res/ColorStateList;

    if-eq v12, v8, :cond_3

    invoke-virtual {v9, v8}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    iget v8, v6, Lh2/a;->b:I

    iput v8, v11, Lh2/a;->b:I

    iget-object v9, v10, Ls2/x;->a:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    if-eq v9, v8, :cond_4

    iget-object v9, v10, Ls2/x;->a:Landroid/text/TextPaint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    iget v8, v6, Lh2/a;->n:I

    invoke-virtual {v7, v8}, Lh2/b;->e(I)V

    iget v8, v6, Lh2/a;->p:I

    iput v8, v11, Lh2/a;->p:I

    invoke-virtual {v7}, Lh2/b;->h()V

    iget v8, v6, Lh2/a;->q:I

    iput v8, v11, Lh2/a;->q:I

    invoke-virtual {v7}, Lh2/b;->h()V

    iget v8, v6, Lh2/a;->r:I

    iput v8, v11, Lh2/a;->r:I

    invoke-virtual {v7}, Lh2/b;->h()V

    iget v8, v6, Lh2/a;->s:I

    iput v8, v11, Lh2/a;->s:I

    invoke-virtual {v7}, Lh2/b;->h()V

    iget v8, v6, Lh2/a;->t:I

    iput v8, v11, Lh2/a;->t:I

    invoke-virtual {v7}, Lh2/b;->h()V

    iget v8, v6, Lh2/a;->u:I

    iput v8, v11, Lh2/a;->u:I

    invoke-virtual {v7}, Lh2/b;->h()V

    iget-boolean v6, v6, Lh2/a;->o:Z

    invoke-virtual {v7, v6, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-boolean v6, v11, Lh2/a;->o:Z

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BadgeDrawable\'s savedState cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p1, p0, Lu2/g;->a:Lk2/b;

    invoke-virtual {p1, v1}, Lu2/e;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_7
    return-void
.end method

.method public final k(Landroid/content/Context;Lk/m;)V
    .locals 0

    iget-object p1, p0, Lu2/g;->a:Lk2/b;

    iput-object p2, p1, Lu2/e;->G:Lk/m;

    return-void
.end method

.method public final m()Landroid/os/Parcelable;
    .locals 6

    new-instance v0, Lu2/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lu2/g;->a:Lk2/b;

    invoke-virtual {v1}, Lu2/e;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lu2/f;->a:I

    iget-object v1, p0, Lu2/g;->a:Lk2/b;

    invoke-virtual {v1}, Lu2/e;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Ls2/r;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh2/b;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lh2/b;->m:Lh2/a;

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badgeDrawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v2, v0, Lu2/f;->b:Ls2/r;

    return-object v0
.end method
