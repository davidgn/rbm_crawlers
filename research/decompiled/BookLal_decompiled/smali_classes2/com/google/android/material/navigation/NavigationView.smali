.class public Lcom/google/android/material/navigation/NavigationView;
.super Ls2/t;
.source "SourceFile"


# static fields
.field public static final x:[I

.field public static final y:[I


# instance fields
.field public final f:Ls2/f;

.field public final l:Ls2/p;

.field public m:Lu2/l;

.field public final n:I

.field public final o:[I

.field public p:Lj/i;

.field public final q:Lk/d;

.field public r:Z

.field public s:Z

.field public final t:I

.field public final u:I

.field public v:Landroid/graphics/Path;

.field public final w:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->x:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->y:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const v9, 0x7f040333

    const v10, 0x7f120308

    move-object/from16 v1, p1

    invoke-static {v1, v7, v9, v10}, LC2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v0, v11, v7, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Ls2/t;->c:Landroid/graphics/Rect;

    const/4 v12, 0x1

    iput-boolean v12, v0, Ls2/t;->d:Z

    iput-boolean v12, v0, Ls2/t;->e:Z

    sget-object v13, Le2/a;->C:[I

    const/4 v14, 0x0

    new-array v6, v14, [I

    const v15, 0x7f120309

    invoke-static {v11, v7, v9, v15}, Ls2/A;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v11

    move-object/from16 v2, p2

    move-object v3, v13

    move v4, v9

    move v5, v15

    invoke-static/range {v1 .. v6}, Ls2/A;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v11, v7, v13, v9, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Ls2/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Ls2/s;

    invoke-direct {v1, v0}, Ls2/s;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, LM/N;->u(Landroid/view/View;LM/x;)V

    new-instance v11, Ls2/p;

    invoke-direct {v11}, Ls2/p;-><init>()V

    iput-object v11, v0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    const/4 v13, 0x2

    new-array v1, v13, [I

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->o:[I

    iput-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->r:Z

    iput-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->s:Z

    iput v14, v0, Lcom/google/android/material/navigation/NavigationView;->t:I

    iput v14, v0, Lcom/google/android/material/navigation/NavigationView;->u:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->w:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v6, Ls2/f;

    invoke-direct {v6, v15}, Lk/m;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/navigation/NavigationView;->f:Ls2/f;

    sget-object v3, Le2/a;->A:[I

    const v5, 0x7f120308

    new-array v4, v14, [I

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v16, v4

    move v4, v9

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Ls2/A;->g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)LJ2/e;

    move-result-object v1

    iget-object v2, v1, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/TypedArray;

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v12}, LJ2/e;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->u:I

    invoke-virtual {v2, v14, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->t:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {v15, v7, v9, v10}, Lz2/k;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lz2/j;

    move-result-object v3

    invoke-virtual {v3}, Lz2/j;->a()Lz2/k;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lz2/g;

    invoke-direct {v5, v3}, Lz2/g;-><init>(Lz2/k;)V

    instance-of v3, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v5, v3}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {v5, v15}, Lz2/g;->i(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    :cond_4
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->n:I

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v1, v3}, LJ2/e;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v5

    :goto_0
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v14

    :goto_1
    const v6, 0x1010038

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_7
    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v1, v7}, LJ2/e;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_2
    const/16 v7, 0x17

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v2, v7, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_3

    :cond_9
    move v7, v14

    :goto_3
    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v2, v9, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_a
    const/16 v9, 0x18

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v1, v9}, LJ2/e;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_b
    if-nez v7, :cond_c

    if-nez v5, :cond_c

    const v5, 0x1010036

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_c
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, LJ2/e;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_d

    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    const/16 v12, 0x11

    if-nez v13, :cond_e

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_4

    :cond_d
    move-object/from16 p2, v5

    goto :goto_5

    :cond_e
    :goto_4
    invoke-virtual {v2, v10, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v2, v12, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    new-instance v12, Lz2/g;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v8, Lz2/a;

    move-object/from16 p2, v5

    int-to-float v5, v14

    invoke-direct {v8, v5}, Lz2/a;-><init>(F)V

    invoke-static {v13, v9, v10, v8}, Lz2/k;->a(Landroid/content/Context;IILz2/a;)Lz2/j;

    move-result-object v5

    invoke-virtual {v5}, Lz2/j;->a()Lz2/k;

    move-result-object v5

    invoke-direct {v12, v5}, Lz2/g;-><init>(Lz2/k;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v8, 0x12

    invoke-static {v5, v1, v8}, Landroid/support/v4/media/session/a;->l(Landroid/content/Context;LJ2/e;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v12, v5}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    const/16 v5, 0x15

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    const/16 v5, 0x16

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    const/16 v5, 0x14

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    const/16 v5, 0x13

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    new-instance v9, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v18, v9

    move-object/from16 v19, v12

    invoke-direct/range {v18 .. v23}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_5
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    :cond_f
    const/16 v5, 0x19

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    :cond_10
    const/4 v5, 0x6

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    const/16 v5, 0x1f

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    const/16 v5, 0x1e

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    iget-boolean v5, v0, Lcom/google/android/material/navigation/NavigationView;->r:Z

    const/16 v8, 0x21

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    iget-boolean v5, v0, Lcom/google/android/material/navigation/NavigationView;->s:Z

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v8, 0xf

    const/4 v10, 0x1

    invoke-virtual {v2, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    new-instance v8, Ls2/s;

    invoke-direct {v8, v0}, Ls2/s;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    move-object/from16 v12, v17

    iput-object v8, v12, Lk/m;->e:Lk/k;

    iput v10, v11, Ls2/p;->d:I

    invoke-virtual {v11, v15, v12}, Ls2/p;->k(Landroid/content/Context;Lk/m;)V

    if-eqz v4, :cond_11

    iput v4, v11, Ls2/p;->l:I

    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    :cond_11
    iput-object v3, v11, Ls2/p;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    iput-object v6, v11, Ls2/p;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v3

    iput v3, v11, Ls2/p;->D:I

    iget-object v4, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v4, :cond_12

    invoke-virtual {v4, v3}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_12
    if-eqz v7, :cond_13

    iput v7, v11, Ls2/p;->n:I

    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    :cond_13
    move-object/from16 v3, p2

    iput-object v3, v11, Ls2/p;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    iput-object v9, v11, Ls2/p;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    iput v5, v11, Ls2/p;->t:I

    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    iget-object v3, v12, Lk/m;->a:Landroid/content/Context;

    invoke-virtual {v12, v11, v3}, Lk/m;->b(Lk/z;Landroid/content/Context;)V

    iget-object v3, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v3, :cond_16

    iget-object v3, v11, Ls2/p;->f:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0055

    invoke-virtual {v3, v4, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v3, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    new-instance v4, Ls2/m;

    iget-object v5, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v4, v11, v5}, Ls2/m;-><init>(Ls2/p;Lcom/google/android/material/internal/NavigationMenuView;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lu0/X;)V

    iget-object v3, v11, Ls2/p;->e:Ls2/h;

    if-nez v3, :cond_14

    new-instance v3, Ls2/h;

    invoke-direct {v3, v11}, Ls2/h;-><init>(Ls2/p;)V

    iput-object v3, v11, Ls2/p;->e:Ls2/h;

    :cond_14
    iget v3, v11, Ls2/p;->D:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    iget-object v4, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_15
    iget-object v3, v11, Ls2/p;->f:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0052

    iget-object v5, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3, v4, v5, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v11, Ls2/p;->b:Landroid/widget/LinearLayout;

    iget-object v3, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v4, v11, Ls2/p;->e:Ls2/h;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    :cond_16
    iget-object v3, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iget-object v4, v11, Ls2/p;->e:Ls2/h;

    if-eqz v4, :cond_17

    const/4 v5, 0x1

    iput-boolean v5, v4, Ls2/h;->f:Z

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v12}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v3, v11, Ls2/p;->e:Ls2/h;

    if-eqz v3, :cond_18

    iput-boolean v14, v3, Ls2/h;->f:Z

    :cond_18
    invoke-virtual {v11, v14}, Ls2/p;->g(Z)V

    :cond_19
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iget-object v3, v11, Ls2/p;->f:Landroid/view/LayoutInflater;

    iget-object v4, v11, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v3, v11, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v11, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v14, v14, v14, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1a
    invoke-virtual {v1}, LJ2/e;->M()V

    new-instance v1, Lk/d;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lk/d;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->q:Lk/d;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->q:Lk/d;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lj/i;

    if-nez v0, :cond_0

    new-instance v0, Lj/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lj/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lj/i;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Lj/i;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/content/res/ColorStateList;
    .locals 6

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, LC/i;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f04012b

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/google/android/material/navigation/NavigationView;->y:[I

    sget-object v4, Lcom/google/android/material/navigation/NavigationView;->x:[I

    sget-object v5, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    filled-new-array {v3, v4, v5}, [[I

    move-result-object v4

    invoke-virtual {p1, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-direct {v2, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->e:Ls2/h;

    iget-object v0, v0, Ls2/h;->e:Lk/o;

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v0, v0, Ls2/p;->w:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v0, v0, Ls2/p;->v:I

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v0, v0, Ls2/p;->r:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v0, v0, Ls2/p;->t:I

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v0, v0, Ls2/p;->A:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v0, v0, Ls2/p;->s:I

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Ls2/f;

    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v0, v0, Ls2/p;->x:I

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Ls2/t;->onAttachedToWindow()V

    invoke-static {p0}, La/a;->F(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Ls2/t;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->q:Lk/d;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/google/android/material/navigation/NavigationView;->n:I

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lu2/m;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lu2/m;

    iget-object v0, p1, LV/b;->a:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Ls2/f;

    iget-object p1, p1, Lu2/m;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lk/m;->t(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lu2/m;

    invoke-direct {v1, v0}, LV/b;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lu2/m;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->f:Ls2/f;

    invoke-virtual {v2, v0}, Lk/m;->v(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView;->w:Landroid/graphics/RectF;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/google/android/material/navigation/NavigationView;->u:I

    if-lez p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    instance-of p4, p4, Lz2/g;

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lz2/g;

    iget-object v0, p4, Lz2/g;->a:Lz2/f;

    iget-object v0, v0, Lz2/f;->a:Lz2/k;

    invoke-virtual {v0}, Lz2/k;->e()Lz2/j;

    move-result-object v0

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->t:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    int-to-float p3, p3

    new-instance v1, Lz2/a;

    invoke-direct {v1, p3}, Lz2/a;-><init>(F)V

    iput-object v1, v0, Lz2/j;->f:Lz2/c;

    new-instance v1, Lz2/a;

    invoke-direct {v1, p3}, Lz2/a;-><init>(F)V

    iput-object v1, v0, Lz2/j;->g:Lz2/c;

    goto :goto_0

    :cond_0
    int-to-float p3, p3

    new-instance v1, Lz2/a;

    invoke-direct {v1, p3}, Lz2/a;-><init>(F)V

    iput-object v1, v0, Lz2/j;->e:Lz2/c;

    new-instance v1, Lz2/a;

    invoke-direct {v1, p3}, Lz2/a;-><init>(F)V

    iput-object v1, v0, Lz2/j;->h:Lz2/c;

    :goto_0
    invoke-virtual {v0}, Lz2/j;->a()Lz2/k;

    move-result-object p3

    invoke-virtual {p4, p3}, Lz2/g;->setShapeAppearanceModel(Lz2/k;)V

    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroid/graphics/Path;

    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroid/graphics/Path;

    :cond_1
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {v3, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lz2/l;->a:Lz2/m;

    iget-object p1, p4, Lz2/g;->a:Lz2/f;

    iget-object v1, p1, Lz2/f;->a:Lz2/k;

    iget v2, p1, Lz2/f;->i:F

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lz2/m;->a(Lz2/k;FLandroid/graphics/RectF;Lj1/a;Landroid/graphics/Path;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    :goto_1
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->s:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Ls2/f;

    invoke-virtual {v0, p1}, Lk/m;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lk/o;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->e:Ls2/h;

    .line 4
    invoke-virtual {v0, p1}, Ls2/h;->i(Lk/o;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Ls2/f;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lk/m;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Lk/o;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->e:Ls2/h;

    .line 8
    invoke-virtual {v0, p1}, Ls2/h;->i(Lk/o;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->w:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->v:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, La/a;->A(Landroid/view/ViewGroup;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput-object p1, v0, Ls2/p;->q:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->r:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->r:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->t:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->t:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget v1, v0, Ls2/p;->u:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Ls2/p;->u:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Ls2/p;->y:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput-object p1, v0, Ls2/p;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->A:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->n:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput-object p1, v0, Ls2/p;->o:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->s:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->s:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lu2/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->m:Lu2/l;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    if-eqz v0, :cond_0

    iput p1, v0, Ls2/p;->D:I

    iget-object v0, v0, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->x:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iput p1, v0, Ls2/p;->x:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ls2/p;->g(Z)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->r:Z

    return-void
.end method
