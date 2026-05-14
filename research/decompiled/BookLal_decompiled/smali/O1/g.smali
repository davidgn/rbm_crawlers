.class public final LO1/g;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public A:Lk4/l;

.field public B:Lk4/a;

.field public final C:LO1/n;

.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final l:I

.field public m:Landroid/graphics/Point;

.field public n:Landroid/graphics/Point;

.field public o:LM/w;

.field public final p:I

.field public final q:I

.field public final r:LO1/o;

.field public final s:Ljava/util/List;

.field public final t:Landroid/widget/TextView;

.field public u:I

.field public v:I

.field public w:LO1/m;

.field public x:Landroid/animation/ValueAnimator;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/ChatActivity;LO1/n;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LO1/g;->C:LO1/n;

    const-class v0, LO1/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LO1/g;->a:Ljava/lang/String;

    iget v0, p2, LO1/n;->c:I

    iput v0, p0, LO1/g;->b:I

    iget v1, p2, LO1/n;->d:I

    iput v1, p0, LO1/g;->c:I

    div-int/lit8 v2, v0, 0x2

    iput v2, p0, LO1/g;->d:I

    iget v3, p2, LO1/n;->b:I

    iput v3, p0, LO1/g;->f:I

    mul-int/lit8 v4, v3, 0x2

    iput v4, p0, LO1/g;->l:I

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v5, p0, LO1/g;->m:Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v5, p0, LO1/g;->n:Landroid/graphics/Point;

    new-instance v5, LM/w;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, LM/w;-><init>(II)V

    iput-object v5, p0, LO1/g;->o:LM/w;

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iput v1, p0, LO1/g;->q:I

    iget-object v5, p2, LO1/n;->a:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v3, v6

    add-int/2addr v3, v0

    mul-int/2addr v2, v7

    add-int/2addr v3, v2

    iput v3, p0, LO1/g;->p:I

    sub-int v0, v3, v0

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    iput v0, p0, LO1/g;->e:I

    new-instance v0, LO1/o;

    invoke-direct {v0, p1, p2}, LO1/o;-><init>(Lcom/booklal/booklal/ChatActivity;LO1/n;)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, LO1/g;->r:LO1/o;

    check-cast v5, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v5}, LZ3/i;->c0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO1/c;

    new-instance v2, LO1/f;

    invoke-direct {v2, p1, v1}, LO1/f;-><init>(Lcom/booklal/booklal/ChatActivity;LO1/c;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, LO1/g;->f:I

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, LZ3/g;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LO1/g;->s:Ljava/util/List;

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, LO1/g;->C:LO1/n;

    iget p1, p1, LO1/n;->i:F

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, LO1/g;->C:LO1/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, LO1/g;->C:LO1/n;

    iget v0, p1, LO1/n;->g:I

    iget p1, p1, LO1/n;->h:I

    invoke-virtual {p2, v0, p1, v0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, LO1/g;->C:LO1/n;

    iget-object p1, p1, LO1/n;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, LO1/g;->t:Landroid/widget/TextView;

    iput-boolean v8, p0, LO1/g;->y:Z

    return-void
.end method

.method public static final synthetic a(LO1/g;LO1/l;)V
    .locals 0

    invoke-direct {p0, p1}, LO1/g;->setCurrentState(LO1/m;)V

    return-void
.end method

.method private final setCurrentAnimator(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LO1/g;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-object p1, p0, LO1/g;->x:Landroid/animation/ValueAnimator;

    iget-object p1, p0, LO1/g;->t:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LO1/g;->x:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    iget-object p1, p0, LO1/g;->x:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private final setCurrentState(LO1/m;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, LO1/g;->w:LO1/m;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LO1/g;->w:LO1/m;

    iput-object p1, p0, LO1/g;->w:LO1/m;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LO1/g;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, LO1/j;

    if-eqz v1, :cond_4

    check-cast p1, LO1/j;

    instance-of v1, p1, LO1/h;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(child)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p1, LO1/j;->a:LY3/e;

    iget-object v5, v5, LY3/e;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    instance-of v5, p1, LO1/h;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "it.layoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p0, LO1/g;->f:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, LD0/b;

    invoke-direct {v2, p0, p1, v0}, LD0/b;-><init>(LO1/g;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, LD0/c;

    invoke-direct {v0, p0, p1}, LD0/c;-><init>(LO1/g;LO1/j;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v1}, LO1/g;->setCurrentAnimator(Landroid/animation/ValueAnimator;)V

    goto :goto_1

    :cond_4
    instance-of v0, p1, LO1/l;

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LO1/g;->b(LO1/k;)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, LO1/k;

    if-eqz v0, :cond_6

    check-cast p1, LO1/k;

    invoke-virtual {p0, p1}, LO1/g;->b(LO1/k;)V

    :cond_6
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final b(LO1/k;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LO1/g;->s:Ljava/util/List;

    invoke-static {v1}, LZ3/i;->c0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO1/f;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "it.layoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez p1, :cond_0

    iget v2, p0, LO1/g;->f:I

    goto :goto_1

    :cond_0
    iget-object v4, p1, LO1/k;->a:LO1/f;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, LO1/g;->l:I

    goto :goto_1

    :cond_1
    iget v2, p0, LO1/g;->e:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, LY3/e;

    invoke-direct {v4, v3, v2}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, LD0/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, LD0/b;-><init>(LO1/g;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, LD0/c;

    invoke-direct {v2, p0, v0, p1}, LD0/c;-><init>(LO1/g;Ljava/util/ArrayList;LO1/k;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v1}, LO1/g;->setCurrentAnimator(Landroid/animation/ValueAnimator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, LO1/g;->w:LO1/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, LO1/i;

    instance-of v0, v0, LO1/k;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, LO1/g;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, LY3/e;

    invoke-direct {v3, v0, v2}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3}, LO1/j;-><init>(LY3/e;)V

    invoke-direct {p0, v1}, LO1/g;->setCurrentState(LO1/m;)V

    return-void
.end method

.method public final d(FF)LO1/f;
    .locals 6

    iget-object v0, p0, LO1/g;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LO1/f;

    invoke-virtual {v2}, LO1/f;->getLocation()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, LO1/g;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, LO1/f;->getLocation()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget v3, p0, LO1/g;->d:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    invoke-virtual {v2}, LO1/f;->getLocation()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v2}, LO1/f;->getLocation()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v4

    iget v4, p0, LO1/g;->q:I

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, LO1/f;

    return-object v1
.end method

.method public final e(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v1}, La/a;->w(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p1}, La/a;->w(F)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LO1/g;->m:Landroid/graphics/Point;

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LO1/g;->n:Landroid/graphics/Point;

    new-instance p1, LM/w;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-direct {p1, v0, p2}, LM/w;-><init>(II)V

    iput-object p1, p0, LO1/g;->o:LM/w;

    iput-boolean v3, p0, LO1/g;->y:Z

    iput-boolean v3, p0, LO1/g;->z:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1, p2, v0, v2}, LO1/g;->onSizeChanged(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, LO1/h;

    iget p2, p0, LO1/g;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, LY3/e;

    invoke-direct {v1, p2, v0}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, LO1/j;-><init>(LY3/e;)V

    invoke-direct {p0, p1}, LO1/g;->setCurrentState(LO1/m;)V

    return-void
.end method

.method public final getDismissListener()Lk4/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk4/a;"
        }
    .end annotation

    iget-object v0, p0, LO1/g;->B:Lk4/a;

    return-object v0
.end method

.method public final getReactionSelectedListener()Lk4/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk4/l;"
        }
    .end annotation

    iget-object v0, p0, LO1/g;->A:Lk4/l;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    iget-object p1, p0, LO1/g;->r:LO1/o;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p3

    float-to-int p3, p3

    iget p4, p0, LO1/g;->u:I

    add-int/2addr p4, p2

    iget p5, p0, LO1/g;->v:I

    iget v0, p0, LO1/g;->f:I

    add-int/2addr p5, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr p5, v0

    add-int/2addr p5, p3

    iget v0, p0, LO1/g;->u:I

    iget v1, p0, LO1/g;->p:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iget p2, p0, LO1/g;->v:I

    iget v1, p0, LO1/g;->q:I

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p1, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, LO1/g;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LO1/f;

    invoke-virtual {p4}, Landroid/view/View;->getTranslationX()F

    move-result p5

    float-to-int p5, p5

    invoke-virtual {p4}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, LO1/g;->v:I

    add-int/2addr v2, v1

    iget v3, p0, LO1/g;->c:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v3, v2, v3

    add-int/2addr v3, v0

    iget v0, p0, LO1/g;->u:I

    iget v4, p0, LO1/g;->b:I

    add-int/2addr v0, v4

    add-int/2addr v0, p3

    add-int/2addr v0, p5

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v0

    add-int/2addr v4, p5

    invoke-virtual {p4, v0, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget p5, p0, LO1/g;->d:I

    add-int/2addr p4, p5

    add-int/2addr p3, p4

    goto :goto_0

    :cond_0
    iget-object p1, p0, LO1/g;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1, p2, p2}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, LO1/g;->w:LO1/m;

    instance-of p3, p2, LO1/k;

    if-nez p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, LO1/k;

    if-eqz p2, :cond_2

    iget-object p2, p2, LO1/k;->a:LO1/f;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    const-string p5, "selectedView.layoutParams"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p2, p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v0

    sub-float/2addr p2, p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p5, p2

    float-to-int p2, p2

    float-to-int p5, p5

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/view/View;->layout(IIII)V

    nop

    :cond_2
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p2, p0, LO1/g;->C:LO1/n;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, LO1/g;->p:I

    iget-object p3, p0, LO1/g;->m:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    iget p4, p0, LO1/g;->b:I

    sub-int/2addr p3, p4

    iget p4, p0, LO1/g;->f:I

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    iput p3, p0, LO1/g;->u:I

    if-ltz p3, :cond_0

    add-int/2addr p3, p2

    if-lt p3, p1, :cond_1

    :cond_0
    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LO1/g;->u:I

    :cond_1
    iget-object p1, p0, LO1/g;->n:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p0, LO1/g;->q:I

    mul-int/lit8 p3, p2, 0x2

    sub-int p3, p1, p3

    iput p3, p0, LO1/g;->v:I

    if-gez p3, :cond_2

    iget-object p3, p0, LO1/g;->o:LM/w;

    iget p3, p3, LM/w;->b:I

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, LO1/g;->v:I

    :cond_2
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LO1/g;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, LO1/g;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, LO1/g;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, LO1/g;->o:LM/w;

    iget v4, v4, LM/w;->a:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v3, p0, LO1/g;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v3, p0, LO1/g;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, LO1/g;->o:LM/w;

    iget v4, v4, LM/w;->b:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, LO1/g;->y:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget-object v3, LO1/l;->a:LO1/l;

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-direct {p0, v3}, LO1/g;->setCurrentState(LO1/m;)V

    goto/16 :goto_5

    :cond_2
    iget-boolean v0, p0, LO1/g;->y:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, LO1/g;->y:Z

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LO1/g;->d(FF)LO1/f;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LO1/f;->getReaction()LO1/c;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v4

    :goto_1
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    iget-object v5, p0, LO1/g;->C:LO1/n;

    iget-object v5, v5, LO1/n;->a:Ljava/util/Collection;

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ltz v1, :cond_7

    invoke-virtual {p1, v6}, LO1/c;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-static {}, LZ3/h;->b0()V

    throw v4

    :cond_8
    :goto_3
    iget-object p1, p0, LO1/g;->A:Lk4/l;

    if-eqz p1, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v2

    if-ne p1, v2, :cond_9

    invoke-direct {p0, v3}, LO1/g;->setCurrentState(LO1/m;)V

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p0}, LO1/g;->c()V

    goto/16 :goto_5

    :cond_a
    iget-boolean v0, p0, LO1/g;->z:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, LO1/g;->s:Ljava/util/List;

    invoke-static {v0}, LZ3/g;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO1/f;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v6, v0

    iget v0, p0, LO1/g;->q:I

    int-to-float v0, v0

    add-float/2addr v6, v0

    cmpg-float v0, v5, v6

    if-gtz v0, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    iget-boolean v5, p0, LO1/g;->z:Z

    if-eqz v5, :cond_d

    if-nez v0, :cond_c

    iget-boolean v0, p0, LO1/g;->y:Z

    if-eqz v0, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    iput-boolean v1, p0, LO1/g;->z:Z

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, LO1/g;->w:LO1/m;

    instance-of v0, v0, LO1/h;

    if-eqz v0, :cond_f

    return v2

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LO1/g;->d(FF)LO1/f;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-direct {p0, v3}, LO1/g;->setCurrentState(LO1/m;)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, LO1/g;->w:LO1/m;

    instance-of v1, v0, LO1/k;

    if-nez v1, :cond_11

    move-object v0, v4

    :cond_11
    check-cast v0, LO1/k;

    if-eqz v0, :cond_12

    iget-object v4, v0, LO1/k;->a:LO1/f;

    :cond_12
    invoke-static {v4, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, LO1/k;

    invoke-direct {v0, p1}, LO1/k;-><init>(LO1/f;)V

    invoke-direct {p0, v0}, LO1/g;->setCurrentState(LO1/m;)V

    :cond_13
    :goto_5
    return v2
.end method

.method public final setDismissListener(Lk4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LO1/g;->B:Lk4/a;

    return-void
.end method

.method public final setReactionSelectedListener(Lk4/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/l;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LO1/g;->A:Lk4/l;

    return-void
.end method
