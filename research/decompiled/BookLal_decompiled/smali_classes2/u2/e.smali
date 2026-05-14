.class public abstract Lu2/e;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lk/B;


# static fields
.field public static final H:[I

.field public static final I:[I


# instance fields
.field public A:I

.field public B:I

.field public C:Lz2/k;

.field public D:Z

.field public E:Landroid/content/res/ColorStateList;

.field public F:Lu2/g;

.field public G:Lk/m;

.field public final a:LF0/a;

.field public final b:LB2/e;

.field public final c:LL/d;

.field public final d:Landroid/util/SparseArray;

.field public e:I

.field public f:[Lu2/c;

.field public l:I

.field public m:I

.field public n:Landroid/content/res/ColorStateList;

.field public o:I

.field public p:Landroid/content/res/ColorStateList;

.field public final q:Landroid/content/res/ColorStateList;

.field public r:I

.field public s:I

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:I

.field public v:Landroid/util/SparseArray;

.field public w:I

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lu2/e;->H:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lu2/e;->I:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, LL/d;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, LL/d;-><init>(I)V

    iput-object p1, p0, Lu2/e;->c:LL/d;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lu2/e;->d:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput p1, p0, Lu2/e;->l:I

    iput p1, p0, Lu2/e;->m:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lu2/e;->v:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lu2/e;->w:I

    iput v0, p0, Lu2/e;->x:I

    iput-boolean p1, p0, Lu2/e;->D:Z

    invoke-virtual {p0}, Lu2/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lu2/e;->q:Landroid/content/res/ColorStateList;

    new-instance v0, LF0/a;

    invoke-direct {v0}, LF0/a;-><init>()V

    iput-object v0, p0, Lu2/e;->a:LF0/a;

    invoke-virtual {v0, p1}, LF0/w;->K(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f040311

    invoke-static {p1, v2}, La/a;->u(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget v1, p1, Landroid/util/TypedValue;->data:I

    :cond_0
    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, LF0/w;->I(J)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lf2/a;->b:Lg0/a;

    invoke-static {p1, v1}, LS4/b;->B(Landroid/content/Context;Lg0/a;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, LF0/w;->J(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Ls2/y;

    invoke-direct {p1}, LF0/r;-><init>()V

    invoke-virtual {v0, p1}, LF0/w;->H(LF0/r;)V

    new-instance p1, LB2/e;

    move-object v0, p0

    check-cast v0, Lk2/b;

    const/16 v1, 0x1c

    invoke-direct {p1, v0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lu2/e;->b:LB2/e;

    sget-object p1, LM/a0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private getNewItem()Lu2/c;
    .locals 2

    iget-object v0, p0, Lu2/e;->c:LL/d;

    invoke-virtual {v0}, LL/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lk2/a;

    invoke-direct {v1, v0}, Lu2/c;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(Lu2/c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lu2/e;->v:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lu2/c;->setBadge(Lh2/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_7

    aget-object v6, v0, v5

    if-eqz v6, :cond_6

    iget-object v7, p0, Lu2/e;->c:LL/d;

    invoke-virtual {v7, v6}, LL/d;->c(Ljava/lang/Object;)Z

    iget-object v7, v6, Lu2/c;->G:Lh2/b;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lu2/c;->p:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v8, v6, Lu2/c;->G:Lh2/b;

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    iget-object v9, v8, Lh2/b;->u:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    if-eqz v9, :cond_3

    iget-object v7, v8, Lh2/b;->u:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    iput-object v1, v6, Lu2/c;->G:Lh2/b;

    :cond_5
    iput-object v1, v6, Lu2/c;->u:Lk/o;

    const/4 v7, 0x0

    iput v7, v6, Lu2/c;->A:F

    iput-boolean v2, v6, Lu2/c;->a:Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lu2/e;->G:Lk/m;

    iget-object v0, v0, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iput v2, p0, Lu2/e;->l:I

    iput v2, p0, Lu2/e;->m:I

    iput-object v1, p0, Lu2/e;->f:[Lu2/c;

    return-void

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_4
    iget-object v4, p0, Lu2/e;->G:Lk/m;

    iget-object v4, v4, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    iget-object v4, p0, Lu2/e;->G:Lk/m;

    invoke-virtual {v4, v1}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_5
    iget-object v4, p0, Lu2/e;->v:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    iget-object v4, p0, Lu2/e;->v:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lu2/e;->v:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lu2/e;->G:Lk/m;

    iget-object v0, v0, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lu2/c;

    iput-object v0, p0, Lu2/e;->f:[Lu2/c;

    iget v0, p0, Lu2/e;->e:I

    iget-object v1, p0, Lu2/e;->G:Lk/m;

    invoke-virtual {v1}, Lk/m;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_d

    const/4 v0, 0x3

    if-le v1, v0, :cond_c

    :goto_6
    move v0, v3

    goto :goto_7

    :cond_c
    move v0, v2

    goto :goto_7

    :cond_d
    if-nez v0, :cond_c

    goto :goto_6

    :goto_7
    move v1, v2

    :goto_8
    iget-object v5, p0, Lu2/e;->G:Lk/m;

    iget-object v5, v5, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_12

    iget-object v5, p0, Lu2/e;->F:Lu2/g;

    iput-boolean v3, v5, Lu2/g;->b:Z

    iget-object v5, p0, Lu2/e;->G:Lk/m;

    invoke-virtual {v5, v1}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lu2/e;->F:Lu2/g;

    iput-boolean v2, v5, Lu2/g;->b:Z

    invoke-direct {p0}, Lu2/e;->getNewItem()Lu2/c;

    move-result-object v5

    iget-object v6, p0, Lu2/e;->f:[Lu2/c;

    aput-object v5, v6, v1

    iget-object v6, p0, Lu2/e;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lu2/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v6, p0, Lu2/e;->o:I

    invoke-virtual {v5, v6}, Lu2/c;->setIconSize(I)V

    iget-object v6, p0, Lu2/e;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lu2/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v6, p0, Lu2/e;->r:I

    invoke-virtual {v5, v6}, Lu2/c;->setTextAppearanceInactive(I)V

    iget v6, p0, Lu2/e;->s:I

    invoke-virtual {v5, v6}, Lu2/c;->setTextAppearanceActive(I)V

    iget-object v6, p0, Lu2/e;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lu2/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v6, p0, Lu2/e;->w:I

    if-eq v6, v4, :cond_e

    invoke-virtual {v5, v6}, Lu2/c;->setItemPaddingTop(I)V

    :cond_e
    iget v6, p0, Lu2/e;->x:I

    if-eq v6, v4, :cond_f

    invoke-virtual {v5, v6}, Lu2/c;->setItemPaddingBottom(I)V

    :cond_f
    iget v6, p0, Lu2/e;->z:I

    invoke-virtual {v5, v6}, Lu2/c;->setActiveIndicatorWidth(I)V

    iget v6, p0, Lu2/e;->A:I

    invoke-virtual {v5, v6}, Lu2/c;->setActiveIndicatorHeight(I)V

    iget v6, p0, Lu2/e;->B:I

    invoke-virtual {v5, v6}, Lu2/c;->setActiveIndicatorMarginHorizontal(I)V

    invoke-virtual {p0}, Lu2/e;->c()Lz2/g;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu2/c;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v6, p0, Lu2/e;->D:Z

    invoke-virtual {v5, v6}, Lu2/c;->setActiveIndicatorResizeable(Z)V

    iget-boolean v6, p0, Lu2/e;->y:Z

    invoke-virtual {v5, v6}, Lu2/c;->setActiveIndicatorEnabled(Z)V

    iget-object v6, p0, Lu2/e;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_10

    invoke-virtual {v5, v6}, Lu2/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_10
    iget v6, p0, Lu2/e;->u:I

    invoke-virtual {v5, v6}, Lu2/c;->setItemBackground(I)V

    :goto_9
    invoke-virtual {v5, v0}, Lu2/c;->setShifting(Z)V

    iget v6, p0, Lu2/e;->e:I

    invoke-virtual {v5, v6}, Lu2/c;->setLabelVisibilityMode(I)V

    iget-object v6, p0, Lu2/e;->G:Lk/m;

    invoke-virtual {v6, v1}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lk/o;

    invoke-virtual {v5, v6}, Lu2/c;->c(Lk/o;)V

    invoke-virtual {v5, v1}, Lu2/c;->setItemPosition(I)V

    iget-object v7, p0, Lu2/e;->d:Landroid/util/SparseArray;

    iget v6, v6, Lk/o;->a:I

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lu2/e;->b:LB2/e;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v7, p0, Lu2/e;->l:I

    if-eqz v7, :cond_11

    if-ne v6, v7, :cond_11

    iput v1, p0, Lu2/e;->m:I

    :cond_11
    invoke-direct {p0, v5}, Lu2/e;->setBadgeIfNeeded(Lu2/c;)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_12
    iget-object v0, p0, Lu2/e;->G:Lk/m;

    iget-object v0, v0, Lk/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Lu2/e;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lu2/e;->m:I

    iget-object v1, p0, Lu2/e;->G:Lk/m;

    invoke-virtual {v1, v0}, Lk/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 7

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010038

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, LC/i;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f04012b

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lu2/e;->I:[I

    sget-object v5, Lu2/e;->H:[I

    sget-object v6, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    filled-new-array {v4, v5, v6}, [[I

    move-result-object v5

    invoke-virtual {v1, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    filled-new-array {v1, v0, v2}, [I

    move-result-object v0

    invoke-direct {v3, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public final c()Lz2/g;
    .locals 2

    iget-object v0, p0, Lu2/e;->C:Lz2/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu2/e;->E:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/g;

    iget-object v1, p0, Lu2/e;->C:Lz2/k;

    invoke-direct {v0, v1}, Lz2/g;-><init>(Lz2/k;)V

    iget-object v1, p0, Lu2/e;->E:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lk/m;)V
    .locals 0

    iput-object p1, p0, Lu2/e;->G:Lk/m;

    return-void
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lh2/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu2/e;->v:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lu2/e;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lu2/e;->E:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lu2/e;->y:Z

    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    iget v0, p0, Lu2/e;->A:I

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    iget v0, p0, Lu2/e;->B:I

    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lz2/k;
    .locals 1

    iget-object v0, p0, Lu2/e;->C:Lz2/k;

    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    iget v0, p0, Lu2/e;->z:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lu2/e;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lu2/e;->u:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    iget v0, p0, Lu2/e;->o:I

    return v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    iget v0, p0, Lu2/e;->x:I

    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    iget v0, p0, Lu2/e;->w:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    iget v0, p0, Lu2/e;->s:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    iget v0, p0, Lu2/e;->r:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lu2/e;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    iget v0, p0, Lu2/e;->e:I

    return v0
.end method

.method public getMenu()Lk/m;
    .locals 1

    iget-object v0, p0, Lu2/e;->G:Lk/m;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget v0, p0, Lu2/e;->l:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lu2/e;->m:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lu2/e;->G:Lk/m;

    invoke-virtual {v0}, Lk/m;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public setBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lh2/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu2/e;->v:Landroid/util/SparseArray;

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh2/b;

    invoke-virtual {v3, v4}, Lu2/c;->setBadge(Lh2/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lu2/e;->n:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lu2/e;->E:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lu2/e;->f:[Lu2/c;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0}, Lu2/e;->c()Lz2/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu2/c;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 4

    iput-boolean p1, p0, Lu2/e;->y:Z

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setActiveIndicatorEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 4

    iput p1, p0, Lu2/e;->A:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setActiveIndicatorHeight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 4

    iput p1, p0, Lu2/e;->B:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setActiveIndicatorMarginHorizontal(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorResizeable(Z)V
    .locals 4

    iput-boolean p1, p0, Lu2/e;->D:Z

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setActiveIndicatorResizeable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lz2/k;)V
    .locals 4

    iput-object p1, p0, Lu2/e;->C:Lz2/k;

    iget-object p1, p0, Lu2/e;->f:[Lu2/c;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0}, Lu2/e;->c()Lz2/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu2/c;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 4

    iput p1, p0, Lu2/e;->z:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setActiveIndicatorWidth(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iput-object p1, p0, Lu2/e;->t:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    iput p1, p0, Lu2/e;->u:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    iput p1, p0, Lu2/e;->o:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 4

    iput p1, p0, Lu2/e;->x:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setItemPaddingBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 4

    iput p1, p0, Lu2/e;->w:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setItemPaddingTop(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    iput p1, p0, Lu2/e;->s:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lu2/e;->p:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lu2/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    iput p1, p0, Lu2/e;->r:I

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lu2/e;->p:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lu2/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lu2/e;->p:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lu2/e;->f:[Lu2/c;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lu2/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, Lu2/e;->e:I

    return-void
.end method

.method public setPresenter(Lu2/g;)V
    .locals 0

    iput-object p1, p0, Lu2/e;->F:Lu2/g;

    return-void
.end method
