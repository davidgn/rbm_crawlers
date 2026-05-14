.class public abstract LA2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Landroid/os/Handler;

.field public static final o:[I

.field public static final p:Ljava/lang/String;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/content/Context;

.field public final c:LA2/m;

.field public final d:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public e:I

.field public final f:LA2/d;

.field public final g:Landroid/graphics/Rect;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final l:Landroid/view/accessibility/AccessibilityManager;

.field public final m:LA2/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x7f0403b8

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LA2/n;->o:[I

    const-class v0, LA2/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LA2/n;->p:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LA2/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LA2/c;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, LA2/n;->n:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LA2/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LA2/d;-><init>(LA2/n;I)V

    iput-object v0, p0, LA2/n;->f:LA2/d;

    new-instance v0, LA2/g;

    invoke-direct {v0, p0}, LA2/g;-><init>(LA2/n;)V

    iput-object v0, p0, LA2/n;->m:LA2/g;

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    iput-object p2, p0, LA2/n;->a:Landroid/view/ViewGroup;

    iput-object p4, p0, LA2/n;->d:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iput-object p1, p0, LA2/n;->b:Landroid/content/Context;

    sget-object p4, Ls2/A;->a:[I

    const-string v0, "Theme.AppCompat"

    invoke-static {p1, p4, v0}, Ls2/A;->c(Landroid/content/Context;[ILjava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget-object v0, LA2/n;->o:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v3, v2, :cond_0

    const v0, 0x7f0c0090

    goto :goto_0

    :cond_0
    const v0, 0x7f0c004c

    :goto_0
    invoke-virtual {p4, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, LA2/m;

    iput-object p2, p0, LA2/n;->c:LA2/m;

    invoke-virtual {p2}, LA2/m;->getActionTextColorAlpha()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    const v2, 0x7f040135

    invoke-static {p3, v2}, LS4/b;->q(Landroid/view/View;I)I

    move-result v2

    invoke-static {v2, v0, p4}, LS4/b;->w(IIF)I

    move-result p4

    iget-object v0, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p2}, LA2/m;->getMaxInlineActionWidth()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p4, :cond_2

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance p4, Landroid/graphics/Rect;

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p4, v0, v2, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, p0, LA2/n;->g:Landroid/graphics/Rect;

    :cond_2
    sget-object p3, LM/a0;->a:Ljava/util/WeakHashMap;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance p3, LA2/e;

    invoke-direct {p3, p0}, LA2/e;-><init>(LA2/n;)V

    invoke-static {p2, p3}, LM/N;->u(Landroid/view/View;LM/x;)V

    new-instance p3, LA2/f;

    invoke-direct {p3, p0, v1}, LA2/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, p3}, LM/a0;->m(Landroid/view/View;LM/b;)V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, LA2/n;->l:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    invoke-static {}, LR0/i;->h()LR0/i;

    move-result-object v0

    iget-object v1, p0, LA2/n;->m:LA2/g;

    iget-object v2, v0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, LR0/i;->k(LA2/g;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, LR0/i;->c:Ljava/lang/Object;

    check-cast v1, LA2/s;

    invoke-virtual {v0, v1, p1}, LR0/i;->b(LA2/s;I)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v3, LA2/s;

    if-eqz v3, :cond_1

    iget-object v3, v3, LA2/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, LA2/s;

    invoke-virtual {v0, v1, p1}, LR0/i;->b(LA2/s;I)Z

    :cond_2
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 3

    invoke-static {}, LR0/i;->h()LR0/i;

    move-result-object v0

    iget-object v1, p0, LA2/n;->m:LA2/g;

    iget-object v2, v0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, LR0/i;->k(LA2/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, LR0/i;->c:Ljava/lang/Object;

    iget-object v1, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, LA2/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LR0/i;->t()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LA2/n;->c:LA2/m;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, LA2/n;->c:LA2/m;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, LR0/i;->h()LR0/i;

    move-result-object v0

    iget-object v1, p0, LA2/n;->m:LA2/g;

    iget-object v2, v0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, LR0/i;->k(LA2/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, LR0/i;->c:Ljava/lang/Object;

    check-cast v1, LA2/s;

    invoke-virtual {v0, v1}, LR0/i;->s(LA2/s;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, LA2/n;->l:Landroid/view/accessibility/AccessibilityManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, LA2/n;->c:LA2/m;

    if-eqz v1, :cond_2

    new-instance v0, LA2/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LA2/d;-><init>(LA2/n;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, LA2/n;->c()V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, LA2/n;->c:LA2/m;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    iget-object v2, p0, LA2/n;->g:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, LA2/n;->h:I

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, LA2/n;->i:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, LA2/n;->j:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    iget v1, p0, LA2/n;->k:I

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Lz/e;

    if-eqz v2, :cond_1

    check-cast v1, Lz/e;

    iget-object v1, v1, Lz/e;->a:Lz/c;

    instance-of v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v1, :cond_1

    iget-object v1, p0, LA2/n;->f:LA2/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object v0, LA2/n;->p:Ljava/lang/String;

    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
