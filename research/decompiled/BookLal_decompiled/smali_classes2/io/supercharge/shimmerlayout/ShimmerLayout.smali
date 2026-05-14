.class public Lio/supercharge/shimmerlayout/ShimmerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/graphics/Bitmap;

.field public f:Landroid/graphics/Bitmap;

.field public l:Landroid/graphics/Canvas;

.field public m:Z

.field public n:Z

.field public final o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:F

.field public t:F

.field public u:LW3/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, LW3/a;->a:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x14

    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    const/16 p2, 0x5dc

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f060265

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->q:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->o:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->s:F

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->t:F

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->s:F

    invoke-virtual {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setMaskWidth(F)V

    iget p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->t:F

    invoke-virtual {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setGradientCenterColorWidth(F)V

    iget p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    invoke-virtual {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private getGradientColorDistribution()[F
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->t:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v3, v4, v3

    const/4 v5, 0x1

    aput v3, v0, v5

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method private getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getShimmerAnimation()Landroid/animation/Animator;
    .locals 8

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->s:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    iget v6, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double/2addr v6, v2

    double-to-int v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_2

    neg-int v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    :goto_0
    iget-object v3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v2

    iget-boolean v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->m:Z

    if-eqz v4, :cond_3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_3
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->p:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    new-instance v1, LW3/c;

    invoke-direct {v1, p0, v2, v3}, LW3/c;-><init>(Lio/supercharge/shimmerlayout/ShimmerLayout;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->b()V

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->c()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->d:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->n:Z

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->f:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, LW3/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW3/b;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->u:LW3/b;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->u:LW3/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->getShimmerAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->n:Z

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->n:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    :cond_2
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->l:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->q:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->s:F

    mul-float/2addr v1, v2

    iget v2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move v6, v2

    goto :goto_0

    :cond_4
    move v6, v3

    :goto_0
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v7, v4, v1

    iget v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    add-float v8, v4, v6

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->q:I

    filled-new-array {v0, v1, v1, v0}, [I

    move-result-object v9

    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->getGradientColorDistribution()[F

    move-result-object v10

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v4, v2

    move-object v11, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->e:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/ComposeShader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->c:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->a:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->c:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->e:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->b()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setAnimationReversed(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->m:Z

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->a()V

    return-void
.end method

.method public setGradientCenterColorWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-lez v0, :cond_0

    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->t:F

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gradientCenterColorWidth value must be higher than %d and less than %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaskWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-ltz v0, :cond_0

    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->s:F

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "maskWidth value must be higher than %d and less or equal to %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShimmerAngle(I)V
    .locals 2

    const/16 v0, 0x2d

    const/16 v1, -0x2d

    if-lt p1, v1, :cond_0

    if-lt v0, p1, :cond_0

    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->r:I

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "shimmerAngle value must be between %d and %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShimmerAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->p:I

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->a()V

    return-void
.end method

.method public setShimmerColor(I)V
    .locals 0

    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->q:I

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->a()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->o:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->c()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->u:LW3/b;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->u:LW3/b;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->b()V

    :cond_2
    :goto_0
    return-void
.end method
