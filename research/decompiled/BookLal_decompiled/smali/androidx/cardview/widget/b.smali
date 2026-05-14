.class public final Landroidx/cardview/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/d;


# direct methods
.method public static o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;
    .locals 0

    check-cast p0, Landroidx/cardview/widget/a;

    iget-object p0, p0, Landroidx/cardview/widget/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroidx/cardview/widget/e;

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/cardview/widget/c;F)V
    .locals 1

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    iget v0, p1, Landroidx/cardview/widget/e;->a:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p1, Landroidx/cardview/widget/e;->a:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/e;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public final b(Landroidx/cardview/widget/c;)F
    .locals 0

    check-cast p1, Landroidx/cardview/widget/a;

    iget-object p1, p1, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public final c(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    iget p1, p1, Landroidx/cardview/widget/e;->a:F

    return p1
.end method

.method public final d(Landroidx/cardview/widget/c;)V
    .locals 1

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v0

    iget v0, v0, Landroidx/cardview/widget/e;->e:F

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/b;->n(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public final e(Landroidx/cardview/widget/c;F)V
    .locals 0

    check-cast p1, Landroidx/cardview/widget/a;

    iget-object p1, p1, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public final f(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    iget p1, p1, Landroidx/cardview/widget/e;->e:F

    return p1
.end method

.method public final g(Landroidx/cardview/widget/c;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    iget-object p1, p1, Landroidx/cardview/widget/e;->h:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method public final h(Landroidx/cardview/widget/c;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Landroidx/cardview/widget/a;

    iget-object v1, v0, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroidx/cardview/widget/a;->a(IIII)V

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v1

    iget v1, v1, Landroidx/cardview/widget/e;->e:F

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    iget p1, p1, Landroidx/cardview/widget/e;->a:F

    iget-object v2, v0, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v1, p1, v3}, Landroidx/cardview/widget/f;->a(FFZ)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v1, p1, v2}, Landroidx/cardview/widget/f;->b(FFZ)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {v0, v3, p1, v3, p1}, Landroidx/cardview/widget/a;->a(IIII)V

    return-void
.end method

.method public final i(Landroidx/cardview/widget/c;)F
    .locals 1

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    iget p1, p1, Landroidx/cardview/widget/e;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public final j(Landroidx/cardview/widget/c;)F
    .locals 1

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    iget p1, p1, Landroidx/cardview/widget/e;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public final k(Landroidx/cardview/widget/a;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    new-instance p2, Landroidx/cardview/widget/e;

    invoke-direct {p2, p3, p4}, Landroidx/cardview/widget/e;-><init>(Landroid/content/res/ColorStateList;F)V

    iput-object p2, p1, Landroidx/cardview/widget/a;->a:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Landroidx/cardview/widget/b;->n(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public final l(Landroidx/cardview/widget/c;)V
    .locals 1

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v0

    iget v0, v0, Landroidx/cardview/widget/e;->e:F

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/b;->n(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public final m(Landroidx/cardview/widget/c;Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    iput-object p2, p1, Landroidx/cardview/widget/e;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    iget-object v1, p1, Landroidx/cardview/widget/e;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iget-object v0, p1, Landroidx/cardview/widget/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final n(Landroidx/cardview/widget/c;F)V
    .locals 4

    invoke-static {p1}, Landroidx/cardview/widget/b;->o(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/cardview/widget/a;

    iget-object v2, v1, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v2

    iget-object v1, v1, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    iget v3, v0, Landroidx/cardview/widget/e;->e:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroidx/cardview/widget/e;->f:Z

    if-ne v3, v2, :cond_0

    iget-boolean v3, v0, Landroidx/cardview/widget/e;->g:Z

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, v0, Landroidx/cardview/widget/e;->e:F

    iput-boolean v2, v0, Landroidx/cardview/widget/e;->f:Z

    iput-boolean v1, v0, Landroidx/cardview/widget/e;->g:Z

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/e;->b(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->h(Landroidx/cardview/widget/c;)V

    return-void
.end method
