.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static w:Lx/q;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lu/e;

.field public d:I

.field public e:I

.field public f:I

.field public l:I

.field public m:Z

.field public n:I

.field public o:Lx/m;

.field public p:Lj3/G;

.field public q:I

.field public r:Ljava/util/HashMap;

.field public final s:Landroid/util/SparseArray;

.field public final t:Lx/e;

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lu/e;

    invoke-direct {p1}, Lu/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lx/m;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lj3/G;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Lx/e;

    invoke-direct {v0, p0, p0}, Lx/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/e;

    .line 17
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 18
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:I

    .line 19
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Lu/e;

    invoke-direct {p1}, Lu/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    const/16 v0, 0x101

    .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lx/m;

    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lj3/G;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Lx/e;

    invoke-direct {v0, p0, p0}, Lx/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/e;

    .line 36
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 37
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:I

    .line 38
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static g()Lx/d;
    .locals 8

    new-instance v0, Lx/d;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, -0x1

    iput v1, v0, Lx/d;->a:I

    iput v1, v0, Lx/d;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lx/d;->c:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lx/d;->d:Z

    iput v1, v0, Lx/d;->e:I

    iput v1, v0, Lx/d;->f:I

    iput v1, v0, Lx/d;->g:I

    iput v1, v0, Lx/d;->h:I

    iput v1, v0, Lx/d;->i:I

    iput v1, v0, Lx/d;->j:I

    iput v1, v0, Lx/d;->k:I

    iput v1, v0, Lx/d;->l:I

    iput v1, v0, Lx/d;->m:I

    iput v1, v0, Lx/d;->n:I

    iput v1, v0, Lx/d;->o:I

    iput v1, v0, Lx/d;->p:I

    const/4 v4, 0x0

    iput v4, v0, Lx/d;->q:I

    const/4 v5, 0x0

    iput v5, v0, Lx/d;->r:F

    iput v1, v0, Lx/d;->s:I

    iput v1, v0, Lx/d;->t:I

    iput v1, v0, Lx/d;->u:I

    iput v1, v0, Lx/d;->v:I

    const/high16 v5, -0x80000000

    iput v5, v0, Lx/d;->w:I

    iput v5, v0, Lx/d;->x:I

    iput v5, v0, Lx/d;->y:I

    iput v5, v0, Lx/d;->z:I

    iput v5, v0, Lx/d;->A:I

    iput v5, v0, Lx/d;->B:I

    iput v5, v0, Lx/d;->C:I

    iput v4, v0, Lx/d;->D:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Lx/d;->E:F

    iput v6, v0, Lx/d;->F:F

    const/4 v7, 0x0

    iput-object v7, v0, Lx/d;->G:Ljava/lang/String;

    iput v2, v0, Lx/d;->H:F

    iput v2, v0, Lx/d;->I:F

    iput v4, v0, Lx/d;->J:I

    iput v4, v0, Lx/d;->K:I

    iput v4, v0, Lx/d;->L:I

    iput v4, v0, Lx/d;->M:I

    iput v4, v0, Lx/d;->N:I

    iput v4, v0, Lx/d;->O:I

    iput v4, v0, Lx/d;->P:I

    iput v4, v0, Lx/d;->Q:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lx/d;->R:F

    iput v2, v0, Lx/d;->S:F

    iput v1, v0, Lx/d;->T:I

    iput v1, v0, Lx/d;->U:I

    iput v1, v0, Lx/d;->V:I

    iput-boolean v4, v0, Lx/d;->W:Z

    iput-boolean v4, v0, Lx/d;->X:Z

    iput-object v7, v0, Lx/d;->Y:Ljava/lang/String;

    iput v4, v0, Lx/d;->Z:I

    iput-boolean v3, v0, Lx/d;->a0:Z

    iput-boolean v3, v0, Lx/d;->b0:Z

    iput-boolean v4, v0, Lx/d;->c0:Z

    iput-boolean v4, v0, Lx/d;->d0:Z

    iput-boolean v4, v0, Lx/d;->e0:Z

    iput v1, v0, Lx/d;->f0:I

    iput v1, v0, Lx/d;->g0:I

    iput v1, v0, Lx/d;->h0:I

    iput v1, v0, Lx/d;->i0:I

    iput v5, v0, Lx/d;->j0:I

    iput v5, v0, Lx/d;->k0:I

    iput v6, v0, Lx/d;->l0:F

    new-instance v1, Lu/d;

    invoke-direct {v1}, Lu/d;-><init>()V

    iput-object v1, v0, Lx/d;->p0:Lu/d;

    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static getSharedValues()Lx/q;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:Lx/q;

    if-nez v0, :cond_0

    new-instance v0, Lx/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:Lx/q;

    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:Lx/q;

    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lx/d;

    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v3

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Lx/d;

    move-result-object v0

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 12

    .line 1
    new-instance v0, Lx/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Lx/d;->a:I

    .line 4
    iput v2, v0, Lx/d;->b:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 5
    iput v3, v0, Lx/d;->c:F

    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v0, Lx/d;->d:Z

    .line 7
    iput v2, v0, Lx/d;->e:I

    .line 8
    iput v2, v0, Lx/d;->f:I

    .line 9
    iput v2, v0, Lx/d;->g:I

    .line 10
    iput v2, v0, Lx/d;->h:I

    .line 11
    iput v2, v0, Lx/d;->i:I

    .line 12
    iput v2, v0, Lx/d;->j:I

    .line 13
    iput v2, v0, Lx/d;->k:I

    .line 14
    iput v2, v0, Lx/d;->l:I

    .line 15
    iput v2, v0, Lx/d;->m:I

    .line 16
    iput v2, v0, Lx/d;->n:I

    .line 17
    iput v2, v0, Lx/d;->o:I

    .line 18
    iput v2, v0, Lx/d;->p:I

    const/4 v5, 0x0

    .line 19
    iput v5, v0, Lx/d;->q:I

    const/4 v6, 0x0

    .line 20
    iput v6, v0, Lx/d;->r:F

    .line 21
    iput v2, v0, Lx/d;->s:I

    .line 22
    iput v2, v0, Lx/d;->t:I

    .line 23
    iput v2, v0, Lx/d;->u:I

    .line 24
    iput v2, v0, Lx/d;->v:I

    const/high16 v7, -0x80000000

    .line 25
    iput v7, v0, Lx/d;->w:I

    .line 26
    iput v7, v0, Lx/d;->x:I

    .line 27
    iput v7, v0, Lx/d;->y:I

    .line 28
    iput v7, v0, Lx/d;->z:I

    .line 29
    iput v7, v0, Lx/d;->A:I

    .line 30
    iput v7, v0, Lx/d;->B:I

    .line 31
    iput v7, v0, Lx/d;->C:I

    .line 32
    iput v5, v0, Lx/d;->D:I

    const/high16 v8, 0x3f000000    # 0.5f

    .line 33
    iput v8, v0, Lx/d;->E:F

    .line 34
    iput v8, v0, Lx/d;->F:F

    const/4 v9, 0x0

    .line 35
    iput-object v9, v0, Lx/d;->G:Ljava/lang/String;

    .line 36
    iput v3, v0, Lx/d;->H:F

    .line 37
    iput v3, v0, Lx/d;->I:F

    .line 38
    iput v5, v0, Lx/d;->J:I

    .line 39
    iput v5, v0, Lx/d;->K:I

    .line 40
    iput v5, v0, Lx/d;->L:I

    .line 41
    iput v5, v0, Lx/d;->M:I

    .line 42
    iput v5, v0, Lx/d;->N:I

    .line 43
    iput v5, v0, Lx/d;->O:I

    .line 44
    iput v5, v0, Lx/d;->P:I

    .line 45
    iput v5, v0, Lx/d;->Q:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 46
    iput v3, v0, Lx/d;->R:F

    .line 47
    iput v3, v0, Lx/d;->S:F

    .line 48
    iput v2, v0, Lx/d;->T:I

    .line 49
    iput v2, v0, Lx/d;->U:I

    .line 50
    iput v2, v0, Lx/d;->V:I

    .line 51
    iput-boolean v5, v0, Lx/d;->W:Z

    .line 52
    iput-boolean v5, v0, Lx/d;->X:Z

    .line 53
    iput-object v9, v0, Lx/d;->Y:Ljava/lang/String;

    .line 54
    iput v5, v0, Lx/d;->Z:I

    .line 55
    iput-boolean v4, v0, Lx/d;->a0:Z

    .line 56
    iput-boolean v4, v0, Lx/d;->b0:Z

    .line 57
    iput-boolean v5, v0, Lx/d;->c0:Z

    .line 58
    iput-boolean v5, v0, Lx/d;->d0:Z

    .line 59
    iput-boolean v5, v0, Lx/d;->e0:Z

    .line 60
    iput v2, v0, Lx/d;->f0:I

    .line 61
    iput v2, v0, Lx/d;->g0:I

    .line 62
    iput v2, v0, Lx/d;->h0:I

    .line 63
    iput v2, v0, Lx/d;->i0:I

    .line 64
    iput v7, v0, Lx/d;->j0:I

    .line 65
    iput v7, v0, Lx/d;->k0:I

    .line 66
    iput v8, v0, Lx/d;->l0:F

    .line 67
    new-instance v3, Lu/d;

    invoke-direct {v3}, Lu/d;-><init>()V

    iput-object v3, v0, Lx/d;->p0:Lu/d;

    .line 68
    sget-object v3, Lx/p;->b:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_1

    .line 70
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 71
    sget-object v8, Lx/c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 72
    const-string v9, "ConstraintLayout"

    const/4 v10, 0x2

    const/4 v11, -0x2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_1

    .line 73
    :pswitch_0
    iget-boolean v8, v0, Lx/d;->d:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lx/d;->d:Z

    goto/16 :goto_1

    .line 74
    :pswitch_1
    iget v8, v0, Lx/d;->Z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->Z:I

    goto/16 :goto_1

    .line 75
    :pswitch_2
    invoke-static {v0, p1, v7, v4}, Lx/m;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 76
    :pswitch_3
    invoke-static {v0, p1, v7, v5}, Lx/m;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 77
    :pswitch_4
    iget v8, v0, Lx/d;->C:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->C:I

    goto/16 :goto_1

    .line 78
    :pswitch_5
    iget v8, v0, Lx/d;->D:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->D:I

    goto/16 :goto_1

    .line 79
    :pswitch_6
    iget v8, v0, Lx/d;->o:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->o:I

    if-ne v8, v2, :cond_0

    .line 80
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->o:I

    goto/16 :goto_1

    .line 81
    :pswitch_7
    iget v8, v0, Lx/d;->n:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->n:I

    if-ne v8, v2, :cond_0

    .line 82
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->n:I

    goto/16 :goto_1

    .line 83
    :pswitch_8
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lx/d;->Y:Ljava/lang/String;

    goto/16 :goto_1

    .line 84
    :pswitch_9
    iget v8, v0, Lx/d;->U:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lx/d;->U:I

    goto/16 :goto_1

    .line 85
    :pswitch_a
    iget v8, v0, Lx/d;->T:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lx/d;->T:I

    goto/16 :goto_1

    .line 86
    :pswitch_b
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->K:I

    goto/16 :goto_1

    .line 87
    :pswitch_c
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->J:I

    goto/16 :goto_1

    .line 88
    :pswitch_d
    iget v8, v0, Lx/d;->I:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lx/d;->I:F

    goto/16 :goto_1

    .line 89
    :pswitch_e
    iget v8, v0, Lx/d;->H:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lx/d;->H:F

    goto/16 :goto_1

    .line 90
    :pswitch_f
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lx/m;->h(Lx/d;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_10
    iget v8, v0, Lx/d;->S:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lx/d;->S:F

    .line 92
    iput v10, v0, Lx/d;->M:I

    goto/16 :goto_1

    .line 93
    :pswitch_11
    :try_start_0
    iget v8, v0, Lx/d;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lx/d;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 94
    :catch_0
    iget v8, v0, Lx/d;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 95
    iput v11, v0, Lx/d;->Q:I

    goto/16 :goto_1

    .line 96
    :pswitch_12
    :try_start_1
    iget v8, v0, Lx/d;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lx/d;->O:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 97
    :catch_1
    iget v8, v0, Lx/d;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 98
    iput v11, v0, Lx/d;->O:I

    goto/16 :goto_1

    .line 99
    :pswitch_13
    iget v8, v0, Lx/d;->R:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lx/d;->R:F

    .line 100
    iput v10, v0, Lx/d;->L:I

    goto/16 :goto_1

    .line 101
    :pswitch_14
    :try_start_2
    iget v8, v0, Lx/d;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lx/d;->P:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 102
    :catch_2
    iget v8, v0, Lx/d;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 103
    iput v11, v0, Lx/d;->P:I

    goto/16 :goto_1

    .line 104
    :pswitch_15
    :try_start_3
    iget v8, v0, Lx/d;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lx/d;->N:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 105
    :catch_3
    iget v8, v0, Lx/d;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 106
    iput v11, v0, Lx/d;->N:I

    goto/16 :goto_1

    .line 107
    :pswitch_16
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->M:I

    if-ne v7, v4, :cond_0

    .line 108
    const-string v7, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 109
    :pswitch_17
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->L:I

    if-ne v7, v4, :cond_0

    .line 110
    const-string v7, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 111
    :pswitch_18
    iget v8, v0, Lx/d;->F:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lx/d;->F:F

    goto/16 :goto_1

    .line 112
    :pswitch_19
    iget v8, v0, Lx/d;->E:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lx/d;->E:F

    goto/16 :goto_1

    .line 113
    :pswitch_1a
    iget-boolean v8, v0, Lx/d;->X:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lx/d;->X:Z

    goto/16 :goto_1

    .line 114
    :pswitch_1b
    iget-boolean v8, v0, Lx/d;->W:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lx/d;->W:Z

    goto/16 :goto_1

    .line 115
    :pswitch_1c
    iget v8, v0, Lx/d;->B:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->B:I

    goto/16 :goto_1

    .line 116
    :pswitch_1d
    iget v8, v0, Lx/d;->A:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->A:I

    goto/16 :goto_1

    .line 117
    :pswitch_1e
    iget v8, v0, Lx/d;->z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->z:I

    goto/16 :goto_1

    .line 118
    :pswitch_1f
    iget v8, v0, Lx/d;->y:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->y:I

    goto/16 :goto_1

    .line 119
    :pswitch_20
    iget v8, v0, Lx/d;->x:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->x:I

    goto/16 :goto_1

    .line 120
    :pswitch_21
    iget v8, v0, Lx/d;->w:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->w:I

    goto/16 :goto_1

    .line 121
    :pswitch_22
    iget v8, v0, Lx/d;->v:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->v:I

    if-ne v8, v2, :cond_0

    .line 122
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->v:I

    goto/16 :goto_1

    .line 123
    :pswitch_23
    iget v8, v0, Lx/d;->u:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->u:I

    if-ne v8, v2, :cond_0

    .line 124
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->u:I

    goto/16 :goto_1

    .line 125
    :pswitch_24
    iget v8, v0, Lx/d;->t:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->t:I

    if-ne v8, v2, :cond_0

    .line 126
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->t:I

    goto/16 :goto_1

    .line 127
    :pswitch_25
    iget v8, v0, Lx/d;->s:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->s:I

    if-ne v8, v2, :cond_0

    .line 128
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->s:I

    goto/16 :goto_1

    .line 129
    :pswitch_26
    iget v8, v0, Lx/d;->m:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->m:I

    if-ne v8, v2, :cond_0

    .line 130
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->m:I

    goto/16 :goto_1

    .line 131
    :pswitch_27
    iget v8, v0, Lx/d;->l:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->l:I

    if-ne v8, v2, :cond_0

    .line 132
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->l:I

    goto/16 :goto_1

    .line 133
    :pswitch_28
    iget v8, v0, Lx/d;->k:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->k:I

    if-ne v8, v2, :cond_0

    .line 134
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->k:I

    goto/16 :goto_1

    .line 135
    :pswitch_29
    iget v8, v0, Lx/d;->j:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->j:I

    if-ne v8, v2, :cond_0

    .line 136
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->j:I

    goto/16 :goto_1

    .line 137
    :pswitch_2a
    iget v8, v0, Lx/d;->i:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->i:I

    if-ne v8, v2, :cond_0

    .line 138
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->i:I

    goto/16 :goto_1

    .line 139
    :pswitch_2b
    iget v8, v0, Lx/d;->h:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->h:I

    if-ne v8, v2, :cond_0

    .line 140
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->h:I

    goto/16 :goto_1

    .line 141
    :pswitch_2c
    iget v8, v0, Lx/d;->g:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->g:I

    if-ne v8, v2, :cond_0

    .line 142
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->g:I

    goto/16 :goto_1

    .line 143
    :pswitch_2d
    iget v8, v0, Lx/d;->f:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->f:I

    if-ne v8, v2, :cond_0

    .line 144
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->f:I

    goto :goto_1

    .line 145
    :pswitch_2e
    iget v8, v0, Lx/d;->e:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->e:I

    if-ne v8, v2, :cond_0

    .line 146
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->e:I

    goto :goto_1

    .line 147
    :pswitch_2f
    iget v8, v0, Lx/d;->c:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lx/d;->c:F

    goto :goto_1

    .line 148
    :pswitch_30
    iget v8, v0, Lx/d;->b:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lx/d;->b:I

    goto :goto_1

    .line 149
    :pswitch_31
    iget v8, v0, Lx/d;->a:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lx/d;->a:I

    goto :goto_1

    .line 150
    :pswitch_32
    iget v8, v0, Lx/d;->r:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    iput v7, v0, Lx/d;->r:F

    cmpg-float v9, v7, v6

    if-gez v9, :cond_0

    sub-float v7, v8, v7

    rem-float/2addr v7, v8

    .line 151
    iput v7, v0, Lx/d;->r:F

    goto :goto_1

    .line 152
    :pswitch_33
    iget v8, v0, Lx/d;->q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lx/d;->q:I

    goto :goto_1

    .line 153
    :pswitch_34
    iget v8, v0, Lx/d;->p:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lx/d;->p:I

    if-ne v8, v2, :cond_0

    .line 154
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->p:I

    goto :goto_1

    .line 155
    :pswitch_35
    iget v8, v0, Lx/d;->V:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lx/d;->V:I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {v0}, Lx/d;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .line 158
    new-instance v0, Lx/d;

    .line 159
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 160
    iput p1, v0, Lx/d;->a:I

    .line 161
    iput p1, v0, Lx/d;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 162
    iput v1, v0, Lx/d;->c:F

    const/4 v2, 0x1

    .line 163
    iput-boolean v2, v0, Lx/d;->d:Z

    .line 164
    iput p1, v0, Lx/d;->e:I

    .line 165
    iput p1, v0, Lx/d;->f:I

    .line 166
    iput p1, v0, Lx/d;->g:I

    .line 167
    iput p1, v0, Lx/d;->h:I

    .line 168
    iput p1, v0, Lx/d;->i:I

    .line 169
    iput p1, v0, Lx/d;->j:I

    .line 170
    iput p1, v0, Lx/d;->k:I

    .line 171
    iput p1, v0, Lx/d;->l:I

    .line 172
    iput p1, v0, Lx/d;->m:I

    .line 173
    iput p1, v0, Lx/d;->n:I

    .line 174
    iput p1, v0, Lx/d;->o:I

    .line 175
    iput p1, v0, Lx/d;->p:I

    const/4 v3, 0x0

    .line 176
    iput v3, v0, Lx/d;->q:I

    const/4 v4, 0x0

    .line 177
    iput v4, v0, Lx/d;->r:F

    .line 178
    iput p1, v0, Lx/d;->s:I

    .line 179
    iput p1, v0, Lx/d;->t:I

    .line 180
    iput p1, v0, Lx/d;->u:I

    .line 181
    iput p1, v0, Lx/d;->v:I

    const/high16 v4, -0x80000000

    .line 182
    iput v4, v0, Lx/d;->w:I

    .line 183
    iput v4, v0, Lx/d;->x:I

    .line 184
    iput v4, v0, Lx/d;->y:I

    .line 185
    iput v4, v0, Lx/d;->z:I

    .line 186
    iput v4, v0, Lx/d;->A:I

    .line 187
    iput v4, v0, Lx/d;->B:I

    .line 188
    iput v4, v0, Lx/d;->C:I

    .line 189
    iput v3, v0, Lx/d;->D:I

    const/high16 v5, 0x3f000000    # 0.5f

    .line 190
    iput v5, v0, Lx/d;->E:F

    .line 191
    iput v5, v0, Lx/d;->F:F

    const/4 v6, 0x0

    .line 192
    iput-object v6, v0, Lx/d;->G:Ljava/lang/String;

    .line 193
    iput v1, v0, Lx/d;->H:F

    .line 194
    iput v1, v0, Lx/d;->I:F

    .line 195
    iput v3, v0, Lx/d;->J:I

    .line 196
    iput v3, v0, Lx/d;->K:I

    .line 197
    iput v3, v0, Lx/d;->L:I

    .line 198
    iput v3, v0, Lx/d;->M:I

    .line 199
    iput v3, v0, Lx/d;->N:I

    .line 200
    iput v3, v0, Lx/d;->O:I

    .line 201
    iput v3, v0, Lx/d;->P:I

    .line 202
    iput v3, v0, Lx/d;->Q:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    iput v1, v0, Lx/d;->R:F

    .line 204
    iput v1, v0, Lx/d;->S:F

    .line 205
    iput p1, v0, Lx/d;->T:I

    .line 206
    iput p1, v0, Lx/d;->U:I

    .line 207
    iput p1, v0, Lx/d;->V:I

    .line 208
    iput-boolean v3, v0, Lx/d;->W:Z

    .line 209
    iput-boolean v3, v0, Lx/d;->X:Z

    .line 210
    iput-object v6, v0, Lx/d;->Y:Ljava/lang/String;

    .line 211
    iput v3, v0, Lx/d;->Z:I

    .line 212
    iput-boolean v2, v0, Lx/d;->a0:Z

    .line 213
    iput-boolean v2, v0, Lx/d;->b0:Z

    .line 214
    iput-boolean v3, v0, Lx/d;->c0:Z

    .line 215
    iput-boolean v3, v0, Lx/d;->d0:Z

    .line 216
    iput-boolean v3, v0, Lx/d;->e0:Z

    .line 217
    iput p1, v0, Lx/d;->f0:I

    .line 218
    iput p1, v0, Lx/d;->g0:I

    .line 219
    iput p1, v0, Lx/d;->h0:I

    .line 220
    iput p1, v0, Lx/d;->i0:I

    .line 221
    iput v4, v0, Lx/d;->j0:I

    .line 222
    iput v4, v0, Lx/d;->k0:I

    .line 223
    iput v5, v0, Lx/d;->l0:F

    .line 224
    new-instance p1, Lu/d;

    invoke-direct {p1}, Lu/d;-><init>()V

    iput-object p1, v0, Lx/d;->p0:Lu/d;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    iget v0, v0, Lu/e;->C0:I

    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    iget-object v2, v1, Lu/d;->j:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lu/d;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "parent"

    iput-object v2, v1, Lu/d;->j:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, v1, Lu/d;->g0:Ljava/lang/String;

    const-string v4, " setDebugName "

    const-string v5, "ConstraintLayout"

    if-nez v2, :cond_2

    iget-object v2, v1, Lu/d;->j:Ljava/lang/String;

    iput-object v2, v1, Lu/d;->g0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lu/d;->g0:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, v1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu/d;

    iget-object v7, v6, Lu/d;->e0:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v8, v6, Lu/d;->j:Ljava/lang/String;

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lu/d;->j:Ljava/lang/String;

    :cond_4
    iget-object v7, v6, Lu/d;->g0:Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, v6, Lu/d;->j:Ljava/lang/String;

    iput-object v7, v6, Lu/d;->g0:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lu/d;->g0:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Lu/e;->l(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Landroid/view/View;)Lu/d;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lx/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lx/d;

    iget-object p1, p1, Lx/d;->p0:Lu/d;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lx/d;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lx/d;

    iget-object p1, p1, Lx/d;->p0:Lu/d;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Landroid/util/AttributeSet;I)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    iput-object p0, v0, Lu/d;->e0:Landroid/view/View;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/e;

    iput-object v1, v0, Lu/e;->t0:Lx/e;

    iget-object v2, v0, Lu/e;->r0:Lv/e;

    iput-object v1, v2, Lv/e;->g:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lx/m;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lx/p;->b:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v2, v4

    :goto_0
    if-ge v2, p2, :cond_7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    goto :goto_2

    :cond_0
    const/16 v5, 0x11

    if-ne v3, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    :cond_1
    const/16 v5, 0xe

    if-ne v3, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_2
    const/16 v5, 0xf

    if-ne v3, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    goto :goto_2

    :cond_3
    const/16 v5, 0x71

    if-ne v3, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    goto :goto_2

    :cond_4
    const/16 v5, 0x38

    if-ne v3, v5, :cond_5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lj3/G;

    goto :goto_2

    :cond_5
    const/16 v5, 0x22

    if-ne v3, v5, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :try_start_1
    new-instance v5, Lx/m;

    invoke-direct {v5}, Lx/m;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lx/m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lx/m;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lx/m;

    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    iput p1, v0, Lu/e;->C0:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lu/e;->S(I)Z

    move-result p1

    sput-boolean p1, Ls/c;->p:Z

    return-void
.end method

.method public final j(I)V
    .locals 9

    new-instance v0, Lj3/G;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lj3/G;-><init>(IZ)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lj3/G;->b:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lj3/G;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    if-eqz v2, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "Variant"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v8

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :sswitch_1
    const-string v4, "layoutDescription"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_2
    const-string v6, "StateSet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v4, "State"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v5

    goto :goto_2

    :sswitch_4
    const-string v4, "ConstraintSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v7

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eq v4, v5, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1, p1}, Lj3/G;->E(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_3

    :cond_3
    new-instance v2, Lx/f;

    invoke-direct {v2, v1, p1}, Lx/f;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v3, :cond_6

    iget-object v4, v3, LJ4/y;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v3, LJ4/y;

    invoke-direct {v3, v1, p1}, LJ4/y;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v2, v0, Lj3/G;->b:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget v4, v3, LJ4/y;->a:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_7
    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lj3/G;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public final k(Lu/e;III)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v7, v9

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v11

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/e;

    iput v7, v12, Lx/e;->b:I

    iput v9, v12, Lx/e;->c:I

    iput v11, v12, Lx/e;->d:I

    iput v10, v12, Lx/e;->e:I

    move/from16 v9, p3

    iput v9, v12, Lx/e;->f:I

    move/from16 v9, p4

    iput v9, v12, Lx/e;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x1

    if-gtz v9, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x400000

    and-int v15, v15, v16

    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v14, v15, :cond_2

    move v9, v13

    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    sub-int/2addr v6, v10

    iget v10, v12, Lx/e;->e:I

    iget v11, v12, Lx/e;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    if-eq v3, v13, :cond_6

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_3

    move/from16 v17, v8

    goto :goto_4

    :cond_3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v14, v11

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move/from16 v17, v14

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    if-nez v12, :cond_5

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    move/from16 v17, v14

    :goto_3
    const/4 v14, 0x2

    goto :goto_4

    :cond_5
    move/from16 v17, v8

    goto :goto_3

    :cond_6
    if-nez v12, :cond_7

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    :cond_7
    move/from16 v17, v4

    goto :goto_3

    :goto_4
    if-eq v5, v13, :cond_b

    if-eqz v5, :cond_9

    if-eq v5, v15, :cond_8

    move v13, v8

    :goto_5
    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    sub-int/2addr v12, v10

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v13, v12

    goto :goto_5

    :cond_9
    if-nez v12, :cond_a

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_6
    move v13, v12

    :goto_7
    const/4 v12, 0x2

    goto :goto_8

    :cond_a
    move v13, v8

    goto :goto_7

    :cond_b
    if-nez v12, :cond_c

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_6

    :cond_c
    move v13, v6

    goto :goto_7

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lu/d;->o()I

    move-result v15

    iget-object v8, v1, Lu/e;->r0:Lv/e;

    move/from16 v19, v6

    move/from16 v6, v17

    if-ne v6, v15, :cond_d

    invoke-virtual/range {p1 .. p1}, Lu/d;->i()I

    move-result v15

    if-eq v13, v15, :cond_e

    :cond_d
    const/4 v15, 0x1

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v15, 0x0

    goto :goto_b

    :goto_a
    iput-boolean v15, v8, Lv/e;->b:Z

    goto :goto_9

    :goto_b
    iput v15, v1, Lu/d;->X:I

    iput v15, v1, Lu/d;->Y:I

    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v15, v11

    move-object/from16 v17, v8

    iget-object v8, v1, Lu/d;->C:[I

    move/from16 v20, v4

    const/4 v4, 0x0

    aput v15, v8, v4

    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    sub-int/2addr v15, v10

    const/16 v18, 0x1

    aput v15, v8, v18

    iput v4, v1, Lu/d;->a0:I

    iput v4, v1, Lu/d;->b0:I

    invoke-virtual {v1, v14}, Lu/d;->I(I)V

    invoke-virtual {v1, v6}, Lu/d;->K(I)V

    invoke-virtual {v1, v12}, Lu/d;->J(I)V

    invoke-virtual {v1, v13}, Lu/d;->H(I)V

    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v6, v11

    if-gez v6, :cond_f

    iput v4, v1, Lu/d;->a0:I

    goto :goto_c

    :cond_f
    iput v6, v1, Lu/d;->a0:I

    :goto_c
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v6, v10

    if-gez v6, :cond_10

    iput v4, v1, Lu/d;->b0:I

    goto :goto_d

    :cond_10
    iput v6, v1, Lu/d;->b0:I

    :goto_d
    iput v9, v1, Lu/e;->w0:I

    iput v7, v1, Lu/e;->x0:I

    iget-object v4, v1, Lu/e;->q0:LJ2/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lu/e;->t0:Lx/e;

    iget-object v7, v1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lu/d;->o()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lu/d;->i()I

    move-result v10

    const/16 v11, 0x80

    invoke-static {v2, v11}, Lu/g;->c(II)Z

    move-result v11

    const/16 v12, 0x40

    if-nez v11, :cond_12

    invoke-static {v2, v12}, Lu/g;->c(II)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v2, 0x1

    :goto_f
    const/4 v13, 0x3

    if-eqz v2, :cond_1a

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v7, :cond_1a

    iget-object v12, v1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lu/d;

    iget-object v14, v12, Lu/d;->o0:[I

    const/16 v18, 0x0

    aget v0, v14, v18

    if-ne v0, v13, :cond_13

    const/4 v0, 0x1

    :goto_11
    const/16 v21, 0x1

    goto :goto_12

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :goto_12
    aget v14, v14, v21

    if-ne v14, v13, :cond_14

    const/4 v14, 0x1

    goto :goto_13

    :cond_14
    const/4 v14, 0x0

    :goto_13
    if-eqz v0, :cond_15

    if-eqz v14, :cond_15

    iget v0, v12, Lu/d;->V:F

    const/4 v14, 0x0

    cmpl-float v0, v0, v14

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_14

    :cond_15
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v12}, Lu/d;->v()Z

    move-result v14

    if-eqz v14, :cond_17

    if-eqz v0, :cond_17

    :cond_16
    :goto_15
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x0

    goto :goto_16

    :cond_17
    invoke-virtual {v12}, Lu/d;->w()Z

    move-result v14

    if-eqz v14, :cond_18

    if-eqz v0, :cond_18

    goto :goto_15

    :cond_18
    invoke-virtual {v12}, Lu/d;->v()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v12}, Lu/d;->w()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_15

    :cond_19
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/16 v12, 0x40

    goto :goto_10

    :cond_1a
    const/high16 v0, 0x40000000    # 2.0f

    :goto_16
    if-ne v3, v0, :cond_1b

    if-eq v5, v0, :cond_1c

    :cond_1b
    if-eqz v11, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    goto :goto_17

    :cond_1d
    const/4 v0, 0x0

    :goto_17
    and-int/2addr v0, v2

    if-eqz v0, :cond_3c

    const/4 v12, 0x0

    aget v14, v8, v12

    move/from16 v12, v20

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v14, 0x1

    aget v8, v8, v14

    move/from16 v15, v19

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lu/d;->o()I

    move-result v13

    if-eq v13, v12, :cond_1e

    invoke-virtual {v1, v12}, Lu/d;->K(I)V

    iget-object v12, v1, Lu/e;->r0:Lv/e;

    iput-boolean v14, v12, Lv/e;->a:Z

    :cond_1e
    if-ne v5, v15, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lu/d;->i()I

    move-result v12

    if-eq v12, v8, :cond_1f

    invoke-virtual {v1, v8}, Lu/d;->H(I)V

    iget-object v8, v1, Lu/e;->r0:Lv/e;

    iput-boolean v14, v8, Lv/e;->a:Z

    :cond_1f
    if-ne v3, v15, :cond_35

    if-ne v5, v15, :cond_35

    move-object/from16 v8, v17

    iget-boolean v12, v8, Lv/e;->a:Z

    iget-object v13, v8, Lv/e;->c:Ljava/lang/Object;

    check-cast v13, Lu/e;

    if-nez v12, :cond_21

    iget-boolean v12, v8, Lv/e;->b:Z

    if-eqz v12, :cond_20

    goto :goto_18

    :cond_20
    const/4 v15, 0x0

    goto :goto_1a

    :cond_21
    :goto_18
    iget-object v12, v13, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_19
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_22

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lu/d;

    invoke-virtual {v14}, Lu/d;->f()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Lu/d;->a:Z

    iget-object v2, v14, Lu/d;->d:Lv/k;

    invoke-virtual {v2}, Lv/k;->n()V

    iget-object v2, v14, Lu/d;->e:Lv/m;

    invoke-virtual {v2}, Lv/m;->m()V

    goto :goto_19

    :cond_22
    const/4 v15, 0x0

    invoke-virtual {v13}, Lu/d;->f()V

    iput-boolean v15, v13, Lu/d;->a:Z

    iget-object v2, v13, Lu/d;->d:Lv/k;

    invoke-virtual {v2}, Lv/k;->n()V

    iget-object v2, v13, Lu/d;->e:Lv/m;

    invoke-virtual {v2}, Lv/m;->m()V

    iput-boolean v15, v8, Lv/e;->b:Z

    :goto_1a
    iget-object v2, v8, Lv/e;->d:Ljava/lang/Object;

    check-cast v2, Lu/e;

    invoke-virtual {v8, v2}, Lv/e;->b(Lu/e;)V

    iput v15, v13, Lu/d;->X:I

    iput v15, v13, Lu/d;->Y:I

    invoke-virtual {v13, v15}, Lu/d;->h(I)I

    move-result v2

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Lu/d;->h(I)I

    move-result v14

    iget-boolean v12, v8, Lv/e;->a:Z

    if-eqz v12, :cond_23

    invoke-virtual {v8}, Lv/e;->c()V

    :cond_23
    invoke-virtual {v13}, Lu/d;->p()I

    move-result v12

    invoke-virtual {v13}, Lu/d;->q()I

    move-result v15

    move-object/from16 v20, v6

    iget-object v6, v13, Lu/d;->d:Lv/k;

    iget-object v6, v6, Lv/o;->h:Lv/f;

    invoke-virtual {v6, v12}, Lv/f;->d(I)V

    iget-object v6, v13, Lu/d;->e:Lv/m;

    iget-object v6, v6, Lv/o;->h:Lv/f;

    invoke-virtual {v6, v15}, Lv/f;->d(I)V

    invoke-virtual {v8}, Lv/e;->g()V

    iget-object v6, v8, Lv/e;->e:Ljava/io/Serializable;

    check-cast v6, Ljava/util/ArrayList;

    move/from16 v21, v0

    const/4 v0, 0x2

    if-eq v2, v0, :cond_26

    if-ne v14, v0, :cond_24

    goto :goto_1b

    :cond_24
    move/from16 v22, v9

    :cond_25
    const/4 v0, 0x1

    goto :goto_1d

    :cond_26
    :goto_1b
    if-eqz v11, :cond_28

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lv/o;

    invoke-virtual/range {v22 .. v22}, Lv/o;->k()Z

    move-result v22

    if-nez v22, :cond_27

    const/4 v11, 0x0

    :cond_28
    if-eqz v11, :cond_29

    const/4 v0, 0x2

    if-ne v2, v0, :cond_29

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lu/d;->I(I)V

    move/from16 v22, v9

    const/4 v0, 0x0

    invoke-virtual {v8, v13, v0}, Lv/e;->d(Lu/e;I)I

    move-result v9

    invoke-virtual {v13, v9}, Lu/d;->K(I)V

    iget-object v0, v13, Lu/d;->d:Lv/k;

    iget-object v0, v0, Lv/o;->e:Lv/g;

    invoke-virtual {v13}, Lu/d;->o()I

    move-result v9

    invoke-virtual {v0, v9}, Lv/g;->d(I)V

    goto :goto_1c

    :cond_29
    move/from16 v22, v9

    :goto_1c
    if-eqz v11, :cond_25

    const/4 v0, 0x2

    if-ne v14, v0, :cond_25

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lu/d;->J(I)V

    invoke-virtual {v8, v13, v0}, Lv/e;->d(Lu/e;I)I

    move-result v9

    invoke-virtual {v13, v9}, Lu/d;->H(I)V

    iget-object v9, v13, Lu/d;->e:Lv/m;

    iget-object v9, v9, Lv/o;->e:Lv/g;

    invoke-virtual {v13}, Lu/d;->i()I

    move-result v11

    invoke-virtual {v9, v11}, Lv/g;->d(I)V

    :goto_1d
    iget-object v9, v13, Lu/d;->o0:[I

    move/from16 v23, v10

    const/4 v11, 0x0

    aget v10, v9, v11

    if-eq v10, v0, :cond_2b

    const/4 v0, 0x4

    if-ne v10, v0, :cond_2a

    goto :goto_1e

    :cond_2a
    const/4 v0, 0x0

    goto :goto_1f

    :cond_2b
    :goto_1e
    invoke-virtual {v13}, Lu/d;->o()I

    move-result v0

    add-int/2addr v0, v12

    iget-object v10, v13, Lu/d;->d:Lv/k;

    iget-object v10, v10, Lv/o;->i:Lv/f;

    invoke-virtual {v10, v0}, Lv/f;->d(I)V

    iget-object v10, v13, Lu/d;->d:Lv/k;

    iget-object v10, v10, Lv/o;->e:Lv/g;

    sub-int/2addr v0, v12

    invoke-virtual {v10, v0}, Lv/g;->d(I)V

    invoke-virtual {v8}, Lv/e;->g()V

    const/4 v0, 0x1

    aget v9, v9, v0

    if-eq v9, v0, :cond_2c

    const/4 v0, 0x4

    if-ne v9, v0, :cond_2d

    :cond_2c
    invoke-virtual {v13}, Lu/d;->i()I

    move-result v0

    add-int/2addr v0, v15

    iget-object v9, v13, Lu/d;->e:Lv/m;

    iget-object v9, v9, Lv/o;->i:Lv/f;

    invoke-virtual {v9, v0}, Lv/f;->d(I)V

    iget-object v9, v13, Lu/d;->e:Lv/m;

    iget-object v9, v9, Lv/o;->e:Lv/g;

    sub-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lv/g;->d(I)V

    :cond_2d
    invoke-virtual {v8}, Lv/e;->g()V

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv/o;

    iget-object v10, v9, Lv/o;->b:Lu/d;

    if-ne v10, v13, :cond_2e

    iget-boolean v10, v9, Lv/o;->g:Z

    if-nez v10, :cond_2e

    goto :goto_20

    :cond_2e
    invoke-virtual {v9}, Lv/o;->e()V

    goto :goto_20

    :cond_2f
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_30
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv/o;

    if-nez v0, :cond_31

    iget-object v9, v8, Lv/o;->b:Lu/d;

    if-ne v9, v13, :cond_31

    goto :goto_21

    :cond_31
    iget-object v9, v8, Lv/o;->h:Lv/f;

    iget-boolean v9, v9, Lv/f;->j:Z

    if-nez v9, :cond_32

    :goto_22
    const/4 v0, 0x0

    goto :goto_23

    :cond_32
    iget-object v9, v8, Lv/o;->i:Lv/f;

    iget-boolean v9, v9, Lv/f;->j:Z

    if-nez v9, :cond_33

    instance-of v9, v8, Lv/i;

    if-nez v9, :cond_33

    goto :goto_22

    :cond_33
    iget-object v9, v8, Lv/o;->e:Lv/g;

    iget-boolean v9, v9, Lv/f;->j:Z

    if-nez v9, :cond_30

    instance-of v9, v8, Lv/c;

    if-nez v9, :cond_30

    instance-of v8, v8, Lv/i;

    if-nez v8, :cond_30

    goto :goto_22

    :cond_34
    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v13, v2}, Lu/d;->I(I)V

    invoke-virtual {v13, v14}, Lu/d;->J(I)V

    move v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x2

    goto/16 :goto_27

    :cond_35
    move/from16 v21, v0

    move-object/from16 v20, v6

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v8, v17

    iget-boolean v0, v8, Lv/e;->a:Z

    iget-object v2, v8, Lv/e;->c:Ljava/lang/Object;

    check-cast v2, Lu/e;

    if-eqz v0, :cond_37

    iget-object v0, v2, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu/d;

    invoke-virtual {v6}, Lu/d;->f()V

    const/4 v9, 0x0

    iput-boolean v9, v6, Lu/d;->a:Z

    iget-object v10, v6, Lu/d;->d:Lv/k;

    iget-object v12, v10, Lv/o;->e:Lv/g;

    iput-boolean v9, v12, Lv/f;->j:Z

    iput-boolean v9, v10, Lv/o;->g:Z

    invoke-virtual {v10}, Lv/k;->n()V

    iget-object v6, v6, Lu/d;->e:Lv/m;

    iget-object v10, v6, Lv/o;->e:Lv/g;

    iput-boolean v9, v10, Lv/f;->j:Z

    iput-boolean v9, v6, Lv/o;->g:Z

    invoke-virtual {v6}, Lv/m;->m()V

    goto :goto_24

    :cond_36
    const/4 v9, 0x0

    invoke-virtual {v2}, Lu/d;->f()V

    iput-boolean v9, v2, Lu/d;->a:Z

    iget-object v0, v2, Lu/d;->d:Lv/k;

    iget-object v6, v0, Lv/o;->e:Lv/g;

    iput-boolean v9, v6, Lv/f;->j:Z

    iput-boolean v9, v0, Lv/o;->g:Z

    invoke-virtual {v0}, Lv/k;->n()V

    iget-object v0, v2, Lu/d;->e:Lv/m;

    iget-object v6, v0, Lv/o;->e:Lv/g;

    iput-boolean v9, v6, Lv/f;->j:Z

    iput-boolean v9, v0, Lv/o;->g:Z

    invoke-virtual {v0}, Lv/m;->m()V

    invoke-virtual {v8}, Lv/e;->c()V

    goto :goto_25

    :cond_37
    const/4 v9, 0x0

    :goto_25
    iget-object v0, v8, Lv/e;->d:Ljava/lang/Object;

    check-cast v0, Lu/e;

    invoke-virtual {v8, v0}, Lv/e;->b(Lu/e;)V

    iput v9, v2, Lu/d;->X:I

    iput v9, v2, Lu/d;->Y:I

    iget-object v0, v2, Lu/d;->d:Lv/k;

    iget-object v0, v0, Lv/o;->h:Lv/f;

    invoke-virtual {v0, v9}, Lv/f;->d(I)V

    iget-object v0, v2, Lu/d;->e:Lv/m;

    iget-object v0, v0, Lv/o;->h:Lv/f;

    invoke-virtual {v0, v9}, Lv/f;->d(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v3, v0, :cond_38

    invoke-virtual {v1, v9, v11}, Lu/e;->P(IZ)Z

    move-result v2

    move v6, v2

    const/4 v2, 0x1

    goto :goto_26

    :cond_38
    const/4 v2, 0x0

    const/4 v6, 0x1

    :goto_26
    if-ne v5, v0, :cond_39

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v11}, Lu/e;->P(IZ)Z

    move-result v9

    and-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    :cond_39
    :goto_27
    if-eqz v6, :cond_3d

    if-ne v3, v0, :cond_3a

    const/4 v3, 0x1

    goto :goto_28

    :cond_3a
    const/4 v3, 0x0

    :goto_28
    if-ne v5, v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_29

    :cond_3b
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v1, v3, v0}, Lu/e;->L(ZZ)V

    goto :goto_2a

    :cond_3c
    move/from16 v21, v0

    move-object/from16 v20, v6

    move/from16 v22, v9

    move/from16 v23, v10

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_3d
    :goto_2a
    if-eqz v6, :cond_3e

    const/4 v0, 0x2

    if-eq v2, v0, :cond_5e

    :cond_3e
    iget v0, v1, Lu/e;->C0:I

    if-lez v7, :cond_4c

    iget-object v2, v1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lu/e;->S(I)Z

    move-result v3

    iget-object v5, v1, Lu/e;->t0:Lx/e;

    const/4 v15, 0x0

    :goto_2b
    if-ge v15, v2, :cond_4a

    iget-object v6, v1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu/d;

    instance-of v8, v6, Lu/f;

    if-eqz v8, :cond_3f

    :goto_2c
    const/4 v8, 0x3

    const/4 v10, 0x0

    goto/16 :goto_31

    :cond_3f
    instance-of v8, v6, Lu/a;

    if-eqz v8, :cond_40

    goto :goto_2c

    :cond_40
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_41

    iget-object v8, v6, Lu/d;->d:Lv/k;

    if-eqz v8, :cond_41

    iget-object v9, v6, Lu/d;->e:Lv/m;

    if-eqz v9, :cond_41

    iget-object v8, v8, Lv/o;->e:Lv/g;

    iget-boolean v8, v8, Lv/f;->j:Z

    if-eqz v8, :cond_41

    iget-object v8, v9, Lv/o;->e:Lv/g;

    iget-boolean v8, v8, Lv/f;->j:Z

    if-eqz v8, :cond_41

    goto :goto_2c

    :cond_41
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lu/d;->h(I)I

    move-result v9

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lu/d;->h(I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v9, v11, :cond_42

    iget v12, v6, Lu/d;->r:I

    if-eq v12, v8, :cond_42

    if-ne v10, v11, :cond_42

    iget v11, v6, Lu/d;->s:I

    if-eq v11, v8, :cond_42

    move v11, v8

    goto :goto_2d

    :cond_42
    const/4 v11, 0x0

    :goto_2d
    if-nez v11, :cond_47

    invoke-virtual {v1, v8}, Lu/e;->S(I)Z

    move-result v12

    if-eqz v12, :cond_47

    const/4 v8, 0x3

    if-ne v9, v8, :cond_43

    iget v12, v6, Lu/d;->r:I

    if-nez v12, :cond_43

    if-eq v10, v8, :cond_43

    invoke-virtual {v6}, Lu/d;->v()Z

    move-result v12

    if-nez v12, :cond_43

    const/4 v11, 0x1

    :cond_43
    if-ne v10, v8, :cond_44

    iget v12, v6, Lu/d;->s:I

    if-nez v12, :cond_44

    if-eq v9, v8, :cond_44

    invoke-virtual {v6}, Lu/d;->v()Z

    move-result v12

    if-nez v12, :cond_44

    const/4 v11, 0x1

    :cond_44
    if-eq v9, v8, :cond_46

    if-ne v10, v8, :cond_45

    goto :goto_2f

    :cond_45
    :goto_2e
    const/4 v10, 0x0

    goto :goto_30

    :cond_46
    :goto_2f
    iget v9, v6, Lu/d;->V:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_48

    const/4 v11, 0x1

    goto :goto_30

    :cond_47
    const/4 v8, 0x3

    goto :goto_2e

    :cond_48
    :goto_30
    if-eqz v11, :cond_49

    goto :goto_31

    :cond_49
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v6, v5}, LJ2/e;->I(ILu/d;Lx/e;)Z

    :goto_31
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2b

    :cond_4a
    iget-object v2, v5, Lx/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v15, 0x0

    :goto_32
    if-ge v15, v3, :cond_4b

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    :cond_4b
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4c

    const/4 v15, 0x0

    :goto_33
    if-ge v15, v3, :cond_4c

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v15, v15, 0x1

    goto :goto_33

    :cond_4c
    invoke-virtual {v4, v1}, LJ2/e;->U(Lu/e;)V

    iget-object v2, v4, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v5, v22

    move/from16 v6, v23

    const/4 v15, 0x0

    if-lez v7, :cond_4d

    invoke-virtual {v4, v1, v15, v5, v6}, LJ2/e;->R(Lu/e;III)V

    :cond_4d
    if-lez v3, :cond_5d

    iget-object v7, v1, Lu/d;->o0:[I

    aget v8, v7, v15

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4e

    const/4 v8, 0x1

    :goto_34
    const/4 v10, 0x1

    goto :goto_35

    :cond_4e
    move v8, v15

    goto :goto_34

    :goto_35
    aget v7, v7, v10

    if-ne v7, v9, :cond_4f

    const/4 v7, 0x1

    goto :goto_36

    :cond_4f
    move v7, v15

    :goto_36
    invoke-virtual/range {p1 .. p1}, Lu/d;->o()I

    move-result v9

    iget-object v10, v4, LJ2/e;->d:Ljava/lang/Object;

    check-cast v10, Lu/e;

    iget v11, v10, Lu/d;->a0:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lu/d;->i()I

    move-result v11

    iget v10, v10, Lu/d;->b0:I

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v15

    :goto_37
    if-ge v11, v3, :cond_50

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lu/d;

    add-int/lit8 v11, v11, 0x1

    goto :goto_37

    :cond_50
    move v12, v15

    const/4 v11, 0x2

    :goto_38
    if-ge v12, v11, :cond_5d

    move v13, v15

    move v14, v13

    :goto_39
    if-ge v13, v3, :cond_5b

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lu/d;

    instance-of v15, v11, Lu/a;

    if-eqz v15, :cond_51

    :goto_3a
    move-object/from16 p2, v2

    goto :goto_3b

    :cond_51
    instance-of v15, v11, Lu/f;

    if-eqz v15, :cond_52

    goto :goto_3a

    :cond_52
    iget v15, v11, Lu/d;->f0:I

    move-object/from16 p2, v2

    const/16 v2, 0x8

    if-ne v15, v2, :cond_53

    goto :goto_3b

    :cond_53
    if-eqz v21, :cond_54

    iget-object v2, v11, Lu/d;->d:Lv/k;

    iget-object v2, v2, Lv/o;->e:Lv/g;

    iget-boolean v2, v2, Lv/f;->j:Z

    if-eqz v2, :cond_54

    iget-object v2, v11, Lu/d;->e:Lv/m;

    iget-object v2, v2, Lv/o;->e:Lv/g;

    iget-boolean v2, v2, Lv/f;->j:Z

    if-eqz v2, :cond_54

    :goto_3b
    move/from16 v19, v0

    move/from16 v16, v3

    move v15, v14

    move-object/from16 v1, v20

    const/4 v14, 0x4

    goto/16 :goto_3f

    :cond_54
    invoke-virtual {v11}, Lu/d;->o()I

    move-result v2

    invoke-virtual {v11}, Lu/d;->i()I

    move-result v15

    move/from16 v16, v3

    iget v3, v11, Lu/d;->Z:I

    move/from16 v19, v0

    const/4 v0, 0x1

    move-object/from16 v1, v20

    if-ne v12, v0, :cond_55

    const/4 v0, 0x2

    :cond_55
    invoke-virtual {v4, v0, v11, v1}, LJ2/e;->I(ILu/d;Lx/e;)Z

    move-result v0

    or-int/2addr v0, v14

    invoke-virtual {v11}, Lu/d;->o()I

    move-result v14

    move/from16 v20, v0

    invoke-virtual {v11}, Lu/d;->i()I

    move-result v0

    if-eq v14, v2, :cond_57

    invoke-virtual {v11, v14}, Lu/d;->K(I)V

    if-eqz v8, :cond_56

    invoke-virtual {v11}, Lu/d;->p()I

    move-result v2

    iget v14, v11, Lu/d;->T:I

    add-int/2addr v2, v14

    if-le v2, v9, :cond_56

    invoke-virtual {v11}, Lu/d;->p()I

    move-result v2

    iget v14, v11, Lu/d;->T:I

    add-int/2addr v2, v14

    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Lu/d;->g(I)Lu/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lu/c;->d()I

    move-result v17

    add-int v2, v17, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3c

    :cond_56
    const/4 v14, 0x4

    :goto_3c
    const/16 v20, 0x1

    goto :goto_3d

    :cond_57
    const/4 v14, 0x4

    :goto_3d
    if-eq v0, v15, :cond_59

    invoke-virtual {v11, v0}, Lu/d;->H(I)V

    if-eqz v7, :cond_58

    invoke-virtual {v11}, Lu/d;->q()I

    move-result v0

    iget v2, v11, Lu/d;->U:I

    add-int/2addr v0, v2

    if-le v0, v10, :cond_58

    invoke-virtual {v11}, Lu/d;->q()I

    move-result v0

    iget v2, v11, Lu/d;->U:I

    add-int/2addr v0, v2

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lu/d;->g(I)Lu/c;

    move-result-object v2

    invoke-virtual {v2}, Lu/c;->d()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_58
    const/4 v15, 0x1

    goto :goto_3e

    :cond_59
    move/from16 v15, v20

    :goto_3e
    iget-boolean v0, v11, Lu/d;->E:Z

    if-eqz v0, :cond_5a

    iget v0, v11, Lu/d;->Z:I

    if-eq v3, v0, :cond_5a

    const/4 v15, 0x1

    :cond_5a
    :goto_3f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v20, v1

    move v14, v15

    move/from16 v3, v16

    move/from16 v0, v19

    const/4 v11, 0x2

    const/4 v15, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_39

    :cond_5b
    move/from16 v19, v0

    move-object/from16 p2, v2

    move/from16 v16, v3

    move-object/from16 v1, v20

    const/4 v0, 0x4

    if-eqz v14, :cond_5c

    add-int/lit8 v12, v12, 0x1

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-virtual {v4, v1, v12, v5, v6}, LJ2/e;->R(Lu/e;III)V

    move-object/from16 v20, v2

    move/from16 v3, v16

    move/from16 v0, v19

    const/4 v11, 0x2

    const/4 v15, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_38

    :cond_5c
    move-object/from16 v1, p1

    move/from16 v0, v19

    :cond_5d
    iput v0, v1, Lu/e;->C0:I

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Lu/e;->S(I)Z

    move-result v0

    sput-boolean v0, Ls/c;->p:Z

    :cond_5e
    return-void
.end method

.method public final l(Lu/d;Lx/d;Landroid/util/SparseArray;II)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lu/d;

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lx/d;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p2, Lx/d;->c0:Z

    const/4 v1, 0x6

    if-ne p5, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lx/d;

    iput-boolean p4, v0, Lx/d;->c0:Z

    iget-object v0, v0, Lx/d;->p0:Lu/d;

    iput-boolean p4, v0, Lu/d;->E:Z

    :cond_0
    invoke-virtual {p1, v1}, Lu/d;->g(I)Lu/c;

    move-result-object v0

    invoke-virtual {p3, p5}, Lu/d;->g(I)Lu/c;

    move-result-object p3

    iget p5, p2, Lx/d;->D:I

    iget p2, p2, Lx/d;->C:I

    invoke-virtual {v0, p3, p5, p2}, Lu/c;->a(Lu/c;II)V

    iput-boolean p4, p1, Lu/d;->E:Z

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lu/d;->g(I)Lu/c;

    move-result-object p2

    invoke-virtual {p2}, Lu/c;->g()V

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lu/d;->g(I)Lu/c;

    move-result-object p1

    invoke-virtual {p1}, Lu/c;->g()V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lx/d;

    iget-object v1, v0, Lx/d;->p0:Lu/d;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lx/d;->d0:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lx/d;->e0:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lu/d;->p()I

    move-result v0

    invoke-virtual {v1}, Lu/d;->q()I

    move-result v2

    invoke-virtual {v1}, Lu/d;->o()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lu/d;->i()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    :goto_2
    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lx/b;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 23

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    if-ne v0, v7, :cond_0

    iget v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->v:I

    :cond_0
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v9

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->v:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v10, v0, :cond_3

    move v0, v10

    goto :goto_2

    :cond_3
    move v0, v9

    :goto_2
    iget-object v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    iput-boolean v0, v11, Lu/e;->u0:Z

    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    if-eqz v0, :cond_52

    iput-boolean v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v9

    :goto_3
    if-ge v1, v0, :cond_5

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    move v12, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v12, v9

    :goto_4
    if-eqz v12, :cond_51

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    move v0, v9

    :goto_5
    if-ge v0, v14, :cond_7

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lu/d;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lu/d;->A()V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const/4 v15, -0x1

    if-eqz v13, :cond_10

    move v1, v9

    :goto_7
    if-ge v1, v14, :cond_10

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_a

    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    :cond_8
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v15, :cond_9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_9
    move-object v5, v3

    :goto_8
    iget-object v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v15, :cond_b

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-nez v2, :cond_c

    :goto_9
    move-object v2, v11

    goto :goto_a

    :cond_c
    iget-object v4, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_d

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    if-eq v4, v6, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_d

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_d
    if-ne v4, v6, :cond_e

    goto :goto_9

    :cond_e
    if-nez v4, :cond_f

    move-object v2, v0

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lx/d;

    iget-object v2, v2, Lx/d;->p0:Lu/d;

    :goto_a
    iput-object v3, v2, Lu/d;->g0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_10
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    if-eq v1, v15, :cond_11

    move v1, v9

    :goto_b
    if-ge v1, v14, :cond_11

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lx/m;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v6}, Lx/m;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_12
    iget-object v1, v11, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    move v3, v9

    :goto_c
    if-ge v3, v2, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx/b;

    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v4, Lx/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lx/b;->setIds(Ljava/lang/String;)V

    :cond_13
    iget-object v5, v4, Lx/b;->d:Lu/a;

    if-nez v5, :cond_14

    move-object/from16 v17, v1

    goto/16 :goto_10

    :cond_14
    iput v9, v5, Lu/a;->q0:I

    iget-object v5, v5, Lu/a;->p0:[Lu/d;

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v5, v9

    :goto_d
    iget v0, v4, Lx/b;->b:I

    if-ge v5, v0, :cond_19

    iget-object v0, v4, Lx/b;->a:[I

    aget v0, v0, v5

    iget-object v15, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-nez v15, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v9, v4, Lx/b;->l:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Lx/b;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_15

    iget-object v15, v4, Lx/b;->a:[I

    aput v10, v15, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/View;

    :cond_15
    if-eqz v15, :cond_18

    iget-object v0, v4, Lx/b;->d:Lu/a;

    invoke-virtual {v6, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lu/d;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v9, v0, :cond_18

    if-nez v9, :cond_16

    goto :goto_e

    :cond_16
    iget v10, v0, Lu/a;->q0:I

    const/4 v15, 0x1

    add-int/2addr v10, v15

    iget-object v15, v0, Lu/a;->p0:[Lu/d;

    move-object/from16 v17, v1

    array-length v1, v15

    if-le v10, v1, :cond_17

    array-length v1, v15

    const/4 v10, 0x2

    mul-int/2addr v1, v10

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lu/d;

    iput-object v1, v0, Lu/a;->p0:[Lu/d;

    :cond_17
    iget-object v1, v0, Lu/a;->p0:[Lu/d;

    iget v10, v0, Lu/a;->q0:I

    aput-object v9, v1, v10

    const/4 v1, 0x1

    add-int/2addr v10, v1

    iput v10, v0, Lu/a;->q0:I

    goto :goto_f

    :cond_18
    :goto_e
    move-object/from16 v17, v1

    :goto_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v17

    const/4 v9, 0x0

    const/4 v15, -0x1

    goto :goto_d

    :cond_19
    move-object/from16 v17, v1

    iget-object v0, v4, Lx/b;->d:Lu/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v17

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v15, -0x1

    goto/16 :goto_c

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v14, :cond_1b

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1b
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v14, :cond_1c

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lu/d;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 v10, 0x0

    :goto_13
    if-ge v10, v14, :cond_51

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lu/d;

    move-result-object v15

    if-nez v15, :cond_1e

    :cond_1d
    :goto_14
    move/from16 v16, v14

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    goto/16 :goto_2a

    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lx/d;

    iget-object v1, v11, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v15, Lu/d;->S:Lu/d;

    if-eqz v1, :cond_1f

    check-cast v1, Lu/e;

    iget-object v1, v1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lu/d;->A()V

    :cond_1f
    iput-object v11, v15, Lu/d;->S:Lu/d;

    invoke-virtual {v5}, Lx/d;->a()V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v15, Lu/d;->f0:I

    iput-object v0, v15, Lu/d;->e0:Landroid/view/View;

    instance-of v1, v0, Lx/b;

    if-eqz v1, :cond_24

    check-cast v0, Lx/b;

    iget-boolean v1, v11, Lu/e;->u0:Z

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    iget v2, v0, Landroidx/constraintlayout/widget/Barrier;->m:I

    iput v2, v0, Landroidx/constraintlayout/widget/Barrier;->n:I

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz v1, :cond_21

    if-ne v2, v4, :cond_20

    const/4 v1, 0x1

    iput v1, v0, Landroidx/constraintlayout/widget/Barrier;->n:I

    goto :goto_15

    :cond_20
    const/4 v1, 0x1

    if-ne v2, v3, :cond_23

    const/4 v2, 0x0

    iput v2, v0, Landroidx/constraintlayout/widget/Barrier;->n:I

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    if-ne v2, v4, :cond_22

    iput v1, v0, Landroidx/constraintlayout/widget/Barrier;->n:I

    goto :goto_15

    :cond_22
    if-ne v2, v3, :cond_23

    const/4 v1, 0x1

    iput v1, v0, Landroidx/constraintlayout/widget/Barrier;->n:I

    :cond_23
    :goto_15
    instance-of v1, v15, Lu/a;

    if-eqz v1, :cond_24

    move-object v1, v15

    check-cast v1, Lu/a;

    iget v0, v0, Landroidx/constraintlayout/widget/Barrier;->n:I

    iput v0, v1, Lu/a;->r0:I

    :cond_24
    iget-boolean v0, v5, Lx/d;->d0:Z

    if-eqz v0, :cond_28

    check-cast v15, Lu/f;

    iget v0, v5, Lx/d;->m0:I

    iget v1, v5, Lx/d;->n0:I

    iget v2, v5, Lx/d;->o0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_26

    if-lez v4, :cond_25

    iput v2, v15, Lu/f;->p0:F

    const/4 v2, -0x1

    iput v2, v15, Lu/f;->q0:I

    iput v2, v15, Lu/f;->r0:I

    goto :goto_14

    :cond_25
    const/4 v2, -0x1

    goto/16 :goto_14

    :cond_26
    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    if-le v0, v2, :cond_1d

    iput v3, v15, Lu/f;->p0:F

    iput v0, v15, Lu/f;->q0:I

    iput v2, v15, Lu/f;->r0:I

    goto/16 :goto_14

    :cond_27
    if-eq v1, v2, :cond_1d

    if-le v1, v2, :cond_1d

    iput v3, v15, Lu/f;->p0:F

    iput v2, v15, Lu/f;->q0:I

    iput v1, v15, Lu/f;->r0:I

    goto/16 :goto_14

    :cond_28
    iget v0, v5, Lx/d;->f0:I

    iget v1, v5, Lx/d;->g0:I

    iget v2, v5, Lx/d;->h0:I

    iget v3, v5, Lx/d;->i0:I

    iget v4, v5, Lx/d;->j0:I

    move/from16 v16, v14

    iget v14, v5, Lx/d;->k0:I

    iget v7, v5, Lx/d;->l0:F

    iget v8, v5, Lx/d;->p:I

    const/4 v6, -0x1

    if-eq v8, v6, :cond_2a

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_29

    iget v0, v5, Lx/d;->r:F

    iget v1, v5, Lx/d;->q:I

    const/16 v19, 0x7

    const/16 v21, 0x0

    move-object/from16 v17, v15

    move/from16 v18, v19

    move/from16 v20, v1

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    iput v0, v15, Lu/d;->D:F

    :cond_29
    move-object v14, v5

    goto/16 :goto_1d

    :cond_2a
    if-eq v0, v6, :cond_2c

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_2b

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x2

    move/from16 v18, v1

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    :cond_2b
    :goto_16
    const/4 v0, -0x1

    goto :goto_17

    :cond_2c
    move v0, v6

    if-eq v1, v0, :cond_2d

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_2b

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x2

    move/from16 v18, v1

    const/4 v1, 0x4

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v4

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    goto :goto_16

    :cond_2d
    :goto_17
    if-eq v2, v0, :cond_2e

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_2f

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x4

    move/from16 v18, v1

    const/4 v1, 0x2

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    goto :goto_18

    :cond_2e
    if-eq v3, v0, :cond_2f

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_2f

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v17, v15

    const/4 v1, 0x4

    move/from16 v18, v1

    move/from16 v19, v1

    move/from16 v20, v0

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    :cond_2f
    :goto_18
    iget v0, v5, Lx/d;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_31

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v5, Lx/d;->x:I

    move-object/from16 v17, v15

    const/4 v2, 0x3

    move/from16 v18, v2

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    goto :goto_19

    :cond_30
    iget v0, v5, Lx/d;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_31

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v5, Lx/d;->x:I

    move-object/from16 v17, v15

    const/4 v2, 0x3

    move/from16 v18, v2

    const/4 v2, 0x5

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    :cond_31
    :goto_19
    iget v0, v5, Lx/d;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_33

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v5, Lx/d;->z:I

    move-object/from16 v17, v15

    const/4 v2, 0x5

    move/from16 v18, v2

    const/4 v2, 0x3

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    goto :goto_1a

    :cond_32
    iget v0, v5, Lx/d;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lu/d;

    if-eqz v22, :cond_33

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v5, Lx/d;->z:I

    move-object/from16 v17, v15

    const/4 v2, 0x5

    move/from16 v18, v2

    move/from16 v19, v2

    move/from16 v20, v0

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Lu/d;->t(IIIILu/d;)V

    :cond_33
    :goto_1a
    iget v4, v5, Lx/d;->m:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_35

    const/4 v8, 0x6

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move-object v3, v9

    move-object v14, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Lu/d;Lx/d;Landroid/util/SparseArray;II)V

    :cond_34
    :goto_1b
    const/4 v0, 0x0

    goto :goto_1c

    :cond_35
    move-object v14, v5

    iget v4, v14, Lx/d;->n:I

    if-eq v4, v6, :cond_36

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v14

    move-object v3, v9

    const/4 v8, 0x3

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Lu/d;Lx/d;Landroid/util/SparseArray;II)V

    goto :goto_1b

    :cond_36
    iget v4, v14, Lx/d;->o:I

    if-eq v4, v6, :cond_34

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v14

    move-object v3, v9

    const/4 v6, 0x5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Lu/d;Lx/d;Landroid/util/SparseArray;II)V

    goto :goto_1b

    :goto_1c
    cmpl-float v1, v7, v0

    if-ltz v1, :cond_37

    iput v7, v15, Lu/d;->c0:F

    :cond_37
    iget v1, v14, Lx/d;->F:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_38

    iput v1, v15, Lu/d;->d0:F

    :cond_38
    :goto_1d
    if-eqz v13, :cond_3a

    iget v0, v14, Lx/d;->T:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    iget v2, v14, Lx/d;->U:I

    if-eq v2, v1, :cond_3a

    :cond_39
    iget v1, v14, Lx/d;->U:I

    iput v0, v15, Lu/d;->X:I

    iput v1, v15, Lu/d;->Y:I

    :cond_3a
    iget-boolean v0, v14, Lx/d;->a0:Z

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, -0x2

    if-nez v0, :cond_3d

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3c

    iget-boolean v0, v14, Lx/d;->W:Z

    if-eqz v0, :cond_3b

    invoke-virtual {v15, v1}, Lu/d;->I(I)V

    :goto_1e
    const/4 v0, 0x2

    goto :goto_1f

    :cond_3b
    invoke-virtual {v15, v2}, Lu/d;->I(I)V

    goto :goto_1e

    :goto_1f
    invoke-virtual {v15, v0}, Lu/d;->g(I)Lu/c;

    move-result-object v0

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v0, Lu/c;->g:I

    const/4 v0, 0x4

    invoke-virtual {v15, v0}, Lu/d;->g(I)Lu/c;

    move-result-object v0

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v0, Lu/c;->g:I

    goto :goto_20

    :cond_3c
    invoke-virtual {v15, v1}, Lu/d;->I(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lu/d;->K(I)V

    goto :goto_20

    :cond_3d
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lu/d;->I(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v15, v0}, Lu/d;->K(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v3, :cond_3e

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lu/d;->I(I)V

    :cond_3e
    :goto_20
    iget-boolean v0, v14, Lx/d;->b0:Z

    if-nez v0, :cond_41

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_40

    iget-boolean v0, v14, Lx/d;->X:Z

    if-eqz v0, :cond_3f

    invoke-virtual {v15, v1}, Lu/d;->J(I)V

    :goto_21
    const/4 v0, 0x3

    goto :goto_22

    :cond_3f
    invoke-virtual {v15, v2}, Lu/d;->J(I)V

    goto :goto_21

    :goto_22
    invoke-virtual {v15, v0}, Lu/d;->g(I)Lu/c;

    move-result-object v0

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Lu/c;->g:I

    const/4 v0, 0x5

    invoke-virtual {v15, v0}, Lu/d;->g(I)Lu/c;

    move-result-object v0

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v0, Lu/c;->g:I

    goto :goto_23

    :cond_40
    invoke-virtual {v15, v1}, Lu/d;->J(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lu/d;->H(I)V

    goto :goto_23

    :cond_41
    const/4 v0, 0x1

    const/4 v4, -0x1

    invoke-virtual {v15, v0}, Lu/d;->J(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v15, v0}, Lu/d;->H(I)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v3, :cond_42

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lu/d;->J(I)V

    :cond_42
    :goto_23
    iget-object v0, v14, Lx/d;->G:Ljava/lang/String;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_44

    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_28

    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_47

    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_47

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v5, "W"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x0

    goto :goto_24

    :cond_45
    const-string v5, "H"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x1

    goto :goto_24

    :cond_46
    move v5, v4

    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_47
    move v5, v4

    const/4 v3, 0x0

    :goto_25
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_49

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_49

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v6, v2, v3

    if-lez v6, :cond_4a

    cmpl-float v6, v0, v3

    if-lez v6, :cond_4a

    const/4 v3, 0x1

    if-ne v5, v3, :cond_48

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_26

    :cond_48
    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_26
    const/4 v2, 0x0

    goto :goto_27

    :cond_49
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_26

    :catch_1
    :cond_4a
    const/4 v0, 0x0

    goto :goto_26

    :goto_27
    cmpl-float v3, v0, v2

    if-lez v3, :cond_4b

    iput v0, v15, Lu/d;->V:F

    iput v5, v15, Lu/d;->W:I

    goto :goto_29

    :goto_28
    iput v2, v15, Lu/d;->V:F

    :cond_4b
    :goto_29
    iget v0, v14, Lx/d;->H:F

    iget-object v2, v15, Lu/d;->j0:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    iget v0, v14, Lx/d;->I:F

    const/4 v3, 0x1

    aput v0, v2, v3

    iget v0, v14, Lx/d;->J:I

    iput v0, v15, Lu/d;->h0:I

    iget v0, v14, Lx/d;->K:I

    iput v0, v15, Lu/d;->i0:I

    iget v0, v14, Lx/d;->Z:I

    if-ltz v0, :cond_4c

    if-gt v0, v1, :cond_4c

    iput v0, v15, Lu/d;->q:I

    :cond_4c
    iget v0, v14, Lx/d;->L:I

    iget v1, v14, Lx/d;->N:I

    iget v2, v14, Lx/d;->P:I

    iget v5, v14, Lx/d;->R:F

    iput v0, v15, Lu/d;->r:I

    iput v1, v15, Lu/d;->u:I

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_4d

    const/4 v2, 0x0

    :cond_4d
    iput v2, v15, Lu/d;->v:I

    iput v5, v15, Lu/d;->w:F

    const/4 v2, 0x0

    cmpl-float v6, v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v6, :cond_4e

    cmpg-float v5, v5, v2

    if-gez v5, :cond_4e

    if-nez v0, :cond_4e

    const/4 v0, 0x2

    iput v0, v15, Lu/d;->r:I

    :cond_4e
    iget v0, v14, Lx/d;->M:I

    iget v5, v14, Lx/d;->O:I

    iget v6, v14, Lx/d;->Q:I

    iget v7, v14, Lx/d;->S:F

    iput v0, v15, Lu/d;->s:I

    iput v5, v15, Lu/d;->x:I

    if-ne v6, v1, :cond_4f

    const/4 v6, 0x0

    :cond_4f
    iput v6, v15, Lu/d;->y:I

    iput v7, v15, Lu/d;->z:F

    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_50

    cmpg-float v1, v7, v2

    if-gez v1, :cond_50

    if-nez v0, :cond_50

    const/4 v0, 0x2

    iput v0, v15, Lu/d;->s:I

    goto :goto_2a

    :cond_50
    const/4 v0, 0x2

    :goto_2a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v14, v16

    goto/16 :goto_13

    :cond_51
    if-eqz v12, :cond_52

    iget-object v0, v11, Lu/e;->q0:LJ2/e;

    invoke-virtual {v0, v11}, LJ2/e;->U(Lu/e;)V

    :cond_52
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v11, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Lu/e;III)V

    invoke-virtual {v11}, Lu/d;->o()I

    move-result v1

    invoke-virtual {v11}, Lu/d;->i()I

    move-result v4

    iget-boolean v5, v11, Lu/e;->D0:Z

    iget-boolean v6, v11, Lu/e;->E0:Z

    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Lx/e;

    iget v8, v7, Lx/e;->e:I

    iget v7, v7, Lx/e;->d:I

    add-int/2addr v1, v7

    add-int/2addr v4, v8

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-static {v4, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x1000000

    if-eqz v5, :cond_53

    or-int/2addr v1, v3

    :cond_53
    if-eqz v6, :cond_54

    or-int/2addr v2, v3

    :cond_54
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lu/d;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lu/f;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lx/d;

    new-instance v1, Lu/f;

    invoke-direct {v1}, Lu/f;-><init>()V

    iput-object v1, v0, Lx/d;->p0:Lu/d;

    iput-boolean v2, v0, Lx/d;->d0:Z

    iget v0, v0, Lx/d;->V:I

    invoke-virtual {v1, v0}, Lu/f;->O(I)V

    :cond_0
    instance-of v0, p1, Lx/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lx/b;

    invoke-virtual {v0}, Lx/b;->e()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lx/d;

    iput-boolean v2, v1, Lx/d;->e0:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lu/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    iget-object v1, v1, Lu/e;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lu/d;->A()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Lx/m;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lx/m;

    return-void
.end method

.method public setId(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lx/n;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lj3/G;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lu/e;

    iput p1, v0, Lu/e;->C0:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lu/e;->S(I)Z

    move-result p1

    sput-boolean p1, Ls/c;->p:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
