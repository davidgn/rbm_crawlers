.class public final Ll/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:LC4/p;

.field public c:LC4/p;

.field public d:LC4/p;

.field public e:LC4/p;

.field public f:LC4/p;

.field public g:LC4/p;

.field public h:LC4/p;

.field public final i:Ll/f0;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll/Y;->j:I

    const/4 v0, -0x1

    iput v0, p0, Ll/Y;->k:I

    iput-object p1, p0, Ll/Y;->a:Landroid/widget/TextView;

    new-instance v0, Ll/f0;

    invoke-direct {v0, p1}, Ll/f0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Ll/Y;->i:Ll/f0;

    return-void
.end method

.method public static c(Landroid/content/Context;Ll/t;I)LC4/p;
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Ll/t;->a:Ll/J0;

    invoke-virtual {v0, p0, p2}, Ll/J0;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz p0, :cond_0

    new-instance p1, LC4/p;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, LC4/p;->d:Z

    iput-object p0, p1, LC4/p;->b:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static h(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 11

    const/16 v0, 0x800

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-lt v3, v4, :cond_0

    invoke-static {p0, p1}, LR/a;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v3, v4, :cond_1

    invoke-static {p0, p1}, LR/a;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le p2, v3, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, p2

    :goto_0
    if-le p2, v3, :cond_3

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    if-ltz v4, :cond_c

    if-le p2, v3, :cond_4

    goto/16 :goto_5

    :cond_4
    iget v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v6, v6, 0xfff

    const/16 v7, 0x81

    if-eq v6, v7, :cond_b

    const/16 v7, 0xe1

    if-eq v6, v7, :cond_b

    const/16 v7, 0x12

    if-ne v6, v7, :cond_5

    goto/16 :goto_4

    :cond_5
    if-gt v3, v0, :cond_6

    invoke-static {p0, p1, v4, p2}, LW2/B;->y(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto/16 :goto_6

    :cond_6
    sub-int v3, p2, v4

    const/16 v5, 0x400

    if-le v3, v5, :cond_7

    move v5, v1

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, p2

    sub-int/2addr v0, v5

    const-wide v7, 0x3fe999999999999aL    # 0.8

    int-to-double v9, v0

    mul-double/2addr v9, v7

    double-to-int v7, v9

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v4, v0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/2addr v4, v2

    sub-int/2addr v0, v2

    :cond_8
    add-int v7, p2, v6

    sub-int/2addr v7, v2

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_9

    sub-int/2addr v6, v2

    :cond_9
    add-int v7, v0, v5

    add-int v8, v7, v6

    if-eq v5, v3, :cond_a

    add-int v3, v4, v0

    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    add-int/2addr v6, p2

    invoke-interface {p1, p2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object v3, p2, v1

    aput-object p1, p2, v2

    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    :cond_a
    add-int/2addr v8, v4

    invoke-interface {p1, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_3
    invoke-static {p0, p1, v0, v7}, LW2/B;->y(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_6

    :cond_b
    :goto_4
    invoke-static {p0, v5, v1, v1}, LW2/B;->y(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_6

    :cond_c
    :goto_5
    invoke-static {p0, v5, v1, v1}, LW2/B;->y(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;LC4/p;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Ll/Y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Ll/t;->e(Landroid/graphics/drawable/Drawable;LC4/p;[I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Ll/Y;->b:LC4/p;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Ll/Y;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/Y;->c:LC4/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/Y;->d:LC4/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/Y;->e:LC4/p;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v5, p0, Ll/Y;->b:LC4/p;

    invoke-virtual {p0, v4, v5}, Ll/Y;->a(Landroid/graphics/drawable/Drawable;LC4/p;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v5, p0, Ll/Y;->c:LC4/p;

    invoke-virtual {p0, v4, v5}, Ll/Y;->a(Landroid/graphics/drawable/Drawable;LC4/p;)V

    aget-object v4, v0, v1

    iget-object v5, p0, Ll/Y;->d:LC4/p;

    invoke-virtual {p0, v4, v5}, Ll/Y;->a(Landroid/graphics/drawable/Drawable;LC4/p;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Ll/Y;->e:LC4/p;

    invoke-virtual {p0, v0, v4}, Ll/Y;->a(Landroid/graphics/drawable/Drawable;LC4/p;)V

    :cond_1
    iget-object v0, p0, Ll/Y;->f:LC4/p;

    if-nez v0, :cond_2

    iget-object v0, p0, Ll/Y;->g:LC4/p;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v3}, Ll/U;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Ll/Y;->f:LC4/p;

    invoke-virtual {p0, v2, v3}, Ll/Y;->a(Landroid/graphics/drawable/Drawable;LC4/p;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Ll/Y;->g:LC4/p;

    invoke-virtual {p0, v0, v1}, Ll/Y;->a(Landroid/graphics/drawable/Drawable;LC4/p;)V

    :cond_3
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Ll/Y;->h:LC4/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, LC4/p;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Ll/Y;->h:LC4/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, LC4/p;->c:Ljava/io/Serializable;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const/4 v9, 0x1

    iget-object v10, v0, Ll/Y;->a:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Ll/t;->a()Ll/t;

    move-result-object v12

    sget-object v3, Lg/a;->h:[I

    invoke-static {v11, v7, v3, v8}, LJ2/e;->J(Landroid/content/Context;Landroid/util/AttributeSet;[II)LJ2/e;

    move-result-object v13

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v13, LJ2/e;->c:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/content/res/TypedArray;

    move-object v1, v10

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, LM/a0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    iget-object v1, v13, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/TypedArray;

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v11, v12, v3}, Ll/Y;->c(Landroid/content/Context;Ll/t;I)LC4/p;

    move-result-object v3

    iput-object v3, v0, Ll/Y;->b:LC4/p;

    :cond_0
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v11, v12, v3}, Ll/Y;->c(Landroid/content/Context;Ll/t;I)LC4/p;

    move-result-object v3

    iput-object v3, v0, Ll/Y;->c:LC4/p;

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v11, v12, v3}, Ll/Y;->c(Landroid/content/Context;Ll/t;I)LC4/p;

    move-result-object v3

    iput-object v3, v0, Ll/Y;->d:LC4/p;

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v11, v12, v3}, Ll/Y;->c(Landroid/content/Context;Ll/t;I)LC4/p;

    move-result-object v3

    iput-object v3, v0, Ll/Y;->e:LC4/p;

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v1, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v11, v12, v4}, Ll/Y;->c(Landroid/content/Context;Ll/t;I)LC4/p;

    move-result-object v4

    iput-object v4, v0, Ll/Y;->f:LC4/p;

    :cond_4
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v11, v12, v1}, Ll/Y;->c(Landroid/content/Context;Ll/t;I)LC4/p;

    move-result-object v1

    iput-object v1, v0, Ll/Y;->g:LC4/p;

    :cond_5
    invoke-virtual {v13}, LJ2/e;->M()V

    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    sget-object v13, Lg/a;->w:[I

    const/16 v4, 0xe

    const/16 v9, 0xf

    if-eq v2, v15, :cond_9

    new-instance v5, LJ2/e;

    invoke-virtual {v11, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v5, v11, v2}, LJ2/e;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v1, :cond_6

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-virtual {v2, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    move/from16 v21, v20

    const/16 v20, 0x1

    goto :goto_0

    :cond_6
    move/from16 v20, v14

    move/from16 v21, v20

    :goto_0
    invoke-virtual {v0, v11, v5}, Ll/Y;->k(Landroid/content/Context;LJ2/e;)V

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v6, 0xd

    goto :goto_1

    :cond_7
    const/16 v6, 0xd

    const/16 v22, 0x0

    :goto_1
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5}, LJ2/e;->M()V

    goto :goto_3

    :cond_9
    move/from16 v20, v14

    move/from16 v21, v20

    const/4 v2, 0x0

    const/16 v22, 0x0

    :goto_3
    new-instance v5, LJ2/e;

    invoke-virtual {v11, v7, v13, v8, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v5, v11, v6}, LJ2/e;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v1, :cond_a

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v6, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v4, v21

    const/16 v20, 0x1

    goto :goto_4

    :cond_a
    move/from16 v4, v21

    :goto_4
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    :cond_b
    const/16 v13, 0xd

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    const/16 v13, 0x1c

    const/4 v9, 0x0

    if-lt v3, v13, :cond_d

    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v6, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v10, v14, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-virtual {v0, v11, v5}, Ll/Y;->k(Landroid/content/Context;LJ2/e;)V

    invoke-virtual {v5}, LJ2/e;->M()V

    if-nez v1, :cond_e

    if-eqz v20, :cond_e

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_e
    iget-object v1, v0, Ll/Y;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    iget v3, v0, Ll/Y;->k:I

    if-ne v3, v15, :cond_f

    iget v3, v0, Ll/Y;->j:I

    invoke-virtual {v10, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_5

    :cond_f
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_5
    if-eqz v2, :cond_11

    invoke-static {v10, v2}, Ll/W;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_11
    if-eqz v22, :cond_12

    invoke-static/range {v22 .. v22}, Ll/V;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v10, v1}, Ll/V;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    :cond_12
    sget-object v13, Lg/a;->i:[I

    iget-object v6, v0, Ll/Y;->i:Ll/f0;

    iget-object v5, v6, Ll/f0;->h:Landroid/content/Context;

    invoke-virtual {v5, v7, v13, v8, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    iget-object v1, v6, Ll/f0;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v13

    move-object/from16 v16, v4

    const/4 v9, 0x2

    move-object/from16 v4, p1

    move-object/from16 v19, v5

    const/4 v15, 0x4

    move-object/from16 v5, v16

    move-object v9, v6

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, LM/a0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    move-object/from16 v2, v16

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2, v1, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v9, Ll/f0;->a:I

    :cond_13
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_14

    invoke-virtual {v2, v15, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    :goto_6
    const/4 v4, 0x2

    goto :goto_7

    :cond_14
    move v1, v3

    goto :goto_6

    :goto_7
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    :goto_8
    const/4 v4, 0x1

    goto :goto_9

    :cond_15
    move v5, v3

    goto :goto_8

    :goto_9
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    :goto_a
    const/4 v4, 0x3

    goto :goto_b

    :cond_16
    move v6, v3

    goto :goto_a

    :goto_b
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v2, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-lez v8, :cond_1a

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v15

    new-array v4, v15, [I

    if-lez v15, :cond_19

    move v3, v14

    :goto_c
    if-ge v3, v15, :cond_17

    const/4 v14, -0x1

    invoke-virtual {v8, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    aput v17, v4, v3

    const/4 v14, 0x1

    add-int/2addr v3, v14

    const/4 v14, 0x0

    goto :goto_c

    :cond_17
    const/4 v14, 0x1

    invoke-static {v4}, Ll/f0;->a([I)[I

    move-result-object v3

    iput-object v3, v9, Ll/f0;->e:[I

    array-length v4, v3

    if-lez v4, :cond_18

    move v15, v14

    goto :goto_d

    :cond_18
    const/4 v15, 0x0

    :goto_d
    iput-boolean v15, v9, Ll/f0;->f:Z

    if-eqz v15, :cond_19

    iput v14, v9, Ll/f0;->a:I

    const/4 v15, 0x0

    aget v14, v3, v15

    int-to-float v14, v14

    iput v14, v9, Ll/f0;->c:F

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    aget v3, v3, v4

    int-to-float v3, v3

    iput v3, v9, Ll/f0;->d:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v9, Ll/f0;->b:F

    :cond_19
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Ll/f0;->b()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_24

    iget v2, v9, Ll/f0;->a:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25

    iget-boolean v2, v9, Ll/f0;->f:Z

    if-nez v2, :cond_21

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v8, v5, v4

    if-nez v8, :cond_1b

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v8, 0x2

    invoke-static {v8, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    goto :goto_e

    :cond_1b
    const/4 v8, 0x2

    :goto_e
    cmpl-float v14, v6, v4

    if-nez v14, :cond_1c

    const/high16 v6, 0x42e00000    # 112.0f

    invoke-static {v8, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    :cond_1c
    cmpl-float v2, v1, v4

    if-nez v2, :cond_1d

    move v1, v3

    :cond_1d
    const/4 v2, 0x0

    cmpg-float v4, v5, v2

    const-string v8, "px) is less or equal to (0px)"

    if-lez v4, :cond_20

    cmpg-float v4, v6, v5

    if-lez v4, :cond_1f

    cmpg-float v2, v1, v2

    if-lez v2, :cond_1e

    const/4 v2, 0x1

    iput v2, v9, Ll/f0;->a:I

    iput v5, v9, Ll/f0;->c:F

    iput v6, v9, Ll/f0;->d:F

    iput v1, v9, Ll/f0;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v9, Ll/f0;->f:Z

    goto :goto_f

    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The auto-size step granularity ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum auto-size text size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Minimum auto-size text size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_f
    invoke-virtual {v9}, Ll/f0;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v9, Ll/f0;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    iget-boolean v1, v9, Ll/f0;->f:Z

    if-eqz v1, :cond_22

    iget-object v1, v9, Ll/f0;->e:[I

    array-length v1, v1

    if-nez v1, :cond_25

    :cond_22
    iget v1, v9, Ll/f0;->d:F

    iget v2, v9, Ll/f0;->c:F

    sub-float/2addr v1, v2

    iget v2, v9, Ll/f0;->b:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v4, v1, [I

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_23

    iget v6, v9, Ll/f0;->c:F

    int-to-float v8, v5

    iget v14, v9, Ll/f0;->b:F

    mul-float/2addr v8, v14

    add-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v4, v5

    add-int/2addr v5, v2

    goto :goto_10

    :cond_23
    invoke-static {v4}, Ll/f0;->a([I)[I

    move-result-object v1

    iput-object v1, v9, Ll/f0;->e:[I

    goto :goto_11

    :cond_24
    const/4 v1, 0x0

    iput v1, v9, Ll/f0;->a:I

    :cond_25
    :goto_11
    sget-object v1, Ll/j1;->a:Ljava/lang/reflect/Method;

    iget v1, v9, Ll/f0;->a:I

    if-eqz v1, :cond_27

    iget-object v1, v9, Ll/f0;->e:[I

    array-length v2, v1

    if-lez v2, :cond_27

    invoke-static {v10}, Ll/W;->a(Landroid/widget/TextView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_26

    iget v1, v9, Ll/f0;->c:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v9, Ll/f0;->d:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v9, Ll/f0;->b:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v10, v1, v2, v4, v5}, Ll/W;->b(Landroid/widget/TextView;IIII)V

    goto :goto_12

    :cond_26
    const/4 v5, 0x0

    invoke-static {v10, v1, v5}, Ll/W;->c(Landroid/widget/TextView;[II)V

    :cond_27
    :goto_12
    invoke-virtual {v11, v7, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v4, :cond_28

    invoke-virtual {v12, v11, v2}, Ll/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_13
    const/16 v5, 0xd

    goto :goto_14

    :cond_28
    const/4 v2, 0x0

    goto :goto_13

    :goto_14
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v5, v4, :cond_29

    invoke-virtual {v12, v11, v5}, Ll/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_15

    :cond_29
    const/4 v5, 0x0

    :goto_15
    const/16 v6, 0x9

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eq v6, v4, :cond_2a

    invoke-virtual {v12, v11, v6}, Ll/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_16
    const/4 v7, 0x6

    goto :goto_17

    :cond_2a
    const/4 v6, 0x0

    goto :goto_16

    :goto_17
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eq v7, v4, :cond_2b

    invoke-virtual {v12, v11, v7}, Ll/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_18

    :cond_2b
    const/4 v7, 0x0

    :goto_18
    const/16 v8, 0xa

    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eq v8, v4, :cond_2c

    invoke-virtual {v12, v11, v8}, Ll/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_19

    :cond_2c
    const/4 v8, 0x0

    :goto_19
    const/4 v9, 0x7

    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eq v9, v4, :cond_2d

    invoke-virtual {v12, v11, v9}, Ll/t;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1a

    :cond_2d
    const/4 v4, 0x0

    :goto_1a
    if-nez v8, :cond_38

    if-eqz v4, :cond_2e

    goto :goto_23

    :cond_2e
    if-nez v2, :cond_2f

    if-nez v5, :cond_2f

    if-nez v6, :cond_2f

    if-eqz v7, :cond_3d

    :cond_2f
    invoke-static {v10}, Ll/U;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v9, v4, v8

    if-nez v9, :cond_35

    const/4 v12, 0x2

    aget-object v13, v4, v12

    if-eqz v13, :cond_30

    goto :goto_1f

    :cond_30
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v2, :cond_31

    goto :goto_1b

    :cond_31
    aget-object v2, v4, v8

    :goto_1b
    if-eqz v5, :cond_32

    goto :goto_1c

    :cond_32
    const/4 v5, 0x1

    aget-object v5, v4, v5

    :goto_1c
    if-eqz v6, :cond_33

    goto :goto_1d

    :cond_33
    const/4 v6, 0x2

    aget-object v6, v4, v6

    :goto_1d
    if-eqz v7, :cond_34

    goto :goto_1e

    :cond_34
    const/4 v7, 0x3

    aget-object v7, v4, v7

    :goto_1e
    invoke-virtual {v10, v2, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_28

    :cond_35
    :goto_1f
    if-eqz v5, :cond_36

    :goto_20
    const/4 v2, 0x2

    goto :goto_21

    :cond_36
    const/4 v2, 0x1

    aget-object v5, v4, v2

    goto :goto_20

    :goto_21
    aget-object v2, v4, v2

    if-eqz v7, :cond_37

    goto :goto_22

    :cond_37
    const/4 v6, 0x3

    aget-object v7, v4, v6

    :goto_22
    invoke-static {v10, v9, v5, v2, v7}, Ll/U;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_28

    :cond_38
    :goto_23
    invoke-static {v10}, Ll/U;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v8, :cond_39

    goto :goto_24

    :cond_39
    const/4 v6, 0x0

    aget-object v8, v2, v6

    :goto_24
    if-eqz v5, :cond_3a

    goto :goto_25

    :cond_3a
    const/4 v5, 0x1

    aget-object v5, v2, v5

    :goto_25
    if-eqz v4, :cond_3b

    goto :goto_26

    :cond_3b
    const/4 v4, 0x2

    aget-object v4, v2, v4

    :goto_26
    if-eqz v7, :cond_3c

    goto :goto_27

    :cond_3c
    const/4 v6, 0x3

    aget-object v7, v2, v6

    :goto_27
    invoke-static {v10, v8, v5, v4, v7}, Ll/U;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    :goto_28
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_3e

    invoke-static {v11, v4}, LC/i;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_3e

    goto :goto_29

    :cond_3e
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :goto_29
    invoke-static {v10, v4}, LS/m;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_3f
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ll/k0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v10, v2}, LS/m;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    :goto_2a
    const/16 v2, 0xf

    goto :goto_2b

    :cond_40
    const/4 v4, -0x1

    goto :goto_2a

    :goto_2b
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v5, 0x12

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v6, 0x13

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v2, v4, :cond_41

    invoke-static {v10, v2}, La/a;->C(Landroid/widget/TextView;I)V

    :cond_41
    if-eq v5, v4, :cond_42

    invoke-static {v10, v5}, La/a;->D(Landroid/widget/TextView;I)V

    :cond_42
    if-eq v6, v4, :cond_43

    invoke-static {v6}, LL4/l;->j(I)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    if-eq v6, v1, :cond_43

    sub-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v10, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_43
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 5

    sget-object v0, Lg/a;->w:[I

    new-instance v1, LJ2/e;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, LJ2/e;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iget-object v3, p0, Ll/Y;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0, p1, v1}, Ll/Y;->k(Landroid/content/Context;LJ2/e;)V

    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v3, p1}, Ll/W;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v1}, LJ2/e;->M()V

    iget-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget p2, p0, Ll/Y;->j:I

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final i(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ll/Y;->h:LC4/p;

    if-nez v0, :cond_0

    new-instance v0, LC4/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/Y;->h:LC4/p;

    :cond_0
    iget-object v0, p0, Ll/Y;->h:LC4/p;

    iput-object p1, v0, LC4/p;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, LC4/p;->d:Z

    iput-object v0, p0, Ll/Y;->b:LC4/p;

    iput-object v0, p0, Ll/Y;->c:LC4/p;

    iput-object v0, p0, Ll/Y;->d:LC4/p;

    iput-object v0, p0, Ll/Y;->e:LC4/p;

    iput-object v0, p0, Ll/Y;->f:LC4/p;

    iput-object v0, p0, Ll/Y;->g:LC4/p;

    return-void
.end method

.method public final j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Ll/Y;->h:LC4/p;

    if-nez v0, :cond_0

    new-instance v0, LC4/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/Y;->h:LC4/p;

    :cond_0
    iget-object v0, p0, Ll/Y;->h:LC4/p;

    iput-object p1, v0, LC4/p;->c:Ljava/io/Serializable;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, LC4/p;->a:Z

    iput-object v0, p0, Ll/Y;->b:LC4/p;

    iput-object v0, p0, Ll/Y;->c:LC4/p;

    iput-object v0, p0, Ll/Y;->d:LC4/p;

    iput-object v0, p0, Ll/Y;->e:LC4/p;

    iput-object v0, p0, Ll/Y;->f:LC4/p;

    iput-object v0, p0, Ll/Y;->g:LC4/p;

    return-void
.end method

.method public final k(Landroid/content/Context;LJ2/e;)V
    .locals 11

    iget v0, p0, Ll/Y;->j:I

    iget-object v1, p2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/TypedArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Ll/Y;->j:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, -0x1

    if-lt v0, v3, :cond_0

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Ll/Y;->k:I

    if-eq v5, v4, :cond_0

    iget v5, p0, Ll/Y;->j:I

    and-int/2addr v5, v2

    iput v5, p0, Ll/Y;->j:I

    :cond_0
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_6

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v8, p0, Ll/Y;->m:Z

    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v9, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v5, v7

    :cond_7
    iget v6, p0, Ll/Y;->k:I

    iget v7, p0, Ll/Y;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Ll/Y;->a:Landroid/widget/TextView;

    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v10, Ll/T;

    invoke-direct {v10, p0, v6, v7, p1}, Ll/T;-><init>(Ll/Y;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Ll/Y;->j:I

    invoke-virtual {p2, v5, p1, v10}, LJ2/e;->v(IILl/T;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v3, :cond_9

    iget p2, p0, Ll/Y;->k:I

    if-eq p2, v4, :cond_9

    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Ll/Y;->k:I

    iget v0, p0, Ll/Y;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    move v0, v9

    goto :goto_2

    :cond_8
    move v0, v8

    :goto_2
    invoke-static {p1, p2, v0}, Ll/X;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_9
    iput-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    :cond_a
    :goto_3
    iget-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v9

    goto :goto_4

    :cond_b
    move p1, v8

    :goto_4
    iput-boolean p1, p0, Ll/Y;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_e

    iget p2, p0, Ll/Y;->k:I

    if-eq p2, v4, :cond_e

    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Ll/Y;->k:I

    iget v0, p0, Ll/Y;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v8, v9

    :cond_d
    invoke-static {p1, p2, v8}, Ll/X;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_e
    iget p2, p0, Ll/Y;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ll/Y;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_5
    return-void
.end method
