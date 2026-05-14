.class public final LA2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LA2/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, LA2/c;->a:I

    packed-switch v3, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le1/A;

    invoke-interface {p1}, Le1/A;->a()V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_1

    move v1, v2

    goto/16 :goto_2

    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, LA2/n;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v3, LA2/n;->l:Landroid/view/accessibility/AccessibilityManager;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    iget-object v4, v3, LA2/n;->c:LA2/m;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, LA2/m;->getAnimationMode()I

    move-result v5

    if-ne v5, v1, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v4, Lf2/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, LA2/b;

    invoke-direct {v4, v3, v2, v2}, LA2/b;-><init>(LA2/n;IB)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x4b

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, LA2/a;

    invoke-direct {v2, v3, p1, v1}, LA2/a;-><init>(LA2/n;II)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_3
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    :cond_4
    filled-new-array {v2, v6}, [I

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v4, Lf2/a;->b:Lg0/a;

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, LA2/a;

    invoke-direct {v4, v3, p1, v0}, LA2/a;-><init>(LA2/n;II)V

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, LA2/b;

    invoke-direct {p1, v3, v0, v2}, LA2/b;-><init>(LA2/n;IB)V

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, LA2/n;->b()V

    goto :goto_2

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LA2/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LA2/i;

    invoke-direct {v0, p1}, LA2/i;-><init>(LA2/n;)V

    iget-object v2, p1, LA2/n;->c:LA2/m;

    invoke-virtual {v2, v0}, LA2/m;->setOnAttachStateChangeListener(LA2/j;)V

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Lz/e;

    if-eqz v3, :cond_7

    check-cast v0, Lz/e;

    new-instance v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    iget-object v4, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->h:LK0/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, LA2/n;->m:LA2/g;

    iput-object v5, v4, LK0/j;->b:Ljava/lang/Object;

    new-instance v4, LA2/i;

    invoke-direct {v4, p1}, LA2/i;-><init>(LA2/n;)V

    iput-object v4, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LA2/i;

    invoke-virtual {v0, v3}, Lz/e;->b(Lz/c;)V

    const/16 v3, 0x50

    iput v3, v0, Lz/e;->g:I

    :cond_7
    invoke-virtual {p1}, LA2/n;->e()V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, LA2/n;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    sget-object v0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, LA2/n;->d()V

    goto :goto_2

    :cond_9
    new-instance v0, LA2/e;

    invoke-direct {v0, p1}, LA2/e;-><init>(LA2/n;)V

    invoke-virtual {v2, v0}, LA2/m;->setOnLayoutChangeListener(LA2/k;)V

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
