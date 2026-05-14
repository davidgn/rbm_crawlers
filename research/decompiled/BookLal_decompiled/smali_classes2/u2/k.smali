.class public abstract Lu2/k;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lu2/d;

.field public final b:Lk2/b;

.field public final c:Lu2/g;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Lj/i;

.field public f:Lu2/i;

.field public l:Lu2/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const v3, 0x7f04006a

    const v4, 0x7f120304

    invoke-static {p1, p2, v3, v4}, LC2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lu2/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, p1, Lu2/g;->b:Z

    iput-object p1, p0, Lu2/k;->c:Lu2/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v2, Le2/a;->z:[I

    const/16 v8, 0xa

    const/16 v9, 0x9

    filled-new-array {v8, v9}, [I

    move-result-object v5

    move-object v0, v7

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Ls2/A;->g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)LJ2/e;

    move-result-object p2

    new-instance v0, Lu2/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lu2/k;->getMaxItemCount()I

    move-result v2

    invoke-direct {v0, v7, v1, v2}, Lu2/d;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object v0, p0, Lu2/k;->a:Lu2/d;

    new-instance v1, Lk2/b;

    invoke-direct {v1, v7}, Lk2/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lu2/k;->b:Lk2/b;

    iput-object v1, p1, Lu2/g;->a:Lk2/b;

    const/4 v2, 0x1

    iput v2, p1, Lu2/g;->c:I

    invoke-virtual {v1, p1}, Lu2/e;->setPresenter(Lu2/g;)V

    iget-object v3, v0, Lk/m;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v3}, Lk/m;->b(Lk/z;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget-object v3, p1, Lu2/g;->a:Lk2/b;

    iput-object v0, v3, Lu2/e;->G:Lk/m;

    iget-object v3, p2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/TypedArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, v4}, LJ2/e;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lu2/e;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lu2/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lu2/e;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemIconSize(I)V

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemTextAppearanceInactive(I)V

    :cond_1
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemTextAppearanceActive(I)V

    :cond_2
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2, v4}, LJ2/e;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_6

    :cond_4
    new-instance v4, Lz2/g;

    invoke-direct {v4}, Lz2/g;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v9, v8, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v9, :cond_5

    check-cast v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    :cond_5
    invoke-virtual {v4, v7}, Lz2/g;->i(Landroid/content/Context;)V

    sget-object v8, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemPaddingTop(I)V

    :cond_7
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemPaddingBottom(I)V

    :cond_8
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lu2/k;->setElevation(F)V

    :cond_9
    invoke-static {v7, p2, v6}, Landroid/support/v4/media/session/a;->l(Landroid/content/Context;LJ2/e;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, v4}, LF/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/16 v4, 0xc

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/k;->setLabelVisibilityMode(I)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1, v8}, Lu2/e;->setItemBackgroundRes(I)V

    goto :goto_1

    :cond_a
    const/16 v8, 0x8

    invoke-static {v7, p2, v8}, Landroid/support/v4/media/session/a;->l(Landroid/content/Context;LJ2/e;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {p0, v8}, Lu2/k;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    const/4 v8, 0x2

    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0, v2}, Lu2/k;->setItemActiveIndicatorEnabled(Z)V

    sget-object v10, Le2/a;->y:[I

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lu2/k;->setItemActiveIndicatorWidth(I)V

    invoke-virtual {v9, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lu2/k;->setItemActiveIndicatorHeight(I)V

    invoke-virtual {v9, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemActiveIndicatorMarginHorizontal(I)V

    invoke-static {v7, v9, v8}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v9, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    new-instance v5, Lz2/a;

    int-to-float v8, v6

    invoke-direct {v5, v8}, Lz2/a;-><init>(F)V

    invoke-static {v7, v4, v6, v5}, Lz2/k;->a(Landroid/content/Context;IILz2/a;)Lz2/j;

    move-result-object v4

    invoke-virtual {v4}, Lz2/j;->a()Lz2/k;

    move-result-object v4

    invoke-virtual {p0, v4}, Lu2/k;->setItemActiveIndicatorShapeAppearance(Lz2/k;)V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput-boolean v2, p1, Lu2/g;->b:Z

    invoke-direct {p0}, Lu2/k;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-boolean v6, p1, Lu2/g;->b:Z

    invoke-virtual {p1, v2}, Lu2/g;->g(Z)V

    :cond_c
    invoke-virtual {p2}, LJ2/e;->M()V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lj1/a;

    move-object p2, p0

    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/16 v1, 0xf

    invoke-direct {p1, p2, v1}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v0, Lk/m;->e:Lk/k;

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lu2/k;->e:Lj/i;

    if-nez v0, :cond_0

    new-instance v0, Lj/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lj/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu2/k;->e:Lj/i;

    :cond_0
    iget-object v0, p0, Lu2/k;->e:Lj/i;

    return-object v0
.end method


# virtual methods
.method public final a()Lh2/b;
    .locals 15

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lu2/e;->v:Landroid/util/SparseArray;

    const v2, 0x7f0900fb

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh2/b;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v10, Lh2/b;

    invoke-direct {v10, v1}, Lh2/b;-><init>(Landroid/content/Context;)V

    sget-object v11, Le2/a;->c:[I

    new-array v9, v3, [I

    const/4 v12, 0x0

    const v13, 0x7f040050

    const v14, 0x7f1203a1

    invoke-static {v1, v12, v13, v14}, Ls2/A;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v4, v1

    move-object v5, v12

    move-object v6, v11

    move v7, v13

    move v8, v14

    invoke-static/range {v4 .. v9}, Ls2/A;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v1, v12, v11, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v10, v5}, Lh2/b;->f(I)V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    const/4 v8, 0x1

    iget-object v9, v10, Lh2/b;->c:Ls2/x;

    iget-object v11, v10, Lh2/b;->m:Lh2/a;

    if-eqz v7, :cond_0

    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v11, Lh2/a;->d:I

    if-eq v7, v5, :cond_0

    iput v5, v11, Lh2/a;->d:I

    iput-boolean v8, v9, Ls2/x;->d:Z

    invoke-virtual {v10}, Lh2/b;->h()V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    invoke-static {v1, v4, v3}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, v11, Lh2/a;->a:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v7, v10, Lh2/b;->b:Lz2/g;

    iget-object v12, v7, Lz2/g;->a:Lz2/f;

    iget-object v12, v12, Lz2/f;->c:Landroid/content/res/ColorStateList;

    if-eq v12, v5, :cond_1

    invoke-virtual {v7, v5}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, v4, v5}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v11, Lh2/a;->b:I

    iget-object v5, v9, Ls2/x;->a:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    if-eq v5, v1, :cond_2

    iget-object v5, v9, Ls2/x;->a:Landroid/text/TextPaint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    const v1, 0x800035

    invoke-virtual {v4, v8, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v10, v1}, Lh2/b;->e(I)V

    const/4 v1, 0x6

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v11, Lh2/a;->p:I

    invoke-virtual {v10}, Lh2/b;->h()V

    const/16 v1, 0xa

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v11, Lh2/a;->q:I

    invoke-virtual {v10}, Lh2/b;->h()V

    iget v1, v11, Lh2/a;->p:I

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v11, Lh2/a;->r:I

    invoke-virtual {v10}, Lh2/b;->h()V

    iget v1, v11, Lh2/a;->q:I

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v11, Lh2/a;->s:I

    invoke-virtual {v10}, Lh2/b;->h()V

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v10, Lh2/b;->e:F

    float-to-int v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, v10, Lh2/b;->e:F

    :cond_3
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v10, Lh2/b;->l:F

    float-to-int v1, v1

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, v10, Lh2/b;->l:F

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v10, Lh2/b;->f:F

    float-to-int v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, v10, Lh2/b;->f:F

    :cond_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v0, Lu2/e;->v:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v10

    :cond_6
    iget-object v0, v0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_8

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_8

    aget-object v5, v0, v3

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v2, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_9

    invoke-virtual {v5, v1}, Lu2/c;->setBadge(Lh2/b;)V

    :cond_9
    return-object v1
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemActiveIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemActiveIndicatorMarginHorizontal()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lz2/k;
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemActiveIndicatorShapeAppearance()Lz2/k;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemActiveIndicatorWidth()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemPaddingTop()I

    move-result v0

    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lu2/k;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lu2/k;->a:Lu2/d;

    return-object v0
.end method

.method public getMenuView()Lk/B;
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    return-object v0
.end method

.method public getPresenter()Lu2/g;
    .locals 1

    iget-object v0, p0, Lu2/k;->c:Lu2/g;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {p0}, La/a;->F(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lu2/j;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lu2/j;

    iget-object v0, p1, LV/b;->a:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lu2/k;->a:Lu2/d;

    iget-object p1, p1, Lu2/j;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lk/m;->t(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lu2/j;

    invoke-direct {v1, v0}, LV/b;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lu2/j;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lu2/k;->a:Lu2/d;

    invoke-virtual {v2, v0}, Lk/m;->v(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, La/a;->A(Landroid/view/ViewGroup;F)V

    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemActiveIndicatorEnabled(Z)V

    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemActiveIndicatorHeight(I)V

    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemActiveIndicatorMarginHorizontal(I)V

    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lz2/k;)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemActiveIndicatorShapeAppearance(Lz2/k;)V

    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemActiveIndicatorWidth(I)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lu2/k;->d:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lu2/k;->d:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lu2/k;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemPaddingBottom(I)V

    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemPaddingTop(I)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 7

    iget-object v0, p0, Lu2/k;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    iget-object v2, p0, Lu2/k;->b:Lk2/b;

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Lu2/e;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v1}, Lu2/e;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lu2/k;->d:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    invoke-virtual {v2, v1}, Lu2/e;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lx2/a;->c:[I

    sget-object v3, Lx2/a;->b:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    const/16 v5, 0xff

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, LE/a;->d(II)I

    move-result v3

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    filled-new-array {v0, v4}, [[I

    move-result-object v0

    sget-object v4, Lx2/a;->a:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, v4}, LE/a;->d(II)I

    move-result p1

    filled-new-array {v3, p1}, [I

    move-result-object p1

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p1, v3, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, p1}, Lu2/e;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0, p1}, Lu2/e;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2

    iget-object v0, p0, Lu2/k;->b:Lk2/b;

    invoke-virtual {v0}, Lu2/e;->getLabelVisibilityMode()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lu2/e;->setLabelVisibilityMode(I)V

    iget-object p1, p0, Lu2/k;->c:Lu2/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu2/g;->g(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(Lu2/h;)V
    .locals 0

    iput-object p1, p0, Lu2/k;->l:Lu2/h;

    return-void
.end method

.method public setOnItemSelectedListener(Lu2/i;)V
    .locals 0

    iput-object p1, p0, Lu2/k;->f:Lu2/i;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    iget-object v0, p0, Lu2/k;->a:Lu2/d;

    invoke-virtual {v0, p1}, Lk/m;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lu2/k;->c:Lu2/g;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lk/m;->q(Landroid/view/MenuItem;Lk/z;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
