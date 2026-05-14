.class public Lu0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lu0/F;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public final g:Lu0/P;

.field public h:Z

.field public final i:Landroid/view/animation/LinearInterpolator;

.field public final j:Landroid/view/animation/DecelerateInterpolator;

.field public k:Landroid/graphics/PointF;

.field public final l:Landroid/util/DisplayMetrics;

.field public m:Z

.field public n:F

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lu0/s;->a:I

    new-instance v1, Lu0/P;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, Lu0/P;->d:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lu0/P;->f:Z

    iput v0, v1, Lu0/P;->g:I

    iput v0, v1, Lu0/P;->a:I

    iput v0, v1, Lu0/P;->b:I

    const/high16 v2, -0x80000000

    iput v2, v1, Lu0/P;->c:I

    const/4 v2, 0x0

    iput-object v2, v1, Lu0/P;->e:Landroid/view/animation/BaseInterpolator;

    iput-object v1, p0, Lu0/s;->g:Lu0/P;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lu0/s;->i:Landroid/view/animation/LinearInterpolator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lu0/s;->j:Landroid/view/animation/DecelerateInterpolator;

    iput-boolean v0, p0, Lu0/s;->m:Z

    iput v0, p0, Lu0/s;->o:I

    iput v0, p0, Lu0/s;->p:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lu0/s;->l:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static a(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    sub-int/2addr p3, p1

    return p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p2, p0

    if-lez p2, :cond_2

    return p2

    :cond_2
    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public b(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public c(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Lu0/s;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lu0/s;->l:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Lu0/s;->b(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lu0/s;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu0/s;->m:Z

    :cond_0
    iget v0, p0, Lu0/s;->n:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public final d(I)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lu0/s;->c:Lu0/F;

    instance-of v1, v0, Lu0/Q;

    if-eqz v1, :cond_0

    check-cast v0, Lu0/Q;

    invoke-interface {v0, p1}, Lu0/Q;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lu0/Q;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(II)V
    .locals 8

    iget-object v0, p0, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lu0/s;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lu0/s;->g()V

    :cond_1
    iget-boolean v1, p0, Lu0/s;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lu0/s;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lu0/s;->c:Lu0/F;

    if-eqz v1, :cond_3

    iget v1, p0, Lu0/s;->a:I

    invoke-virtual {p0, v1}, Lu0/s;->d(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v5, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v5, v4

    if-nez v6, :cond_2

    iget v6, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->b0([III)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lu0/s;->d:Z

    iget-object v5, p0, Lu0/s;->f:Landroid/view/View;

    iget-object v6, p0, Lu0/s;->g:Lu0/P;

    if-eqz v5, :cond_6

    iget-object v7, p0, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lu0/W;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lu0/W;->b()I

    move-result v2

    :cond_4
    iget v5, p0, Lu0/s;->a:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lu0/s;->f:Landroid/view/View;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {p0, v2, v6}, Lu0/s;->f(Landroid/view/View;Lu0/P;)V

    invoke-virtual {v6, v0}, Lu0/P;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lu0/s;->g()V

    goto :goto_0

    :cond_5
    const-string v2, "RecyclerView"

    const-string v5, "Passed over target position while smooth scrolling."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lu0/s;->f:Landroid/view/View;

    :cond_6
    :goto_0
    iget-boolean v2, p0, Lu0/s;->e:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    iget-object v2, p0, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    invoke-virtual {v2}, Lu0/F;->v()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lu0/s;->g()V

    goto/16 :goto_2

    :cond_7
    iget v2, p0, Lu0/s;->o:I

    sub-int p1, v2, p1

    mul-int/2addr v2, p1

    if-gtz v2, :cond_8

    move p1, v1

    :cond_8
    iput p1, p0, Lu0/s;->o:I

    iget v2, p0, Lu0/s;->p:I

    sub-int p2, v2, p2

    mul-int/2addr v2, p2

    if-gtz v2, :cond_9

    move p2, v1

    :cond_9
    iput p2, p0, Lu0/s;->p:I

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    iget p1, p0, Lu0/s;->a:I

    invoke-virtual {p0, p1}, Lu0/s;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_b

    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, p2, v4

    if-nez v2, :cond_a

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    mul-float/2addr p2, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v2

    add-float/2addr v2, p2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p2, v4

    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, p2

    iput v4, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Lu0/s;->k:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p1

    float-to-int p2, v2

    iput p2, p0, Lu0/s;->o:I

    mul-float/2addr v4, p1

    float-to-int p1, v4

    iput p1, p0, Lu0/s;->p:I

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Lu0/s;->c(I)I

    move-result p1

    iget p2, p0, Lu0/s;->o:I

    int-to-float p2, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iget v4, p0, Lu0/s;->p:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Lu0/s;->i:Landroid/view/animation/LinearInterpolator;

    iput p2, v6, Lu0/P;->a:I

    iput v4, v6, Lu0/P;->b:I

    iput p1, v6, Lu0/P;->c:I

    iput-object v2, v6, Lu0/P;->e:Landroid/view/animation/BaseInterpolator;

    iput-boolean v3, v6, Lu0/P;->f:Z

    goto :goto_2

    :cond_b
    :goto_1
    iget p1, p0, Lu0/s;->a:I

    iput p1, v6, Lu0/P;->d:I

    invoke-virtual {p0}, Lu0/s;->g()V

    :cond_c
    :goto_2
    iget p1, v6, Lu0/P;->d:I

    if-ltz p1, :cond_d

    move v1, v3

    :cond_d
    invoke-virtual {v6, v0}, Lu0/P;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_e

    iget-boolean p1, p0, Lu0/s;->e:Z

    if-eqz p1, :cond_e

    iput-boolean v3, p0, Lu0/s;->d:Z

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lu0/V;

    invoke-virtual {p1}, Lu0/V;->b()V

    :cond_e
    return-void
.end method

.method public f(Landroid/view/View;Lu0/P;)V
    .locals 10

    iget-object v0, p0, Lu0/s;->k:Landroid/graphics/PointF;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    iget-object v5, p0, Lu0/s;->c:Lu0/F;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lu0/F;->d()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lu0/G;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lu0/G;

    iget-object v8, v8, Lu0/G;->b:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lu0/G;

    iget-object v9, v9, Lu0/G;->b:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    invoke-virtual {v5}, Lu0/F;->B()I

    move-result v6

    iget v9, v5, Lu0/F;->n:I

    invoke-virtual {v5}, Lu0/F;->C()I

    move-result v5

    sub-int/2addr v9, v5

    invoke-static {v7, v8, v6, v9, v0}, Lu0/s;->a(IIIII)I

    move-result v0

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    :goto_3
    iget-object v5, p0, Lu0/s;->k:Landroid/graphics/PointF;

    if-eqz v5, :cond_6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v5, v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    if-lez v3, :cond_7

    move v2, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v4

    :cond_7
    :goto_5
    iget-object v3, p0, Lu0/s;->c:Lu0/F;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lu0/F;->e()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lu0/G;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lu0/G;

    iget-object v6, v6, Lu0/G;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lu0/G;

    iget-object p1, p1, Lu0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p1

    iget p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, p1

    invoke-virtual {v3}, Lu0/F;->D()I

    move-result p1

    iget v4, v3, Lu0/F;->o:I

    invoke-virtual {v3}, Lu0/F;->A()I

    move-result v3

    sub-int/2addr v4, v3

    invoke-static {v5, v6, p1, v4, v2}, Lu0/s;->a(IIIII)I

    move-result v4

    :cond_9
    :goto_6
    mul-int p1, v0, v0

    mul-int v2, v4, v4

    add-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {p0, p1}, Lu0/s;->c(I)I

    move-result p1

    int-to-double v2, p1

    const-wide v5, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    if-lez p1, :cond_a

    neg-int v0, v0

    neg-int v2, v4

    iget-object v3, p0, Lu0/s;->j:Landroid/view/animation/DecelerateInterpolator;

    iput v0, p2, Lu0/P;->a:I

    iput v2, p2, Lu0/P;->b:I

    iput p1, p2, Lu0/P;->c:I

    iput-object v3, p2, Lu0/P;->e:Landroid/view/animation/BaseInterpolator;

    iput-boolean v1, p2, Lu0/P;->f:Z

    :cond_a
    return-void
.end method

.method public final g()V
    .locals 4

    iget-boolean v0, p0, Lu0/s;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu0/s;->e:Z

    iput v0, p0, Lu0/s;->p:I

    iput v0, p0, Lu0/s;->o:I

    const/4 v1, 0x0

    iput-object v1, p0, Lu0/s;->k:Landroid/graphics/PointF;

    iget-object v2, p0, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    const/4 v3, -0x1

    iput v3, v2, Lu0/S;->a:I

    iput-object v1, p0, Lu0/s;->f:Landroid/view/View;

    iput v3, p0, Lu0/s;->a:I

    iput-boolean v0, p0, Lu0/s;->d:Z

    iget-object v0, p0, Lu0/s;->c:Lu0/F;

    iget-object v2, v0, Lu0/F;->e:Lu0/s;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Lu0/F;->e:Lu0/s;

    :cond_1
    iput-object v1, p0, Lu0/s;->c:Lu0/F;

    iput-object v1, p0, Lu0/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
