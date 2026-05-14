.class public final LN1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final a:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public l:Z

.field public final m:Lcom/github/chrisbanes/photoview/PhotoView;

.field public final n:Landroid/view/GestureDetector;

.field public final o:LN1/b;

.field public final p:Landroid/graphics/Matrix;

.field public final q:Landroid/graphics/Matrix;

.field public final r:Landroid/graphics/Matrix;

.field public final s:Landroid/graphics/RectF;

.field public final t:[F

.field public u:Landroid/view/View$OnClickListener;

.field public v:Landroid/view/View$OnLongClickListener;

.field public w:LN1/l;

.field public x:I

.field public y:Z

.field public z:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/PhotoView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, LN1/m;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/16 v0, 0xc8

    iput v0, p0, LN1/m;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LN1/m;->c:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, LN1/m;->d:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, LN1/m;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, LN1/m;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, LN1/m;->l:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, LN1/m;->p:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, LN1/m;->q:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, LN1/m;->r:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, LN1/m;->s:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, LN1/m;->t:[F

    const/4 v1, 0x2

    iput v1, p0, LN1/m;->x:I

    iput-boolean v0, p0, LN1/m;->y:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, LN1/m;->z:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LN1/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LN1/b;-><init>(LN1/m;Landroid/content/Context;)V

    iput-object v0, p0, LN1/m;->o:LN1/b;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, LN1/h;

    invoke-direct {v1, p0}, LN1/h;-><init>(LN1/m;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, LN1/m;->n:Landroid/view/GestureDetector;

    new-instance p1, LN1/i;

    invoke-direct {p1, p0}, LN1/i;-><init>(LN1/m;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, LN1/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LN1/m;->c()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 12

    invoke-virtual {p0}, LN1/m;->c()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, LN1/m;->s:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v2, v2, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v7, v1, v6

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-gtz v7, :cond_4

    sget-object v7, LN1/j;->a:[I

    iget-object v11, p0, LN1/m;->z:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v7, v7, v11

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    sub-float/2addr v6, v1

    div-float/2addr v6, v8

    iget v1, v3, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr v6, v1

    goto :goto_3

    :cond_2
    sub-float/2addr v6, v1

    iget v1, v3, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_3
    iget v1, v3, Landroid/graphics/RectF;->top:F

    :goto_2
    neg-float v6, v1

    goto :goto_3

    :cond_4
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v1, v2

    if-lez v7, :cond_5

    goto :goto_2

    :cond_5
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v7, v1, v6

    if-gez v7, :cond_6

    goto :goto_1

    :cond_6
    move v6, v2

    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float v5, v4, v1

    const/4 v7, 0x1

    if-gtz v5, :cond_9

    sget-object v0, LN1/j;->a:[I

    iget-object v2, p0, LN1/m;->z:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_7

    sub-float/2addr v1, v4

    div-float/2addr v1, v8

    iget v0, v3, Landroid/graphics/RectF;->left:F

    :goto_4
    sub-float/2addr v1, v0

    move v2, v1

    goto :goto_5

    :cond_7
    sub-float/2addr v1, v4

    iget v0, v3, Landroid/graphics/RectF;->left:F

    goto :goto_4

    :cond_8
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v2, v0

    :goto_5
    iput v10, p0, LN1/m;->x:I

    goto :goto_6

    :cond_9
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v4, v2

    if-lez v5, :cond_a

    iput v0, p0, LN1/m;->x:I

    neg-float v2, v4

    goto :goto_6

    :cond_a
    iget v0, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v0, v1

    if-gez v3, :cond_b

    sub-float v2, v1, v0

    iput v7, p0, LN1/m;->x:I

    goto :goto_6

    :cond_b
    const/4 v0, -0x1

    iput v0, p0, LN1/m;->x:I

    :goto_6
    iget-object v0, p0, LN1/m;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v7
.end method

.method public final c()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, LN1/m;->q:Landroid/graphics/Matrix;

    iget-object v1, p0, LN1/m;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, LN1/m;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public final d()F
    .locals 6

    iget-object v0, p0, LN1/m;->r:Landroid/graphics/Matrix;

    iget-object v1, p0, LN1/m;->t:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x3

    aget v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final e(FFF)V
    .locals 3

    invoke-virtual {p0}, LN1/m;->d()F

    move-result v0

    iget v1, p0, LN1/m;->e:F

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, LN1/m;->d()F

    move-result v0

    iget v2, p0, LN1/m;->c:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, LN1/m;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, LN1/m;->a()V

    :cond_2
    return-void
.end method

.method public final f(FFFZ)V
    .locals 7

    iget v0, p0, LN1/m;->c:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, LN1/m;->e:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    new-instance p4, LN1/k;

    invoke-virtual {p0}, LN1/m;->d()F

    move-result v3

    move-object v1, p4

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, LN1/k;-><init>(LN1/m;FFFF)V

    iget-object p1, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p4, p0, LN1/m;->r:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0}, LN1/m;->a()V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, LN1/m;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, LN1/m;->h(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN1/m;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, LN1/m;->a()V

    invoke-virtual {p0}, LN1/m;->c()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, LN1/m;->b()Z

    :goto_0
    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v3, p0, LN1/m;->p:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v4, v1, v2

    int-to-float p1, p1

    div-float v5, v0, p1

    iget-object v6, p0, LN1/m;->z:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_1

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    sub-float/2addr v0, p1

    div-float/2addr v0, v9

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_1
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    mul-float/2addr p1, v4

    sub-float/2addr v0, p1

    div-float/2addr v0, v9

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    mul-float/2addr p1, v4

    sub-float/2addr v0, p1

    div-float/2addr v0, v9

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v8, v8, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v8, v8, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    float-to-int v0, v8

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v8, v8, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    sget-object p1, LN1/j;->a:[I

    iget-object v0, p0, LN1/m;->z:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_6
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_7
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_8
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_0
    iget-object p1, p0, LN1/m;->r:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, LN1/m;->a()V

    invoke-virtual {p0}, LN1/m;->c()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, LN1/m;->b()Z

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, LN1/m;->h(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, LN1/m;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LN1/m;->d()F

    move-result v0

    iget v4, p0, LN1/m;->c:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    invoke-virtual {p0}, LN1/m;->b()Z

    invoke-virtual {p0}, LN1/m;->c()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v4, p0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v2, p0, LN1/m;->s:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    if-eqz v2, :cond_4

    new-instance v0, LN1/k;

    invoke-virtual {p0}, LN1/m;->d()F

    move-result v6

    iget v7, p0, LN1/m;->c:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, LN1/k;-><init>(LN1/m;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move p1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    iget-object p1, p0, LN1/m;->w:LN1/l;

    if-eqz p1, :cond_4

    iget-object p1, p1, LN1/l;->d:Ljava/lang/Object;

    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iput-object v2, p0, LN1/m;->w:LN1/l;

    :cond_4
    :goto_0
    move p1, v1

    :goto_1
    iget-object v0, p0, LN1/m;->o:LN1/b;

    if-eqz v0, :cond_8

    iget-object p1, v0, LN1/b;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    iget-boolean v4, v0, LN1/b;->e:Z

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0, p2}, LN1/b;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    if-nez v4, :cond_6

    iget-boolean v0, v0, LN1/b;->e:Z

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move v1, v3

    :cond_7
    iput-boolean v1, p0, LN1/m;->l:Z

    move v1, v3

    goto :goto_4

    :cond_8
    move v1, p1

    :goto_4
    iget-object p1, p0, LN1/m;->n:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v3

    :cond_9
    return v1
.end method
