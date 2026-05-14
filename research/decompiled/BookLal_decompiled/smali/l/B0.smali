.class public Ll/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/D;


# static fields
.field public static final E:Ljava/lang/reflect/Method;

.field public static final F:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public B:Landroid/graphics/Rect;

.field public C:Z

.field public final D:Ll/z;

.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Ll/q0;

.field public final d:I

.field public e:I

.field public f:I

.field public l:I

.field public final m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public final r:I

.field public s:LI0/i;

.field public t:Landroid/view/View;

.field public u:Landroid/widget/AdapterView$OnItemClickListener;

.field public final v:Ll/z0;

.field public final w:LL1/b;

.field public final x:Ll/A0;

.field public final y:Ll/z0;

.field public final z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ListPopupWindow"

    const-class v1, Landroid/widget/PopupWindow;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_0

    :try_start_0
    const-string v2, "setClipToScreenEnabled"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ll/B0;->E:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v2, "setEpicenterBounds"

    const-class v3, Landroid/graphics/Rect;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ll/B0;->F:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Ll/B0;->d:I

    iput v0, p0, Ll/B0;->e:I

    const/16 v0, 0x3ea

    iput v0, p0, Ll/B0;->m:I

    const/4 v0, 0x0

    iput v0, p0, Ll/B0;->q:I

    const v1, 0x7fffffff

    iput v1, p0, Ll/B0;->r:I

    new-instance v1, Ll/z0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ll/z0;-><init>(Ll/B0;I)V

    iput-object v1, p0, Ll/B0;->v:Ll/z0;

    new-instance v1, LL1/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LL1/b;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Ll/B0;->w:LL1/b;

    new-instance v1, Ll/A0;

    invoke-direct {v1, p0}, Ll/A0;-><init>(Ll/B0;)V

    iput-object v1, p0, Ll/B0;->x:Ll/A0;

    new-instance v1, Ll/z0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ll/z0;-><init>(Ll/B0;I)V

    iput-object v1, p0, Ll/B0;->y:Ll/z0;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ll/B0;->A:Landroid/graphics/Rect;

    iput-object p1, p0, Ll/B0;->a:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ll/B0;->z:Landroid/os/Handler;

    sget-object v1, Lg/a;->o:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Ll/B0;->f:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Ll/B0;->l:I

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Ll/B0;->n:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Ll/z;

    invoke-direct {v1, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v3, Lg/a;->s:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {v1, p3}, LS/l;->c(Landroid/widget/PopupWindow;Z)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1, p3}, LL4/d;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v1, p0, Ll/B0;->D:Ll/z;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Ll/B0;->D:Ll/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ll/B0;->f:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Ll/B0;->f:I

    return-void
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Ll/B0;->D:Ll/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Ll/B0;->c:Ll/q0;

    iget-object v0, p0, Ll/B0;->z:Landroid/os/Handler;

    iget-object v1, p0, Ll/B0;->v:Ll/z0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Ll/B0;->D:Ll/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Ll/B0;->D:Ll/z;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final i()V
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Ll/B0;->c:Ll/q0;

    iget-object v2, p0, Ll/B0;->D:Ll/z;

    iget-object v3, p0, Ll/B0;->a:Landroid/content/Context;

    const/4 v4, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ll/B0;->C:Z

    xor-int/2addr v1, v4

    invoke-virtual {p0, v3, v1}, Ll/B0;->q(Landroid/content/Context;Z)Ll/q0;

    move-result-object v1

    iput-object v1, p0, Ll/B0;->c:Ll/q0;

    iget-object v5, p0, Ll/B0;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Ll/B0;->c:Ll/q0;

    iget-object v5, p0, Ll/B0;->u:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Ll/B0;->c:Ll/q0;

    new-instance v5, Ll/w0;

    invoke-direct {v5, p0, v0}, Ll/w0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Ll/B0;->c:Ll/q0;

    iget-object v5, p0, Ll/B0;->x:Ll/A0;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, p0, Ll/B0;->A:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iget-boolean v7, p0, Ll/B0;->n:Z

    if-nez v7, :cond_2

    neg-int v1, v1

    iput v1, p0, Ll/B0;->l:I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    iget-object v8, p0, Ll/B0;->t:Landroid/view/View;

    iget v9, p0, Ll/B0;->l:I

    invoke-static {v2, v8, v9, v1}, Ll/x0;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v1

    iget v8, p0, Ll/B0;->d:I

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    add-int/2addr v1, v6

    goto :goto_5

    :cond_4
    iget v11, p0, Ll/B0;->e:I

    if-eq v11, v9, :cond_6

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v10, :cond_5

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v5

    sub-int/2addr v3, v11

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v5

    sub-int/2addr v3, v11

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_3
    iget-object v5, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v5, v3, v1}, Ll/q0;->a(II)I

    move-result v1

    if-lez v1, :cond_7

    iget-object v3, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v5, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v6

    goto :goto_4

    :cond_7
    move v5, v0

    :goto_4
    add-int/2addr v1, v5

    :goto_5
    iget-object v3, p0, Ll/B0;->D:Ll/z;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    if-ne v3, v7, :cond_8

    move v3, v4

    goto :goto_6

    :cond_8
    move v3, v0

    :goto_6
    iget v5, p0, Ll/B0;->m:I

    invoke-static {v2, v5}, LS/l;->d(Landroid/widget/PopupWindow;I)V

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Ll/B0;->t:Landroid/view/View;

    sget-object v6, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_9

    return-void

    :cond_9
    iget v5, p0, Ll/B0;->e:I

    if-ne v5, v10, :cond_a

    move v5, v10

    goto :goto_7

    :cond_a
    if-ne v5, v9, :cond_b

    iget-object v5, p0, Ll/B0;->t:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_b
    :goto_7
    if-ne v8, v10, :cond_10

    if-eqz v3, :cond_c

    move v8, v1

    goto :goto_8

    :cond_c
    move v8, v10

    :goto_8
    if-eqz v3, :cond_e

    iget v1, p0, Ll/B0;->e:I

    if-ne v1, v10, :cond_d

    move v1, v10

    goto :goto_9

    :cond_d
    move v1, v0

    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_e
    iget v1, p0, Ll/B0;->e:I

    if-ne v1, v10, :cond_f

    move v0, v10

    :cond_f
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_10
    if-ne v8, v9, :cond_11

    move v8, v1

    :cond_11
    :goto_a
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v3, p0, Ll/B0;->t:Landroid/view/View;

    iget v4, p0, Ll/B0;->f:I

    iget v0, p0, Ll/B0;->l:I

    if-gez v5, :cond_12

    move v6, v10

    goto :goto_b

    :cond_12
    move v6, v5

    :goto_b
    if-gez v8, :cond_13

    move v7, v10

    goto :goto_c

    :cond_13
    move v7, v8

    :goto_c
    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_11

    :cond_14
    iget v0, p0, Ll/B0;->e:I

    if-ne v0, v10, :cond_15

    move v0, v10

    goto :goto_d

    :cond_15
    if-ne v0, v9, :cond_16

    iget-object v0, p0, Ll/B0;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_16
    :goto_d
    if-ne v8, v10, :cond_17

    move v8, v10

    goto :goto_e

    :cond_17
    if-ne v8, v9, :cond_18

    move v8, v1

    :cond_18
    :goto_e
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ListPopupWindow"

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_19

    sget-object v0, Ll/B0;->E:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_19
    invoke-static {v2, v4}, Ll/y0;->b(Landroid/widget/PopupWindow;Z)V

    :cond_1a
    :goto_f
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Ll/B0;->w:LL1/b;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Ll/B0;->p:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Ll/B0;->o:Z

    invoke-static {v2, v0}, LS/l;->c(Landroid/widget/PopupWindow;Z)V

    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v3, :cond_1c

    sget-object v0, Ll/B0;->F:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    :try_start_1
    iget-object v3, p0, Ll/B0;->B:Landroid/graphics/Rect;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    const-string v3, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_1c
    iget-object v0, p0, Ll/B0;->B:Landroid/graphics/Rect;

    invoke-static {v2, v0}, Ll/y0;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    :cond_1d
    :goto_10
    iget-object v0, p0, Ll/B0;->t:Landroid/view/View;

    iget v1, p0, Ll/B0;->f:I

    iget v3, p0, Ll/B0;->l:I

    iget v5, p0, Ll/B0;->q:I

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Ll/B0;->C:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v0}, Ll/q0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    iget-object v0, p0, Ll/B0;->c:Ll/q0;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v4}, Ll/q0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1f
    iget-boolean v0, p0, Ll/B0;->C:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Ll/B0;->z:Landroid/os/Handler;

    iget-object v1, p0, Ll/B0;->y:Ll/z0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    :goto_11
    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Ll/B0;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll/B0;->n:Z

    return-void
.end method

.method public final l()Ll/q0;
    .locals 1

    iget-object v0, p0, Ll/B0;->c:Ll/q0;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-boolean v0, p0, Ll/B0;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Ll/B0;->l:I

    return v0
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Ll/B0;->s:LI0/i;

    if-nez v0, :cond_0

    new-instance v0, LI0/i;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LI0/i;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ll/B0;->s:LI0/i;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ll/B0;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Ll/B0;->b:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Ll/B0;->s:LI0/i;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Ll/B0;->c:Ll/q0;

    if-eqz p1, :cond_3

    iget-object v0, p0, Ll/B0;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public q(Landroid/content/Context;Z)Ll/q0;
    .locals 1

    new-instance v0, Ll/q0;

    invoke-direct {v0, p1, p2}, Ll/q0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final r(I)V
    .locals 2

    iget-object v0, p0, Ll/B0;->D:Ll/z;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll/B0;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Ll/B0;->e:I

    goto :goto_0

    :cond_0
    iput p1, p0, Ll/B0;->e:I

    :goto_0
    return-void
.end method
