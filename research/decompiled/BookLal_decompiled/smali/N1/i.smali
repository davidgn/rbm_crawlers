.class public final LN1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field public final synthetic a:LN1/m;


# direct methods
.method public constructor <init>(LN1/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN1/i;->a:LN1/m;

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, LN1/i;->a:LN1/m;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, LN1/m;->d()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v4, v0, LN1/m;->d:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    invoke-virtual {v0, v4, v3, p1, v1}, LN1/m;->f(FFFZ)V

    goto :goto_0

    :cond_0
    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, v0, LN1/m;->e:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {v0, v4, v3, p1, v1}, LN1/m;->f(FFFZ)V

    goto :goto_0

    :cond_1
    iget v2, v0, LN1/m;->c:F

    invoke-virtual {v0, v2, v3, p1, v1}, LN1/m;->f(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, LN1/i;->a:LN1/m;

    iget-object v1, v0, LN1/m;->u:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v2, v0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, LN1/m;->b()Z

    invoke-virtual {v0}, LN1/m;->c()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v0, LN1/m;->s:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
