.class public final Lh2/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Ls2/w;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lz2/g;

.field public final c:Ls2/x;

.field public final d:Landroid/graphics/Rect;

.field public e:F

.field public f:F

.field public l:F

.field public final m:Lh2/a;

.field public n:F

.field public o:F

.field public p:I

.field public q:F

.field public r:F

.field public s:F

.field public t:Ljava/lang/ref/WeakReference;

.field public u:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh2/b;->a:Ljava/lang/ref/WeakReference;

    sget-object v1, Ls2/A;->b:[I

    const-string v2, "Theme.MaterialComponents"

    invoke-static {p1, v1, v2}, Ls2/A;->c(Landroid/content/Context;[ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lh2/b;->d:Landroid/graphics/Rect;

    new-instance v2, Lz2/g;

    invoke-direct {v2}, Lz2/g;-><init>()V

    iput-object v2, p0, Lh2/b;->b:Lz2/g;

    const v2, 0x7f070179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lh2/b;->e:F

    const v2, 0x7f070178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lh2/b;->l:F

    const v2, 0x7f07017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lh2/b;->f:F

    new-instance v1, Ls2/x;

    invoke-direct {v1, p0}, Ls2/x;-><init>(Ls2/w;)V

    iput-object v1, p0, Lh2/b;->c:Ls2/x;

    iget-object v2, v1, Ls2/x;->a:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v2, Lh2/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0xff

    iput v3, v2, Lh2/a;->c:I

    const/4 v3, -0x1

    iput v3, v2, Lh2/a;->d:I

    sget-object v3, Le2/a;->G:[I

    const v4, 0x7f1201da

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    const/4 v7, 0x3

    invoke-static {p1, v3, v7}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {p1, v3, v8}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v8, 0x5

    invoke-static {p1, v3, v8}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v8, 0x2

    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    const/16 v9, 0xa

    :goto_0
    invoke-virtual {v3, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const/16 v9, 0xe

    invoke-virtual {v3, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v9, 0x6

    invoke-static {p1, v3, v9}, Landroid/support/v4/media/session/a;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v9, 0x7

    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v9, 0x8

    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v9, 0x9

    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Le2/a;->v:[I

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, v2, Lh2/a;->b:I

    const v3, 0x7f110090

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lh2/a;->f:Ljava/lang/String;

    const/high16 p1, 0x7f0f0000

    iput p1, v2, Lh2/a;->l:I

    const p1, 0x7f110092

    iput p1, v2, Lh2/a;->m:I

    iput-boolean v8, v2, Lh2/a;->o:Z

    iput-object v2, p0, Lh2/b;->m:Lh2/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lw2/d;

    invoke-direct {v2, p1, v4}, Lw2/d;-><init>(Landroid/content/Context;I)V

    iget-object p1, v1, Ls2/x;->f:Lw2/d;

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2, p1}, Ls2/x;->b(Lw2/d;Landroid/content/Context;)V

    invoke-virtual {p0}, Lh2/b;->h()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lh2/b;->c()I

    move-result v0

    iget v1, p0, Lh2/b;->p:I

    if-gt v0, v1, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lh2/b;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lh2/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget v1, p0, Lh2/b;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110093

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lh2/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lh2/b;->m:Lh2/a;

    iget v0, v0, Lh2/a;->d:I

    return v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lh2/b;->m:Lh2/a;

    iget v0, v0, Lh2/a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lh2/b;->m:Lh2/a;

    iget v0, v0, Lh2/a;->c:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/b;->b:Lz2/g;

    invoke-virtual {v0, p1}, Lz2/g;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lh2/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lh2/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/b;->c:Ls2/x;

    iget-object v3, v2, Ls2/x;->a:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v3, p0, Lh2/b;->n:F

    iget v4, p0, Lh2/b;->o:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget-object v0, v2, Ls2/x;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lh2/b;->m:Lh2/a;

    iget v1, v0, Lh2/a;->n:I

    if-eq v1, p1, :cond_1

    iput p1, v0, Lh2/a;->n:I

    iget-object p1, p0, Lh2/b;->t:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh2/b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lh2/b;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lh2/b;->g(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method public final f(I)V
    .locals 4

    iget-object v0, p0, Lh2/b;->m:Lh2/a;

    iget v1, v0, Lh2/a;->e:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lh2/a;->e:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lh2/b;->p:I

    iget-object p1, p0, Lh2/b;->c:Ls2/x;

    iput-boolean v0, p1, Ls2/x;->d:Z

    invoke-virtual {p0}, Lh2/b;->h()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh2/b;->t:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh2/b;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lh2/b;->h()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Lh2/b;->m:Lh2/a;

    iget v0, v0, Lh2/a;->c:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lh2/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lh2/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h()V
    .locals 10

    iget-object v0, p0, Lh2/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lh2/b;->t:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_d

    if-nez v1, :cond_1

    goto/16 :goto_b

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lh2/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lh2/b;->u:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {p0}, Lh2/b;->d()Z

    move-result v2

    iget-object v6, p0, Lh2/b;->m:Lh2/a;

    if-eqz v2, :cond_4

    iget v2, v6, Lh2/a;->s:I

    goto :goto_2

    :cond_4
    iget v2, v6, Lh2/a;->q:I

    :goto_2
    iget v7, v6, Lh2/a;->u:I

    add-int/2addr v2, v7

    iget v7, v6, Lh2/a;->n:I

    const v8, 0x800053

    if-eq v7, v8, :cond_5

    const v9, 0x800055

    if-eq v7, v9, :cond_5

    iget v7, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v2, v7

    iput v2, p0, Lh2/b;->o:F

    goto :goto_3

    :cond_5
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    int-to-float v2, v7

    iput v2, p0, Lh2/b;->o:F

    :goto_3
    invoke-virtual {p0}, Lh2/b;->c()I

    move-result v2

    const/16 v7, 0x9

    if-gt v2, v7, :cond_7

    invoke-virtual {p0}, Lh2/b;->d()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lh2/b;->e:F

    goto :goto_4

    :cond_6
    iget v2, p0, Lh2/b;->f:F

    :goto_4
    iput v2, p0, Lh2/b;->q:F

    iput v2, p0, Lh2/b;->s:F

    iput v2, p0, Lh2/b;->r:F

    goto :goto_5

    :cond_7
    iget v2, p0, Lh2/b;->f:F

    iput v2, p0, Lh2/b;->q:F

    iput v2, p0, Lh2/b;->s:F

    invoke-virtual {p0}, Lh2/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lh2/b;->c:Ls2/x;

    invoke-virtual {v7, v2}, Ls2/x;->a(Ljava/lang/String;)F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    iget v7, p0, Lh2/b;->l:F

    add-float/2addr v2, v7

    iput v2, p0, Lh2/b;->r:F

    :goto_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lh2/b;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f07017a

    goto :goto_6

    :cond_8
    const v2, 0x7f070177

    :goto_6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lh2/b;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, v6, Lh2/a;->r:I

    goto :goto_7

    :cond_9
    iget v2, v6, Lh2/a;->p:I

    :goto_7
    iget v7, v6, Lh2/a;->t:I

    add-int/2addr v2, v7

    iget v6, v6, Lh2/a;->n:I

    const v7, 0x800033

    if-eq v6, v7, :cond_b

    if-eq v6, v8, :cond_b

    sget-object v6, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_a

    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, p0, Lh2/b;->r:F

    add-float/2addr v1, v5

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    goto :goto_8

    :cond_a
    iget v1, v5, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, p0, Lh2/b;->r:F

    sub-float/2addr v1, v5

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    :goto_8
    iput v1, p0, Lh2/b;->n:F

    goto :goto_a

    :cond_b
    sget-object v6, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_c

    iget v1, v5, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, p0, Lh2/b;->r:F

    sub-float/2addr v1, v5

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    goto :goto_9

    :cond_c
    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, p0, Lh2/b;->r:F

    add-float/2addr v1, v5

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    :goto_9
    iput v1, p0, Lh2/b;->n:F

    :goto_a
    iget v0, p0, Lh2/b;->n:F

    iget v1, p0, Lh2/b;->o:F

    iget v2, p0, Lh2/b;->r:F

    iget v5, p0, Lh2/b;->s:F

    sub-float v6, v0, v2

    float-to-int v6, v6

    sub-float v7, v1, v5

    float-to-int v7, v7

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v6, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lh2/b;->q:F

    iget-object v1, p0, Lh2/b;->b:Lz2/g;

    iget-object v2, v1, Lz2/g;->a:Lz2/f;

    iget-object v2, v2, Lz2/f;->a:Lz2/k;

    invoke-virtual {v2}, Lz2/k;->e()Lz2/j;

    move-result-object v2

    new-instance v5, Lz2/a;

    invoke-direct {v5, v0}, Lz2/a;-><init>(F)V

    iput-object v5, v2, Lz2/j;->e:Lz2/c;

    new-instance v5, Lz2/a;

    invoke-direct {v5, v0}, Lz2/a;-><init>(F)V

    iput-object v5, v2, Lz2/j;->f:Lz2/c;

    new-instance v5, Lz2/a;

    invoke-direct {v5, v0}, Lz2/a;-><init>(F)V

    iput-object v5, v2, Lz2/j;->g:Lz2/c;

    new-instance v5, Lz2/a;

    invoke-direct {v5, v0}, Lz2/a;-><init>(F)V

    iput-object v5, v2, Lz2/j;->h:Lz2/c;

    invoke-virtual {v2}, Lz2/j;->a()Lz2/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lz2/g;->setShapeAppearanceModel(Lz2/k;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_d
    :goto_b
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lh2/b;->m:Lh2/a;

    iput p1, v0, Lh2/a;->c:I

    iget-object v0, p0, Lh2/b;->c:Ls2/x;

    iget-object v0, v0, Ls2/x;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
