.class public final Ls/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static p:Z = false

.field public static q:I = 0x3e8


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ls/d;

.field public d:I

.field public e:I

.field public f:[Ls/b;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:LJ2/e;

.field public m:[Ls/f;

.field public n:I

.field public o:Ls/b;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/c;->a:Z

    iput v0, p0, Ls/c;->b:I

    const/16 v1, 0x20

    iput v1, p0, Ls/c;->d:I

    iput v1, p0, Ls/c;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Ls/c;->f:[Ls/b;

    iput-boolean v0, p0, Ls/c;->g:Z

    new-array v2, v1, [Z

    iput-object v2, p0, Ls/c;->h:[Z

    const/4 v2, 0x1

    iput v2, p0, Ls/c;->i:I

    iput v0, p0, Ls/c;->j:I

    iput v1, p0, Ls/c;->k:I

    sget v2, Ls/c;->q:I

    new-array v2, v2, [Ls/f;

    iput-object v2, p0, Ls/c;->m:[Ls/f;

    iput v0, p0, Ls/c;->n:I

    new-array v2, v1, [Ls/b;

    iput-object v2, p0, Ls/c;->f:[Ls/b;

    invoke-virtual {p0}, Ls/c;->s()V

    new-instance v2, LJ2/e;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, LJ2/e;-><init>(I)V

    new-instance v3, LL/c;

    invoke-direct {v3}, LL/c;-><init>()V

    iput-object v3, v2, LJ2/e;->b:Ljava/lang/Object;

    new-instance v3, LL/c;

    invoke-direct {v3}, LL/c;-><init>()V

    iput-object v3, v2, LJ2/e;->c:Ljava/lang/Object;

    new-array v1, v1, [Ls/f;

    iput-object v1, v2, LJ2/e;->d:Ljava/lang/Object;

    iput-object v2, p0, Ls/c;->l:LJ2/e;

    new-instance v1, Ls/d;

    invoke-direct {v1, v2}, Ls/b;-><init>(LJ2/e;)V

    const/16 v3, 0x80

    new-array v4, v3, [Ls/f;

    iput-object v4, v1, Ls/d;->f:[Ls/f;

    new-array v3, v3, [Ls/f;

    iput-object v3, v1, Ls/d;->g:[Ls/f;

    iput v0, v1, Ls/d;->h:I

    new-instance v0, Lj3/G;

    invoke-direct {v0, v1}, Lj3/G;-><init>(Ls/d;)V

    iput-object v0, v1, Ls/d;->i:Lj3/G;

    iput-object v1, p0, Ls/c;->c:Ls/d;

    new-instance v0, Ls/b;

    invoke-direct {v0, v2}, Ls/b;-><init>(LJ2/e;)V

    iput-object v0, p0, Ls/c;->o:Ls/b;

    return-void
.end method

.method public static n(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lu/c;

    iget-object p0, p0, Lu/c;->i:Ls/f;

    if-eqz p0, :cond_0

    iget p0, p0, Ls/f;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(I)Ls/f;
    .locals 5

    iget-object v0, p0, Ls/c;->l:LJ2/e;

    iget-object v0, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, LL/c;

    iget v1, v0, LL/c;->b:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v3, v0, LL/c;->a:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v2, v3, v1

    iput v1, v0, LL/c;->b:I

    move-object v2, v4

    :cond_0
    check-cast v2, Ls/f;

    if-nez v2, :cond_1

    new-instance v2, Ls/f;

    invoke-direct {v2, p1}, Ls/f;-><init>(I)V

    iput p1, v2, Ls/f;->q:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ls/f;->c()V

    iput p1, v2, Ls/f;->q:I

    :goto_0
    iget p1, p0, Ls/c;->n:I

    sget v0, Ls/c;->q:I

    if-lt p1, v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Ls/c;->q:I

    iget-object p1, p0, Ls/c;->m:[Ls/f;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ls/f;

    iput-object p1, p0, Ls/c;->m:[Ls/f;

    :cond_2
    iget-object p1, p0, Ls/c;->m:[Ls/f;

    iget v0, p0, Ls/c;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls/c;->n:I

    aput-object v2, p1, v0

    return-object v2
.end method

.method public final b(Ls/f;Ls/f;IFLs/f;Ls/f;II)V
    .locals 6

    invoke-virtual {p0}, Ls/c;->l()Ls/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p3, p1, v1}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p6, v1}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Ls/a;->g(Ls/f;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p4, v2

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_2

    iget-object p4, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p4, p1, v1}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p2, v3}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p5, v3}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p6, v1}, Ls/a;->g(Ls/f;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, v0, Ls/b;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p4, p1, v3}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p2, v1}, Ls/a;->g(Ls/f;F)V

    int-to-float p1, p3

    iput p1, v0, Ls/b;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p6, v3}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p5, v1}, Ls/a;->g(Ls/f;F)V

    neg-int p1, p7

    int-to-float p1, p1

    iput p1, v0, Ls/b;->b:F

    goto :goto_0

    :cond_4
    iget-object v2, v0, Ls/b;->d:Ls/a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-virtual {v2, p1, v5}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    mul-float v2, v4, v3

    invoke-virtual {p1, p2, v2}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    mul-float/2addr v3, p4

    invoke-virtual {p1, p5, v3}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v0, Ls/b;->d:Ls/a;

    mul-float/2addr v1, p4

    invoke-virtual {p1, p6, v1}, Ls/a;->g(Ls/f;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Ls/b;->b:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    invoke-virtual {v0, p0, p8}, Ls/b;->a(Ls/c;I)V

    :cond_7
    invoke-virtual {p0, v0}, Ls/c;->c(Ls/b;)V

    return-void
.end method

.method public final c(Ls/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ls/c;->j:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Ls/c;->k:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Ls/c;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Ls/c;->e:I

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ls/c;->o()V

    :cond_1
    iget-boolean v2, v1, Ls/b;->e:Z

    if-nez v2, :cond_1f

    iget-object v2, v0, Ls/c;->f:[Ls/b;

    array-length v2, v2

    const/4 v5, -0x1

    if-nez v2, :cond_2

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_8

    iget-object v6, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v6}, Ls/a;->d()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v1, Ls/b;->c:Ljava/util/ArrayList;

    if-ge v7, v6, :cond_4

    iget-object v9, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v9, v7}, Ls/a;->e(I)Ls/f;

    move-result-object v9

    iget v10, v9, Ls/f;->c:I

    if-ne v10, v5, :cond_3

    iget-boolean v10, v9, Ls/f;->f:Z

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls/f;

    iget-boolean v10, v9, Ls/f;->f:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1, v0, v9, v3}, Ls/b;->h(Ls/c;Ls/f;Z)V

    goto :goto_4

    :cond_5
    iget-object v10, v0, Ls/c;->f:[Ls/b;

    iget v9, v9, Ls/f;->c:I

    aget-object v9, v10, v9

    invoke-virtual {v1, v0, v9, v3}, Ls/b;->i(Ls/c;Ls/b;Z)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    iget-object v2, v1, Ls/b;->a:Ls/f;

    if-eqz v2, :cond_9

    iget-object v2, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v2}, Ls/a;->d()I

    move-result v2

    if-nez v2, :cond_9

    iput-boolean v3, v1, Ls/b;->e:Z

    iput-boolean v3, v0, Ls/c;->a:Z

    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ls/b;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    :cond_a
    iget v2, v1, Ls/b;->b:F

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_b

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v2, v7

    iput v2, v1, Ls/b;->b:F

    iget-object v2, v1, Ls/b;->d:Ls/a;

    iget v7, v2, Ls/a;->h:I

    const/4 v8, 0x0

    :goto_6
    const/4 v9, -0x1

    if-eq v7, v9, :cond_b

    iget v9, v2, Ls/a;->a:I

    if-ge v8, v9, :cond_b

    iget-object v9, v2, Ls/a;->g:[F

    aget v10, v9, v7

    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v10, v11

    aput v10, v9, v7

    iget-object v9, v2, Ls/a;->f:[I

    aget v7, v9, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    iget-object v2, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v2}, Ls/a;->d()I

    move-result v2

    const/4 v7, 0x0

    move v11, v6

    move v13, v11

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_7
    if-ge v8, v2, :cond_14

    iget-object v15, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v15, v8}, Ls/a;->f(I)F

    move-result v15

    iget-object v4, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v4, v8}, Ls/a;->e(I)Ls/f;

    move-result-object v4

    iget v5, v4, Ls/f;->q:I

    if-ne v5, v3, :cond_f

    if-nez v9, :cond_d

    iget v5, v4, Ls/f;->p:I

    if-gt v5, v3, :cond_c

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_8
    move-object v9, v4

    move v11, v15

    goto :goto_c

    :cond_d
    cmpl-float v5, v11, v15

    if-lez v5, :cond_e

    iget v5, v4, Ls/f;->p:I

    if-gt v5, v3, :cond_c

    goto :goto_9

    :cond_e
    if-nez v12, :cond_13

    iget v5, v4, Ls/f;->p:I

    if-gt v5, v3, :cond_13

    :goto_9
    move v12, v3

    goto :goto_8

    :cond_f
    if-nez v9, :cond_13

    cmpg-float v5, v15, v6

    if-gez v5, :cond_13

    if-nez v10, :cond_11

    iget v5, v4, Ls/f;->p:I

    if-gt v5, v3, :cond_10

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_a
    move-object v10, v4

    move v13, v15

    goto :goto_c

    :cond_11
    cmpl-float v5, v13, v15

    if-lez v5, :cond_12

    iget v5, v4, Ls/f;->p:I

    if-gt v5, v3, :cond_10

    goto :goto_b

    :cond_12
    if-nez v14, :cond_13

    iget v5, v4, Ls/f;->p:I

    if-gt v5, v3, :cond_13

    :goto_b
    move v14, v3

    goto :goto_a

    :cond_13
    :goto_c
    add-int/lit8 v8, v8, 0x1

    const/4 v5, -0x1

    goto :goto_7

    :cond_14
    if-eqz v9, :cond_15

    goto :goto_d

    :cond_15
    move-object v9, v10

    :goto_d
    if-nez v9, :cond_16

    move v2, v3

    goto :goto_e

    :cond_16
    invoke-virtual {v1, v9}, Ls/b;->g(Ls/f;)V

    const/4 v2, 0x0

    :goto_e
    iget-object v4, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v4}, Ls/a;->d()I

    move-result v4

    if-nez v4, :cond_17

    iput-boolean v3, v1, Ls/b;->e:Z

    :cond_17
    if-eqz v2, :cond_1d

    iget v2, v0, Ls/c;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Ls/c;->e:I

    if-lt v2, v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Ls/c;->o()V

    :cond_18
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ls/c;->a(I)Ls/f;

    move-result-object v2

    iget v4, v0, Ls/c;->b:I

    add-int/2addr v4, v3

    iput v4, v0, Ls/c;->b:I

    iget v5, v0, Ls/c;->i:I

    add-int/2addr v5, v3

    iput v5, v0, Ls/c;->i:I

    iput v4, v2, Ls/f;->b:I

    iget-object v5, v0, Ls/c;->l:LJ2/e;

    iget-object v8, v5, LJ2/e;->d:Ljava/lang/Object;

    check-cast v8, [Ls/f;

    aput-object v2, v8, v4

    iput-object v2, v1, Ls/b;->a:Ls/f;

    iget v4, v0, Ls/c;->j:I

    invoke-virtual/range {p0 .. p1}, Ls/c;->h(Ls/b;)V

    iget v8, v0, Ls/c;->j:I

    add-int/2addr v4, v3

    if-ne v8, v4, :cond_1d

    iget-object v4, v0, Ls/c;->o:Ls/b;

    iput-object v7, v4, Ls/b;->a:Ls/f;

    iget-object v8, v4, Ls/b;->d:Ls/a;

    invoke-virtual {v8}, Ls/a;->b()V

    const/4 v8, 0x0

    :goto_f
    iget-object v9, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v9}, Ls/a;->d()I

    move-result v9

    if-ge v8, v9, :cond_19

    iget-object v9, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v9, v8}, Ls/a;->e(I)Ls/f;

    move-result-object v9

    iget-object v10, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v10, v8}, Ls/a;->f(I)F

    move-result v10

    iget-object v11, v4, Ls/b;->d:Ls/a;

    invoke-virtual {v11, v9, v10, v3}, Ls/a;->a(Ls/f;FZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_19
    iget-object v4, v0, Ls/c;->o:Ls/b;

    invoke-virtual {v0, v4}, Ls/c;->r(Ls/b;)V

    iget v4, v2, Ls/f;->c:I

    const/4 v8, -0x1

    if-ne v4, v8, :cond_1c

    iget-object v4, v1, Ls/b;->a:Ls/f;

    if-ne v4, v2, :cond_1a

    invoke-virtual {v1, v7, v2}, Ls/b;->f([ZLs/f;)Ls/f;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v2}, Ls/b;->g(Ls/f;)V

    :cond_1a
    iget-boolean v2, v1, Ls/b;->e:Z

    if-nez v2, :cond_1b

    iget-object v2, v1, Ls/b;->a:Ls/f;

    invoke-virtual {v2, v0, v1}, Ls/f;->e(Ls/c;Ls/b;)V

    :cond_1b
    iget-object v2, v5, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, LL/c;

    invoke-virtual {v2, v1}, LL/c;->b(Ls/b;)V

    iget v2, v0, Ls/c;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Ls/c;->j:I

    :cond_1c
    move v4, v3

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    :goto_10
    iget-object v2, v1, Ls/b;->a:Ls/f;

    if-eqz v2, :cond_1e

    iget v2, v2, Ls/f;->q:I

    if-eq v2, v3, :cond_20

    iget v2, v1, Ls/b;->b:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1e

    goto :goto_11

    :cond_1e
    return-void

    :cond_1f
    const/4 v4, 0x0

    :cond_20
    :goto_11
    if-nez v4, :cond_21

    invoke-virtual/range {p0 .. p1}, Ls/c;->h(Ls/b;)V

    :cond_21
    return-void
.end method

.method public final d(Ls/f;I)V
    .locals 4

    iget v0, p1, Ls/f;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Ls/f;->d(Ls/c;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Ls/c;->b:I

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Ls/c;->l:LJ2/e;

    iget-object p2, p2, LJ2/e;->d:Ljava/lang/Object;

    check-cast p2, [Ls/f;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v2, :cond_5

    iget-object v3, p0, Ls/c;->f:[Ls/b;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Ls/b;->e:Z

    if-eqz v3, :cond_2

    int-to-float p1, p2

    iput p1, v0, Ls/b;->b:F

    goto :goto_2

    :cond_2
    iget-object v3, v0, Ls/b;->d:Ls/a;

    invoke-virtual {v3}, Ls/a;->d()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v1, v0, Ls/b;->e:Z

    int-to-float p1, p2

    iput p1, v0, Ls/b;->b:F

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ls/c;->l()Ls/b;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/2addr p2, v2

    int-to-float p2, p2

    iput p2, v0, Ls/b;->b:F

    iget-object p2, v0, Ls/b;->d:Ls/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Ls/a;->g(Ls/f;F)V

    goto :goto_1

    :cond_4
    int-to-float p2, p2

    iput p2, v0, Ls/b;->b:F

    iget-object p2, v0, Ls/b;->d:Ls/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Ls/a;->g(Ls/f;F)V

    :goto_1
    invoke-virtual {p0, v0}, Ls/c;->c(Ls/b;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ls/c;->l()Ls/b;

    move-result-object v0

    iput-object p1, v0, Ls/b;->a:Ls/f;

    int-to-float p2, p2

    iput p2, p1, Ls/f;->e:F

    iput p2, v0, Ls/b;->b:F

    iput-boolean v1, v0, Ls/b;->e:Z

    invoke-virtual {p0, v0}, Ls/c;->c(Ls/b;)V

    :goto_2
    return-void
.end method

.method public final e(Ls/f;Ls/f;II)V
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Ls/f;->f:Z

    if-eqz v1, :cond_0

    iget v1, p1, Ls/f;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Ls/f;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Ls/f;->d(Ls/c;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ls/c;->l()Ls/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    iput p3, v1, Ls/b;->b:F

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v2, p1, v3}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v1, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p2, p3}, Ls/a;->g(Ls/f;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Ls/b;->d:Ls/a;

    invoke-virtual {v2, p1, p3}, Ls/a;->g(Ls/f;F)V

    iget-object p1, v1, Ls/b;->d:Ls/a;

    invoke-virtual {p1, p2, v3}, Ls/a;->g(Ls/f;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    invoke-virtual {v1, p0, p4}, Ls/b;->a(Ls/c;I)V

    :cond_4
    invoke-virtual {p0, v1}, Ls/c;->c(Ls/b;)V

    return-void
.end method

.method public final f(Ls/f;Ls/f;II)V
    .locals 3

    invoke-virtual {p0}, Ls/c;->l()Ls/b;

    move-result-object v0

    invoke-virtual {p0}, Ls/c;->m()Ls/f;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Ls/f;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, Ls/b;->b(Ls/f;Ls/f;Ls/f;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, v1}, Ls/a;->c(Ls/f;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Ls/c;->j(I)Ls/f;

    move-result-object p2

    iget-object p3, v0, Ls/b;->d:Ls/a;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Ls/a;->g(Ls/f;F)V

    :cond_0
    invoke-virtual {p0, v0}, Ls/c;->c(Ls/b;)V

    return-void
.end method

.method public final g(Ls/f;Ls/f;II)V
    .locals 3

    invoke-virtual {p0}, Ls/c;->l()Ls/b;

    move-result-object v0

    invoke-virtual {p0}, Ls/c;->m()Ls/f;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Ls/f;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, Ls/b;->c(Ls/f;Ls/f;Ls/f;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Ls/b;->d:Ls/a;

    invoke-virtual {p1, v1}, Ls/a;->c(Ls/f;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Ls/c;->j(I)Ls/f;

    move-result-object p2

    iget-object p3, v0, Ls/b;->d:Ls/a;

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Ls/a;->g(Ls/f;F)V

    :cond_0
    invoke-virtual {p0, v0}, Ls/c;->c(Ls/b;)V

    return-void
.end method

.method public final h(Ls/b;)V
    .locals 7

    iget-boolean v0, p1, Ls/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Ls/b;->a:Ls/f;

    iget p1, p1, Ls/b;->b:F

    invoke-virtual {v0, p0, p1}, Ls/f;->d(Ls/c;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls/c;->f:[Ls/b;

    iget v1, p0, Ls/c;->j:I

    aput-object p1, v0, v1

    iget-object v0, p1, Ls/b;->a:Ls/f;

    iput v1, v0, Ls/f;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ls/c;->j:I

    invoke-virtual {v0, p0, p1}, Ls/f;->e(Ls/c;Ls/b;)V

    :goto_0
    iget-boolean p1, p0, Ls/c;->a:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget v1, p0, Ls/c;->j:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Ls/c;->f:[Ls/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ls/c;->f:[Ls/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Ls/b;->e:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Ls/b;->a:Ls/f;

    iget v3, v1, Ls/b;->b:F

    invoke-virtual {v2, p0, v3}, Ls/f;->d(Ls/c;F)V

    iget-object v2, p0, Ls/c;->l:LJ2/e;

    iget-object v2, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, LL/c;

    invoke-virtual {v2, v1}, LL/c;->b(Ls/b;)V

    iget-object v1, p0, Ls/c;->f:[Ls/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Ls/c;->j:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Ls/c;->f:[Ls/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Ls/b;->a:Ls/f;

    iget v5, v3, Ls/f;->c:I

    if-ne v5, v1, :cond_2

    iput v4, v3, Ls/f;->c:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Ls/c;->f:[Ls/b;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ls/c;->j:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Ls/c;->a:Z

    :cond_7
    return-void
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ls/c;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ls/c;->f:[Ls/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Ls/b;->a:Ls/f;

    iget v1, v1, Ls/b;->b:F

    iput v1, v2, Ls/f;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(I)Ls/f;
    .locals 4

    iget v0, p0, Ls/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ls/c;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ls/c;->o()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ls/c;->a(I)Ls/f;

    move-result-object v0

    iget v1, p0, Ls/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ls/c;->b:I

    iget v2, p0, Ls/c;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ls/c;->i:I

    iput v1, v0, Ls/f;->b:I

    iput p1, v0, Ls/f;->d:I

    iget-object p1, p0, Ls/c;->l:LJ2/e;

    iget-object p1, p1, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, [Ls/f;

    aput-object v0, p1, v1

    iget-object p1, p0, Ls/c;->c:Ls/d;

    iget-object v1, p1, Ls/d;->i:Lj3/G;

    iput-object v0, v1, Lj3/G;->b:Ljava/lang/Object;

    iget-object v1, v0, Ls/f;->m:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget v2, v0, Ls/f;->d:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {p1, v0}, Ls/d;->j(Ls/f;)V

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ls/f;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Ls/c;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Ls/c;->e:I

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Ls/c;->o()V

    :cond_1
    instance-of v1, p1, Lu/c;

    if-eqz v1, :cond_5

    check-cast p1, Lu/c;

    iget-object v0, p1, Lu/c;->i:Ls/f;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lu/c;->h()V

    iget-object p1, p1, Lu/c;->i:Ls/f;

    move-object v0, p1

    :cond_2
    iget p1, v0, Ls/f;->b:I

    iget-object v1, p0, Ls/c;->l:LJ2/e;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    iget v4, p0, Ls/c;->b:I

    if-gt p1, v4, :cond_3

    iget-object v4, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v4, [Ls/f;

    aget-object v4, v4, p1

    if-nez v4, :cond_5

    :cond_3
    if-eq p1, v3, :cond_4

    invoke-virtual {v0}, Ls/f;->c()V

    :cond_4
    iget p1, p0, Ls/c;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Ls/c;->b:I

    iget v3, p0, Ls/c;->i:I

    add-int/2addr v3, v2

    iput v3, p0, Ls/c;->i:I

    iput p1, v0, Ls/f;->b:I

    iput v2, v0, Ls/f;->q:I

    iget-object v1, v1, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, [Ls/f;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public final l()Ls/b;
    .locals 6

    iget-object v0, p0, Ls/c;->l:LJ2/e;

    iget-object v1, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v1, LL/c;

    iget v2, v1, LL/c;->b:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iget-object v4, v1, LL/c;->a:[Ljava/lang/Object;

    aget-object v5, v4, v2

    aput-object v3, v4, v2

    iput v2, v1, LL/c;->b:I

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    check-cast v5, Ls/b;

    if-nez v5, :cond_1

    new-instance v5, Ls/b;

    invoke-direct {v5, v0}, Ls/b;-><init>(LJ2/e;)V

    goto :goto_1

    :cond_1
    iput-object v3, v5, Ls/b;->a:Ls/f;

    iget-object v0, v5, Ls/b;->d:Ls/a;

    invoke-virtual {v0}, Ls/a;->b()V

    const/4 v0, 0x0

    iput v0, v5, Ls/b;->b:F

    const/4 v0, 0x0

    iput-boolean v0, v5, Ls/b;->e:Z

    :goto_1
    return-object v5
.end method

.method public final m()Ls/f;
    .locals 3

    iget v0, p0, Ls/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ls/c;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ls/c;->o()V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ls/c;->a(I)Ls/f;

    move-result-object v0

    iget v1, p0, Ls/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ls/c;->b:I

    iget v2, p0, Ls/c;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ls/c;->i:I

    iput v1, v0, Ls/f;->b:I

    iget-object v2, p0, Ls/c;->l:LJ2/e;

    iget-object v2, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v2, [Ls/f;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final o()V
    .locals 3

    iget v0, p0, Ls/c;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ls/c;->d:I

    iget-object v1, p0, Ls/c;->f:[Ls/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls/b;

    iput-object v0, p0, Ls/c;->f:[Ls/b;

    iget-object v0, p0, Ls/c;->l:LJ2/e;

    iget-object v1, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, [Ls/f;

    iget v2, p0, Ls/c;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ls/f;

    iput-object v1, v0, LJ2/e;->d:Ljava/lang/Object;

    iget v0, p0, Ls/c;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Ls/c;->h:[Z

    iput v0, p0, Ls/c;->e:I

    iput v0, p0, Ls/c;->k:I

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Ls/c;->c:Ls/d;

    invoke-virtual {v0}, Ls/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ls/c;->i()V

    return-void

    :cond_0
    iget-boolean v1, p0, Ls/c;->g:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ls/c;->j:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ls/c;->f:[Ls/b;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Ls/b;->e:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Ls/c;->q(Ls/d;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ls/c;->i()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Ls/c;->q(Ls/d;)V

    :goto_1
    return-void
.end method

.method public final q(Ls/d;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Ls/c;->j:I

    if-ge v2, v3, :cond_d

    iget-object v3, v0, Ls/c;->f:[Ls/b;

    aget-object v3, v3, v2

    iget-object v4, v3, Ls/b;->a:Ls/f;

    iget v4, v4, Ls/f;->q:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v3, v3, Ls/b;->b:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_d

    add-int/2addr v3, v5

    const/4 v6, -0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v6

    move v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Ls/c;->j:I

    if-ge v8, v12, :cond_9

    iget-object v12, v0, Ls/c;->f:[Ls/b;

    aget-object v12, v12, v8

    iget-object v13, v12, Ls/b;->a:Ls/f;

    iget v13, v13, Ls/f;->q:I

    if-ne v13, v5, :cond_1

    goto :goto_6

    :cond_1
    iget-boolean v13, v12, Ls/b;->e:Z

    if-eqz v13, :cond_2

    goto :goto_6

    :cond_2
    iget v13, v12, Ls/b;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_8

    iget-object v13, v12, Ls/b;->d:Ls/a;

    invoke-virtual {v13}, Ls/a;->d()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_8

    iget-object v15, v12, Ls/b;->d:Ls/a;

    invoke-virtual {v15, v14}, Ls/a;->e(I)Ls/f;

    move-result-object v15

    iget-object v1, v12, Ls/b;->d:Ls/a;

    invoke-virtual {v1, v15}, Ls/a;->c(Ls/f;)F

    move-result v1

    cmpg-float v16, v1, v4

    if-gtz v16, :cond_3

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x9

    if-ge v4, v5, :cond_7

    iget-object v5, v15, Ls/f;->l:[F

    aget v5, v5, v4

    div-float/2addr v5, v1

    cmpg-float v17, v5, v7

    if-gez v17, :cond_4

    if-eq v4, v11, :cond_5

    :cond_4
    if-le v4, v11, :cond_6

    :cond_5
    iget v7, v15, Ls/f;->b:I

    move v11, v4

    move v10, v7

    move v9, v8

    move v7, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    if-eq v9, v6, :cond_a

    iget-object v1, v0, Ls/c;->f:[Ls/b;

    aget-object v1, v1, v9

    iget-object v4, v1, Ls/b;->a:Ls/f;

    iput v6, v4, Ls/f;->c:I

    iget-object v4, v0, Ls/c;->l:LJ2/e;

    iget-object v4, v4, LJ2/e;->d:Ljava/lang/Object;

    check-cast v4, [Ls/f;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Ls/b;->g(Ls/f;)V

    iget-object v4, v1, Ls/b;->a:Ls/f;

    iput v9, v4, Ls/f;->c:I

    invoke-virtual {v4, v0, v1}, Ls/f;->e(Ls/c;Ls/b;)V

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    :goto_7
    iget v1, v0, Ls/c;->i:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_b

    const/4 v2, 0x1

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p1}, Ls/c;->r(Ls/b;)V

    invoke-virtual/range {p0 .. p0}, Ls/c;->i()V

    return-void
.end method

.method public final r(Ls/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, Ls/c;->i:I

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Ls/c;->h:[Z

    aput-boolean v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    :goto_1
    if-nez v3, :cond_e

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v0, Ls/c;->i:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v4, v6, :cond_1

    return-void

    :cond_1
    iget-object v6, v1, Ls/b;->a:Ls/f;

    if-eqz v6, :cond_2

    iget-object v7, v0, Ls/c;->h:[Z

    iget v6, v6, Ls/f;->b:I

    aput-boolean v5, v7, v6

    :cond_2
    iget-object v6, v0, Ls/c;->h:[Z

    invoke-virtual {v1, v6}, Ls/b;->d([Z)Ls/f;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v0, Ls/c;->h:[Z

    iget v8, v6, Ls/f;->b:I

    aget-boolean v9, v7, v8

    if-eqz v9, :cond_3

    return-void

    :cond_3
    aput-boolean v5, v7, v8

    :cond_4
    if-eqz v6, :cond_c

    const/4 v7, -0x1

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v2

    move v10, v7

    :goto_2
    iget v11, v0, Ls/c;->j:I

    if-ge v9, v11, :cond_b

    iget-object v11, v0, Ls/c;->f:[Ls/b;

    aget-object v11, v11, v9

    iget-object v12, v11, Ls/b;->a:Ls/f;

    iget v12, v12, Ls/f;->q:I

    if-ne v12, v5, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v12, v11, Ls/b;->e:Z

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    iget-object v12, v11, Ls/b;->d:Ls/a;

    iget v13, v12, Ls/a;->h:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_8

    :cond_7
    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_3
    if-eq v13, v15, :cond_7

    iget v5, v12, Ls/a;->a:I

    if-ge v2, v5, :cond_7

    iget-object v5, v12, Ls/a;->e:[I

    aget v5, v5, v13

    iget v14, v6, Ls/f;->b:I

    if-ne v5, v14, :cond_9

    const/4 v14, 0x1

    goto :goto_4

    :cond_9
    iget-object v5, v12, Ls/a;->f:[I

    aget v13, v5, v13

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :goto_4
    if-eqz v14, :cond_a

    iget-object v2, v11, Ls/b;->d:Ls/a;

    invoke-virtual {v2, v6}, Ls/a;->c(Ls/f;)F

    move-result v2

    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_a

    iget v5, v11, Ls/b;->b:F

    neg-float v5, v5

    div-float/2addr v5, v2

    cmpg-float v2, v5, v8

    if-gez v2, :cond_a

    move v8, v5

    move v10, v9

    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_b
    if-le v10, v7, :cond_d

    iget-object v2, v0, Ls/c;->f:[Ls/b;

    aget-object v2, v2, v10

    iget-object v5, v2, Ls/b;->a:Ls/f;

    iput v7, v5, Ls/f;->c:I

    invoke-virtual {v2, v6}, Ls/b;->g(Ls/f;)V

    iget-object v5, v2, Ls/b;->a:Ls/f;

    iput v10, v5, Ls/f;->c:I

    invoke-virtual {v5, v0, v2}, Ls/f;->e(Ls/c;Ls/b;)V

    goto :goto_6

    :cond_c
    const/4 v3, 0x1

    :cond_d
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method public final s()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ls/c;->j:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ls/c;->f:[Ls/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Ls/c;->l:LJ2/e;

    iget-object v2, v2, LJ2/e;->b:Ljava/lang/Object;

    check-cast v2, LL/c;

    invoke-virtual {v2, v1}, LL/c;->b(Ls/b;)V

    :cond_0
    iget-object v1, p0, Ls/c;->f:[Ls/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ls/c;->l:LJ2/e;

    iget-object v3, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v3, [Ls/f;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ls/f;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, LL/c;

    iget-object v3, p0, Ls/c;->m:[Ls/f;

    iget v4, p0, Ls/c;->n:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    if-le v4, v5, :cond_2

    array-length v4, v3

    :cond_2
    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget v7, v1, LL/c;->b:I

    iget-object v8, v1, LL/c;->a:[Ljava/lang/Object;

    array-length v9, v8

    if-ge v7, v9, :cond_3

    aput-object v6, v8, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, LL/c;->b:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Ls/c;->n:I

    iget-object v1, v2, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, [Ls/f;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Ls/c;->b:I

    iget-object v1, p0, Ls/c;->c:Ls/d;

    iput v0, v1, Ls/d;->h:I

    const/4 v3, 0x0

    iput v3, v1, Ls/b;->b:F

    const/4 v1, 0x1

    iput v1, p0, Ls/c;->i:I

    move v1, v0

    :goto_2
    iget v3, p0, Ls/c;->j:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Ls/c;->f:[Ls/b;

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ls/c;->s()V

    iput v0, p0, Ls/c;->j:I

    new-instance v0, Ls/b;

    invoke-direct {v0, v2}, Ls/b;-><init>(LJ2/e;)V

    iput-object v0, p0, Ls/c;->o:Ls/b;

    return-void
.end method
