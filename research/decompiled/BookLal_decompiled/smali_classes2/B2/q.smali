.class public final LB2/q;
.super LB2/r;
.source "SourceFile"


# instance fields
.field public final e:LB2/l;

.field public final f:LB2/b;

.field public final g:LB2/m;

.field public final h:LB2/c;

.field public final i:LB2/d;

.field public j:Z

.field public k:Z

.field public l:J

.field public m:Landroid/graphics/drawable/StateListDrawable;

.field public n:Lz2/g;

.field public o:Landroid/view/accessibility/AccessibilityManager;

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, LB2/r;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p2, LB2/l;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LB2/l;-><init>(LB2/r;I)V

    iput-object p2, p0, LB2/q;->e:LB2/l;

    new-instance p2, LB2/b;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LB2/b;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, LB2/q;->f:LB2/b;

    new-instance p2, LB2/m;

    invoke-direct {p2, p0, p1}, LB2/m;-><init>(LB2/q;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p2, p0, LB2/q;->g:LB2/m;

    new-instance p1, LB2/c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LB2/c;-><init>(LB2/r;I)V

    iput-object p1, p0, LB2/q;->h:LB2/c;

    new-instance p1, LB2/d;

    invoke-direct {p1, p0, p2}, LB2/d;-><init>(LB2/r;I)V

    iput-object p1, p0, LB2/q;->i:LB2/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, LB2/q;->j:Z

    iput-boolean p1, p0, LB2/q;->k:Z

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, LB2/q;->l:J

    return-void
.end method

.method public static d(LB2/q;Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LB2/q;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    const-wide/16 v5, 0x12c

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v4, p0, LB2/q;->j:Z

    :cond_3
    iget-boolean v0, p0, LB2/q;->j:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, LB2/q;->k:Z

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, LB2/q;->g(Z)V

    iget-boolean p0, p0, LB2/q;->k:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2

    :cond_5
    iput-boolean v4, p0, LB2/q;->j:Z

    :goto_2
    return-void
.end method

.method public static f(Landroid/widget/EditText;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x2

    iget-object v1, p0, LB2/r;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070213

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v2, v2, v3, v4}, LB2/q;->e(FFFI)Lz2/g;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2, v3, v4}, LB2/q;->e(FFFI)Lz2/g;

    move-result-object v2

    iput-object v5, p0, LB2/q;->n:Lz2/g;

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, LB2/q;->m:Landroid/graphics/drawable/StateListDrawable;

    const v4, 0x10100aa

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, LB2/q;->m:Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x0

    new-array v5, v4, [I

    invoke-virtual {v3, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget v2, p0, LB2/r;->d:I

    if-nez v2, :cond_0

    const v2, 0x7f080376

    :cond_0
    iget-object v3, p0, LB2/r;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f11004e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, LB2/e;

    const/4 v5, 0x1

    invoke-direct {v2, p0, v5}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v3, Lcom/google/android/material/textfield/TextInputLayout;->k0:Ljava/util/LinkedHashSet;

    iget-object v5, p0, LB2/q;->h:LB2/c;

    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-virtual {v5, v3}, LB2/c;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_1
    iget-object v2, v3, Lcom/google/android/material/textfield/TextInputLayout;->o0:Ljava/util/LinkedHashSet;

    iget-object v3, p0, LB2/q;->i:LB2/d;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lf2/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v5, 0x43

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, LB2/k;

    invoke-direct {v5, p0, v4}, LB2/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, LB2/q;->q:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v2, 0x32

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, LB2/k;

    invoke-direct {v2, p0, v4}, LB2/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, LB2/q;->p:Landroid/animation/ValueAnimator;

    new-instance v2, LB2/p;

    invoke-direct {v2, p0, v4}, LB2/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v0, "accessibility"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, LB2/q;->o:Landroid/view/accessibility/AccessibilityManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(FFFI)Lz2/g;
    .locals 14

    move v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    new-instance v3, Lz2/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lz2/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lz2/i;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lz2/i;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lz2/e;

    invoke-direct {v7, v2}, Lz2/e;-><init>(I)V

    new-instance v8, Lz2/e;

    invoke-direct {v8, v2}, Lz2/e;-><init>(I)V

    new-instance v9, Lz2/e;

    invoke-direct {v9, v2}, Lz2/e;-><init>(I)V

    new-instance v10, Lz2/e;

    invoke-direct {v10, v2}, Lz2/e;-><init>(I)V

    new-instance v11, Lz2/a;

    invoke-direct {v11, p1}, Lz2/a;-><init>(F)V

    new-instance v12, Lz2/a;

    invoke-direct {v12, p1}, Lz2/a;-><init>(F)V

    new-instance v0, Lz2/a;

    invoke-direct {v0, v1}, Lz2/a;-><init>(F)V

    new-instance v13, Lz2/a;

    invoke-direct {v13, v1}, Lz2/a;-><init>(F)V

    new-instance v1, Lz2/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lz2/k;->a:LZ2/l;

    iput-object v4, v1, Lz2/k;->b:LZ2/l;

    iput-object v5, v1, Lz2/k;->c:LZ2/l;

    iput-object v6, v1, Lz2/k;->d:LZ2/l;

    iput-object v11, v1, Lz2/k;->e:Lz2/c;

    iput-object v12, v1, Lz2/k;->f:Lz2/c;

    iput-object v13, v1, Lz2/k;->g:Lz2/c;

    iput-object v0, v1, Lz2/k;->h:Lz2/c;

    iput-object v7, v1, Lz2/k;->i:Lz2/e;

    iput-object v8, v1, Lz2/k;->j:Lz2/e;

    iput-object v9, v1, Lz2/k;->k:Lz2/e;

    iput-object v10, v1, Lz2/k;->l:Lz2/e;

    sget-object v0, Lz2/g;->B:Landroid/graphics/Paint;

    const-class v0, Lz2/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    move-object v3, p0

    iget-object v4, v3, LB2/r;->b:Landroid/content/Context;

    const v5, 0x7f040135

    invoke-static {v4, v5, v0}, La/a;->v(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    new-instance v5, Lz2/g;

    invoke-direct {v5}, Lz2/g;-><init>()V

    invoke-virtual {v5, v4}, Lz2/g;->i(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lz2/g;->j(F)V

    invoke-virtual {v5, v1}, Lz2/g;->setShapeAppearanceModel(Lz2/k;)V

    iget-object v0, v5, Lz2/g;->a:Lz2/f;

    iget-object v1, v0, Lz2/f;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lz2/f;->g:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, v5, Lz2/g;->a:Lz2/f;

    iget-object v0, v0, Lz2/f;->g:Landroid/graphics/Rect;

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v5}, Lz2/g;->invalidateSelf()V

    return-object v5
.end method

.method public final g(Z)V
    .locals 1

    iget-boolean v0, p0, LB2/q;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, LB2/q;->k:Z

    iget-object p1, p0, LB2/q;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, LB2/q;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
