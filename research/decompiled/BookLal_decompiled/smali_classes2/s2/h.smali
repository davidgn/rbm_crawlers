.class public final Ls2/h;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public e:Lk/o;

.field public f:Z

.field public final synthetic l:Ls2/p;


# direct methods
.method public constructor <init>(Ls2/p;)V
    .locals 0

    iput-object p1, p0, Ls2/h;->l:Ls2/p;

    invoke-direct {p0}, Lu0/y;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls2/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ls2/h;->h()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ls2/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, Ls2/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls2/j;

    instance-of v0, p1, Ls2/k;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    instance-of v0, p1, Ls2/i;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    instance-of v0, p1, Ls2/l;

    if-eqz v0, :cond_3

    check-cast p1, Ls2/l;

    iget-object p1, p1, Ls2/l;->a:Lk/o;

    invoke-virtual {p1}, Lk/o;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lu0/W;I)V
    .locals 4

    check-cast p1, Ls2/o;

    invoke-virtual {p0, p2}, Ls2/h;->c(I)I

    move-result v0

    iget-object v1, p0, Ls2/h;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Ls2/h;->l:Ls2/p;

    iget-object p1, p1, Lu0/W;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls2/k;

    iget v0, v2, Ls2/p;->v:I

    iget v1, p2, Ls2/k;->a:I

    iget v2, v2, Ls2/p;->w:I

    iget p2, p2, Ls2/k;->b:I

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls2/l;

    iget-object p2, p2, Ls2/l;->a:Lk/o;

    iget-object p2, p2, Lk/o;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, v2, Ls2/p;->l:I

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget p2, v2, Ls2/p;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, v2, Ls2/p;->m:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, v2, Ls2/p;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v0, v2, Ls2/p;->n:I

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_4
    iget-object v0, v2, Ls2/p;->o:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-object v0, v2, Ls2/p;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    sget-object v3, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls2/l;

    iget-boolean v0, p2, Ls2/l;->b:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    iget v0, v2, Ls2/p;->r:I

    iget v1, v2, Ls2/p;->s:I

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    iget v0, v2, Ls2/p;->t:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    iget-boolean v0, v2, Ls2/p;->y:Z

    if-eqz v0, :cond_7

    iget v0, v2, Ls2/p;->u:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    :cond_7
    iget v0, v2, Ls2/p;->A:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    iget-object p2, p2, Ls2/l;->a:Lk/o;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->c(Lk/o;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 4

    iget-object v0, p0, Ls2/h;->l:Ls2/p;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    new-instance p1, Ls2/g;

    iget-object p2, v0, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lu0/W;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    new-instance p2, Ls2/g;

    iget-object v0, v0, Ls2/p;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0053

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    :cond_2
    new-instance p2, Ls2/g;

    iget-object v0, v0, Ls2/p;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0054

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    new-instance p2, Ls2/n;

    iget-object v2, v0, Ls2/p;->f:Landroid/view/LayoutInflater;

    iget-object v0, v0, Ls2/p;->E:LB2/e;

    const v3, 0x7f0c0051

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public final g(Lu0/W;)V
    .locals 1

    check-cast p1, Ls2/o;

    instance-of v0, p1, Ls2/n;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lu0/W;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->E:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->D:Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ls2/h;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Ls2/h;->f:Z

    iget-object v2, v0, Ls2/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ls2/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Ls2/h;->l:Ls2/p;

    iget-object v4, v3, Ls2/p;->c:Lk/m;

    invoke-virtual {v4}, Lk/m;->l()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v4, :cond_f

    iget-object v10, v3, Ls2/p;->c:Lk/m;

    invoke-virtual {v10}, Lk/m;->l()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk/o;

    invoke-virtual {v10}, Lk/o;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0, v10}, Ls2/h;->i(Lk/o;)V

    :cond_1
    invoke-virtual {v10}, Lk/o;->isCheckable()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10, v5}, Lk/o;->g(Z)V

    :cond_2
    invoke-virtual {v10}, Lk/o;->hasSubMenu()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v10, Lk/o;->t:Lk/F;

    invoke-virtual {v11}, Lk/m;->hasVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_9

    if-eqz v7, :cond_3

    new-instance v12, Ls2/k;

    iget v13, v3, Ls2/p;->C:I

    invoke-direct {v12, v13, v5}, Ls2/k;-><init>(II)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v12, Ls2/l;

    invoke-direct {v12, v10}, Ls2/l;-><init>(Lk/o;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v11, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v5

    move v15, v14

    :goto_1
    if-ge v14, v13, :cond_8

    invoke-virtual {v11, v14}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lk/o;

    invoke-virtual {v1}, Lk/o;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_7

    if-nez v15, :cond_4

    invoke-virtual {v1}, Lk/o;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-eqz v16, :cond_4

    const/4 v15, 0x1

    :cond_4
    invoke-virtual {v1}, Lk/o;->isCheckable()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v1, v5}, Lk/o;->g(Z)V

    :cond_5
    invoke-virtual {v10}, Lk/o;->isChecked()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v0, v10}, Ls2/h;->i(Lk/o;)V

    :cond_6
    new-instance v5, Ls2/l;

    invoke-direct {v5, v1}, Ls2/l;-><init>(Lk/o;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v12, v1, :cond_9

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls2/l;

    const/4 v10, 0x1

    iput-boolean v10, v5, Ls2/l;->b:Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    const/4 v11, 0x1

    goto :goto_6

    :cond_a
    iget v1, v10, Lk/o;->b:I

    if-eq v1, v6, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v10}, Lk/o;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_b

    const/4 v8, 0x1

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    :goto_3
    if-eqz v7, :cond_c

    add-int/lit8 v9, v9, 0x1

    new-instance v5, Ls2/k;

    iget v6, v3, Ls2/p;->C:I

    invoke-direct {v5, v6, v6}, Ls2/k;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    if-nez v8, :cond_c

    invoke-virtual {v10}, Lk/o;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v9

    :goto_4
    if-ge v6, v5, :cond_e

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls2/l;

    const/4 v11, 0x1

    iput-boolean v11, v8, Ls2/l;->b:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_e
    const/4 v11, 0x1

    move v8, v11

    :goto_5
    new-instance v5, Ls2/l;

    invoke-direct {v5, v10}, Ls2/l;-><init>(Lk/o;)V

    iput-boolean v8, v5, Ls2/l;->b:Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v1, v11

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_f
    move v1, v5

    iput-boolean v1, v0, Ls2/h;->f:Z

    return-void
.end method

.method public final i(Lk/o;)V
    .locals 2

    iget-object v0, p0, Ls2/h;->e:Lk/o;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lk/o;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls2/h;->e:Lk/o;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk/o;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    iput-object p1, p0, Ls2/h;->e:Lk/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/o;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method
