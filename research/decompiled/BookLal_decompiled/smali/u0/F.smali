.class public abstract Lu0/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LJ2/e;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Lj3/G;

.field public final d:Lj3/G;

.field public e:Lu0/s;

.field public f:Z

.field public g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj1/a;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Li1/D;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Li1/D;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lj3/G;

    invoke-direct {v2, v0}, Lj3/G;-><init>(Lu0/f0;)V

    iput-object v2, p0, Lu0/F;->c:Lj3/G;

    new-instance v0, Lj3/G;

    invoke-direct {v0, v1}, Lj3/G;-><init>(Lu0/f0;)V

    iput-object v0, p0, Lu0/F;->d:Lj3/G;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu0/F;->f:Z

    iput-boolean v0, p0, Lu0/F;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu0/F;->h:Z

    iput-boolean v0, p0, Lu0/F;->i:Z

    return-void
.end method

.method public static E(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lu0/G;

    iget-object p0, p0, Lu0/G;->a:Lu0/W;

    invoke-virtual {p0}, Lu0/W;->b()I

    move-result p0

    return p0
.end method

.method public static F(Landroid/content/Context;Landroid/util/AttributeSet;II)Lu0/E;
    .locals 2

    new-instance v0, Lu0/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lt0/a;->a:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Lu0/E;->a:I

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lu0/E;->b:I

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Lu0/E;->c:Z

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lu0/E;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static J(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static K(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    iget-object v1, v0, Lu0/G;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static g(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static w(ZIIII)I
    .locals 4

    sub-int/2addr p1, p3

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p0, :cond_2

    if-ltz p4, :cond_0

    :goto_0
    move p2, v3

    goto :goto_2

    :cond_0
    if-ne p4, v1, :cond_1

    if-eq p2, v2, :cond_4

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_4

    :cond_1
    move p2, p3

    move p4, p2

    goto :goto_2

    :cond_2
    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    if-ne p4, v1, :cond_5

    :cond_4
    move p4, p1

    goto :goto_2

    :cond_5
    if-ne p4, v0, :cond_1

    if-eq p2, v2, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_1

    :cond_6
    move p4, p1

    move p2, p3

    goto :goto_2

    :cond_7
    :goto_1
    move p4, p1

    move p2, v2

    :goto_2
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static y(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 6

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->C0:[I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    iget-object v1, v0, Lu0/G;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C()I
    .locals 1

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final D()I
    .locals 1

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G(Lu0/L;Lu0/S;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final H(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lu0/G;

    iget-object v0, v0, Lu0/G;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public abstract I()Z
.end method

.method public L(I)V
    .locals 4

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v1}, LJ2/e;->r()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v3, v2}, LJ2/e;->q(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M(I)V
    .locals 4

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v1}, LJ2/e;->r()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    invoke-virtual {v3, v2}, LJ2/e;->q(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method public abstract O(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract P(Landroid/view/View;ILu0/L;Lu0/S;)Landroid/view/View;
.end method

.method public Q(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lu0/y;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public R(Lu0/L;Lu0/S;LN/i;)V
    .locals 4

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    iget-object v2, p3, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, LN/i;->a(I)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, LN/i;->a(I)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lu0/F;->G(Lu0/L;Lu0/S;)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Lu0/F;->x(Lu0/L;Lu0/S;)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p3, p1, p2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final S(Landroid/view/View;LN/i;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu0/W;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lu0/F;->a:LJ2/e;

    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {p0, v1, v0, p1, p2}, Lu0/F;->T(Lu0/L;Lu0/S;Landroid/view/View;LN/i;)V

    :cond_0
    return-void
.end method

.method public T(Lu0/L;Lu0/S;Landroid/view/View;LN/i;)V
    .locals 0

    return-void
.end method

.method public U(II)V
    .locals 0

    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public W(II)V
    .locals 0

    return-void
.end method

.method public X(II)V
    .locals 0

    return-void
.end method

.method public Y(II)V
    .locals 0

    return-void
.end method

.method public abstract Z(Lu0/L;Lu0/S;)V
.end method

.method public abstract a0(Lu0/S;)V
.end method

.method public final b(Landroid/view/View;ZI)V
    .locals 8

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lu0/W;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->l:Lj3/G;

    invoke-virtual {p2, v0}, Lj3/G;->G(Lu0/W;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->l:Lj3/G;

    iget-object p2, p2, Lj3/G;->b:Ljava/lang/Object;

    check-cast p2, Lr/k;

    invoke-virtual {p2, v0, v1}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu0/g0;

    if-nez v3, :cond_2

    invoke-static {}, Lu0/g0;->a()Lu0/g0;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p2, v3, Lu0/g0;->a:I

    or-int/2addr p2, v2

    iput p2, v3, Lu0/g0;->a:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lu0/G;

    invoke-virtual {v0}, Lu0/W;->q()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_d

    invoke-virtual {v0}, Lu0/W;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x1

    if-ne v3, v5, :cond_b

    iget-object v3, p0, Lu0/F;->a:LJ2/e;

    iget-object v5, v3, LJ2/e;->b:Ljava/lang/Object;

    check-cast v5, Lu0/x;

    iget-object v5, v5, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne v5, v6, :cond_4

    :goto_2
    move v5, v6

    goto :goto_3

    :cond_4
    iget-object v3, v3, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, LI4/a;

    invoke-virtual {v3, v5}, LI4/a;->d(I)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v5}, LI4/a;->b(I)I

    move-result v3

    sub-int/2addr v5, v3

    :goto_3
    if-ne p3, v6, :cond_6

    iget-object p3, p0, Lu0/F;->a:LJ2/e;

    invoke-virtual {p3}, LJ2/e;->r()I

    move-result p3

    :cond_6
    if-eq v5, v6, :cond_a

    if-eq v5, p3, :cond_f

    iget-object p1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    invoke-virtual {p1, v5}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v5}, Lu0/F;->u(I)Landroid/view/View;

    iget-object v6, p1, Lu0/F;->a:LJ2/e;

    invoke-virtual {v6, v5}, LJ2/e;->n(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lu0/G;

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v6

    invoke-virtual {v6}, Lu0/W;->i()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->l:Lj3/G;

    iget-object v7, v7, Lj3/G;->b:Ljava/lang/Object;

    check-cast v7, Lr/k;

    invoke-virtual {v7, v6, v1}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/g0;

    if-nez v1, :cond_7

    invoke-static {}, Lu0/g0;->a()Lu0/g0;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v7, v1, Lu0/g0;->a:I

    or-int/2addr v2, v7

    iput v2, v1, Lu0/g0;->a:I

    goto :goto_4

    :cond_8
    iget-object v1, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l:Lj3/G;

    invoke-virtual {v1, v6}, Lj3/G;->G(Lu0/W;)V

    :goto_4
    iget-object p1, p1, Lu0/F;->a:LJ2/e;

    invoke-virtual {v6}, Lu0/W;->i()Z

    move-result v1

    invoke-virtual {p1, v3, p3, v5, v1}, LJ2/e;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_7

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    iget-object v1, p0, Lu0/F;->a:LJ2/e;

    invoke-virtual {v1, p1, v4, p3}, LJ2/e;->h(Landroid/view/View;ZI)V

    iput-boolean v2, p2, Lu0/G;->c:Z

    iget-object p3, p0, Lu0/F;->e:Lu0/s;

    if-eqz p3, :cond_f

    iget-boolean v1, p3, Lu0/s;->e:Z

    if-eqz v1, :cond_f

    iget-object v1, p3, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lu0/W;->b()I

    move-result v6

    :cond_c
    iget v1, p3, Lu0/s;->a:I

    if-ne v6, v1, :cond_f

    iput-object p1, p3, Lu0/s;->f:Landroid/view/View;

    goto :goto_7

    :cond_d
    :goto_5
    invoke-virtual {v0}, Lu0/W;->j()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lu0/W;->s:Lu0/L;

    invoke-virtual {v1, v0}, Lu0/L;->l(Lu0/W;)V

    goto :goto_6

    :cond_e
    iget v1, v0, Lu0/W;->o:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lu0/W;->o:I

    :goto_6
    iget-object v1, p0, Lu0/F;->a:LJ2/e;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, p3, v2, v4}, LJ2/e;->i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_f
    :goto_7
    iget-boolean p1, p2, Lu0/G;->d:Z

    if-eqz p1, :cond_10

    iget-object p1, v0, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v4, p2, Lu0/G;->d:Z

    :cond_10
    return-void
.end method

.method public abstract b0(Landroid/os/Parcelable;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract c0()Landroid/os/Parcelable;
.end method

.method public abstract d()Z
.end method

.method public d0(I)V
    .locals 0

    return-void
.end method

.method public abstract e()Z
.end method

.method public final e0(Lu0/L;)V
    .locals 2

    invoke-virtual {p0}, Lu0/F;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v1

    invoke-virtual {v1}, Lu0/W;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lu0/F;->h0(I)V

    invoke-virtual {p1, v1}, Lu0/L;->h(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Lu0/G;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f0(Lu0/L;)V
    .locals 6

    iget-object v0, p1, Lu0/L;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    iget-object v2, p1, Lu0/L;->a:Ljava/util/ArrayList;

    if-ltz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu0/W;

    iget-object v2, v2, Lu0/W;->a:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v3

    invoke-virtual {v3}, Lu0/W;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lu0/W;->o(Z)V

    invoke-virtual {v3}, Lu0/W;->k()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v5, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->O:Lu0/C;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Lu0/C;->d(Lu0/W;)V

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lu0/W;->o(Z)V

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lu0/W;->s:Lu0/L;

    iput-boolean v4, v2, Lu0/W;->t:Z

    iget v3, v2, Lu0/W;->o:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Lu0/W;->o:I

    invoke-virtual {p1, v2}, Lu0/L;->i(Lu0/W;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lu0/L;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public final g0(Landroid/view/View;Lu0/L;)V
    .locals 4

    iget-object v0, p0, Lu0/F;->a:LJ2/e;

    iget-object v1, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lu0/x;

    iget-object v2, v1, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, LI4/a;

    invoke-virtual {v3, v2}, LI4/a;->f(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p1}, LJ2/e;->T(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1, v2}, Lu0/x;->a(I)V

    :goto_0
    invoke-virtual {p2, p1}, Lu0/L;->h(Landroid/view/View;)V

    return-void
.end method

.method public abstract h(IILu0/S;LS3/g;)V
.end method

.method public final h0(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu0/F;->a:LJ2/e;

    invoke-virtual {v0, p1}, LJ2/e;->y(I)I

    move-result p1

    iget-object v1, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, Lu0/x;

    iget-object v2, v1, Lu0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, LI4/a;

    invoke-virtual {v3, p1}, LI4/a;->f(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, LJ2/e;->T(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1, p1}, Lu0/x;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i(ILS3/g;)V
    .locals 0

    return-void
.end method

.method public final i0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    invoke-virtual {p0}, Lu0/F;->B()I

    move-result v0

    invoke-virtual {p0}, Lu0/F;->D()I

    move-result v1

    iget v2, p0, Lu0/F;->n:I

    invoke-virtual {p0}, Lu0/F;->C()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lu0/F;->o:I

    invoke-virtual {p0}, Lu0/F;->A()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v3, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v7, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    filled-new-array {v2, v1}, [I

    move-result-object p2

    aget p3, p2, v0

    aget p2, p2, v7

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lu0/F;->B()I

    move-result v1

    invoke-virtual {p0}, Lu0/F;->D()I

    move-result v2

    iget v3, p0, Lu0/F;->n:I

    invoke-virtual {p0}, Lu0/F;->C()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lu0/F;->o:I

    invoke-virtual {p0}, Lu0/F;->A()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-static {v5, p5}, Lu0/F;->y(Landroid/graphics/Rect;Landroid/view/View;)V

    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p3

    if-ge p5, v3, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    if-le p5, v1, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p2

    if-ge p5, v4, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p2

    if-gt p5, v2, :cond_5

    goto :goto_3

    :cond_5
    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return v0

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, p3, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->e0(IIZ)V

    :goto_5
    return v7
.end method

.method public abstract j(Lu0/S;)I
.end method

.method public final j0()V
    .locals 1

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public abstract k(Lu0/S;)I
.end method

.method public abstract k0(ILu0/L;Lu0/S;)I
.end method

.method public abstract l(Lu0/S;)I
.end method

.method public abstract l0(I)V
.end method

.method public abstract m(Lu0/S;)I
.end method

.method public abstract m0(ILu0/L;Lu0/S;)I
.end method

.method public abstract n(Lu0/S;)I
.end method

.method public final n0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lu0/F;->o0(II)V

    return-void
.end method

.method public abstract o(Lu0/S;)I
.end method

.method public final o0(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lu0/F;->n:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lu0/F;->l:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->E0:Z

    if-nez p1, :cond_0

    iput v0, p0, Lu0/F;->n:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lu0/F;->o:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lu0/F;->m:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->E0:Z

    if-nez p1, :cond_1

    iput v0, p0, Lu0/F;->o:I

    :cond_1
    return-void
.end method

.method public final p(Lu0/L;)V
    .locals 4

    invoke-virtual {p0}, Lu0/F;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v2

    invoke-virtual {v2}, Lu0/W;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lu0/W;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lu0/W;->i()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    iget-boolean v3, v3, Lu0/y;->b:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lu0/F;->h0(I)V

    invoke-virtual {p1, v2}, Lu0/L;->i(Lu0/W;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lu0/F;->u(I)Landroid/view/View;

    iget-object v3, p0, Lu0/F;->a:LJ2/e;

    invoke-virtual {v3, v0}, LJ2/e;->n(I)V

    invoke-virtual {p1, v1}, Lu0/L;->j(Landroid/view/View;)V

    iget-object v1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l:Lj3/G;

    invoke-virtual {v1, v2}, Lj3/G;->G(Lu0/W;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public p0(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lu0/F;->B()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lu0/F;->C()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lu0/F;->D()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lu0/F;->A()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Lu0/F;->g(III)I

    move-result p2

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lu0/F;->g(III)I

    move-result p1

    iget-object p3, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public q(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lu0/F;->v()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lu0/W;->b()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lu0/W;->p()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iget-boolean v4, v4, Lu0/S;->g:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lu0/W;->i()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final q0(II)V
    .locals 8

    invoke-virtual {p0}, Lu0/F;->v()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->o(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Lu0/F;->u(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-static {v7, v6}, Lu0/F;->y(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lu0/F;->p0(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public abstract r()Lu0/G;
.end method

.method public final r0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lu0/F;->a:LJ2/e;

    const/4 p1, 0x0

    iput p1, p0, Lu0/F;->n:I

    iput p1, p0, Lu0/F;->o:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->f:LJ2/e;

    iput-object v0, p0, Lu0/F;->a:LJ2/e;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lu0/F;->n:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lu0/F;->o:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lu0/F;->l:I

    iput p1, p0, Lu0/F;->m:I

    return-void
.end method

.method public s(Landroid/content/Context;Landroid/util/AttributeSet;)Lu0/G;
    .locals 1

    new-instance v0, Lu0/G;

    invoke-direct {v0, p1, p2}, Lu0/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final s0(Landroid/view/View;IILu0/G;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lu0/F;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lu0/F;->J(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lu0/F;->J(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public t(Landroid/view/ViewGroup$LayoutParams;)Lu0/G;
    .locals 1

    instance-of v0, p1, Lu0/G;

    if-eqz v0, :cond_0

    new-instance v0, Lu0/G;

    check-cast p1, Lu0/G;

    invoke-direct {v0, p1}, Lu0/G;-><init>(Lu0/G;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lu0/G;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lu0/G;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lu0/G;

    invoke-direct {v0, p1}, Lu0/G;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final u(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lu0/F;->a:LJ2/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LJ2/e;->q(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final u0(Landroid/view/View;IILu0/G;)Z
    .locals 2

    iget-boolean v0, p0, Lu0/F;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lu0/F;->J(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lu0/F;->J(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lu0/F;->a:LJ2/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJ2/e;->r()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract v0(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method

.method public final w0(Lu0/s;)V
    .locals 3

    iget-object v0, p0, Lu0/F;->e:Lu0/s;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Lu0/s;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lu0/s;->g()V

    :cond_0
    iput-object p1, p0, Lu0/F;->e:Lu0/s;

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lu0/V;

    iget-object v2, v1, Lu0/V;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Lu0/V;->c:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-boolean v1, p1, Lu0/s;->h:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p1, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, p1, Lu0/s;->c:Lu0/F;

    iget v1, p1, Lu0/s;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iput v1, v2, Lu0/S;->a:I

    const/4 v2, 0x1

    iput-boolean v2, p1, Lu0/s;->e:Z

    iput-boolean v2, p1, Lu0/s;->d:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    invoke-virtual {v0, v1}, Lu0/F;->q(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lu0/s;->f:Landroid/view/View;

    iget-object v0, p1, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lu0/V;

    invoke-virtual {v0}, Lu0/V;->b()V

    iput-boolean v2, p1, Lu0/s;->h:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Lu0/L;Lu0/S;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public abstract x0()Z
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lu0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lu0/y;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lu0/y;->a()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
