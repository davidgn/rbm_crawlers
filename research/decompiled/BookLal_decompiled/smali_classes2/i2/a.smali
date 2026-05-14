.class public final Li2/a;
.super La/a;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 p1, -0x1

    iput p1, p0, Li2/a;->c:I

    return-void
.end method


# virtual methods
.method public final I(Landroid/view/View;I)Z
    .locals 2

    iget v0, p0, Li2/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object p2, p0, Li2/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Landroid/view/View;I)I
    .locals 3

    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Li2/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget v0, p0, Li2/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Li2/a;->b:I

    goto :goto_2

    :cond_1
    iget v0, p0, Li2/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    :goto_1
    add-int/2addr p1, v0

    goto :goto_2

    :cond_2
    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p0, Li2/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_3
    iget v0, p0, Li2/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Li2/a;->b:I

    goto :goto_2

    :cond_4
    iget v0, p0, Li2/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v1

    :goto_2
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final j(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method public final p(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Li2/a;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Li2/a;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Li2/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LA2/i;

    if-eqz v0, :cond_2

    iget-object v0, v0, LA2/i;->a:LA2/n;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LR0/i;->h()LR0/i;

    move-result-object p1

    iget-object v0, v0, LA2/n;->m:LA2/g;

    invoke-virtual {p1, v0}, LR0/i;->p(LA2/g;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LR0/i;->h()LR0/i;

    move-result-object p1

    iget-object v0, v0, LA2/n;->m:LA2/g;

    invoke-virtual {p1, v0}, LR0/i;->r(LA2/g;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(Landroid/view/View;II)V
    .locals 4

    iget p3, p0, Li2/a;->b:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Li2/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    mul-float/2addr v0, v2

    add-float/2addr v0, p3

    iget p3, p0, Li2/a;->b:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    mul-float/2addr v2, v1

    add-float/2addr v2, p3

    int-to-float p2, p2

    cmpg-float p3, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz p3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    cmpl-float p3, p2, v2

    const/4 v3, 0x0

    if-ltz p3, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    sub-float/2addr p2, v0

    sub-float/2addr v2, v0

    div-float/2addr p2, v2

    sub-float p2, v1, p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final s(Landroid/view/View;FF)V
    .locals 8

    const/4 p3, 0x2

    const/4 v0, -0x1

    iput v0, p0, Li2/a;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    const/4 v3, 0x1

    iget-object v4, p0, Li2/a;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    sget-object v6, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    if-ne v6, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    iget v7, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    if-ne v7, p3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_3

    if-eqz v6, :cond_2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_7

    goto :goto_1

    :cond_2
    if-lez v2, :cond_7

    goto :goto_1

    :cond_3
    if-ne v7, v3, :cond_7

    if-eqz v6, :cond_4

    if-lez v2, :cond_7

    goto :goto_1

    :cond_4
    cmpg-float p2, p2, v1

    if-gez p2, :cond_7

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v1, p0, Li2/a;->b:I

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v1, :cond_7

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v1, p0, Li2/a;->b:I

    if-ge p2, v1, :cond_6

    sub-int/2addr v1, v0

    goto :goto_2

    :cond_6
    add-int/2addr v1, v0

    goto :goto_2

    :cond_7
    iget v1, p0, Li2/a;->b:I

    move v3, v5

    :goto_2
    iget-object p2, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LW/d;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2, v1, v0}, LW/d;->q(II)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Landroidx/fragment/app/i;

    invoke-direct {p2, p3, v4, p1, v3}, Landroidx/fragment/app/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    sget-object p3, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    iget-object p2, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LA2/i;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, LA2/i;->a(Landroid/view/View;)V

    :cond_9
    :goto_3
    return-void
.end method
