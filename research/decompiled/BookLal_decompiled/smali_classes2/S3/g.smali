.class public final LS3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LS3/g;->c:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Z;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LS3/g;->d:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/protobuf/r;->b:LS3/g;

    return-void
.end method

.method public static D(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->h()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method public static E(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->h()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A(I)V
    .locals 1

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/r;

    invoke-virtual {v0}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method public B(I)V
    .locals 1

    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1
.end method

.method public C()Z
    .locals 3

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/r;

    invoke-virtual {v0}, Lcom/google/protobuf/r;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, LS3/g;->a:I

    iget v2, p0, LS3/g;->b:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/r;->C(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(LB3/b;)V
    .locals 8

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, LS3/g;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x61c88647

    mul-int/2addr v2, v3

    ushr-int/lit8 v4, v2, 0x10

    xor-int/2addr v2, v4

    and-int/2addr v2, v1

    aget-object v4, v0, v2

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v1

    aget-object v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_2
    :goto_0
    aput-object p1, v0, v2

    iget p1, p0, LS3/g;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LS3/g;->b:I

    iget v0, p0, LS3/g;->c:I

    if-lt p1, v0, :cond_7

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v2, -0x1

    new-array v5, v2, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v6, p1, -0x1

    if-eqz p1, :cond_6

    :goto_2
    add-int/lit8 v1, v1, -0x1

    aget-object p1, v0, v1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/2addr p1, v3

    ushr-int/lit8 v7, p1, 0x10

    xor-int/2addr p1, v7

    and-int/2addr p1, v4

    aget-object v7, v5, p1

    if-eqz v7, :cond_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v4

    aget-object v7, v5, p1

    if-nez v7, :cond_4

    :cond_5
    aget-object v7, v0, v1

    aput-object v7, v5, p1

    move p1, v6

    goto :goto_1

    :cond_6
    iput v4, p0, LS3/g;->a:I

    int-to-float p1, v2

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, LS3/g;->c:I

    iput-object v5, p0, LS3/g;->d:Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public b(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, LS3/g;->c:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, [I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget p1, p0, LS3/g;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 4

    iget v0, p0, LS3/g;->c:I

    iget-object v1, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, LS3/g;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, LS3/g;->b:I

    sub-int/2addr v0, v2

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, LS3/g;->c:I

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lu0/F;->i:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->e:LC4/E;

    invoke-virtual {v1}, LC4/E;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->q:Lu0/y;

    invoke-virtual {v1}, Lu0/y;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lu0/F;->i(ILS3/g;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, LS3/g;->a:I

    iget v2, p0, LS3/g;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->j0:Lu0/S;

    invoke-virtual {v0, v1, v2, v3, p0}, Lu0/F;->h(IILu0/S;LS3/g;)V

    :cond_2
    :goto_0
    iget v1, p0, LS3/g;->c:I

    iget v2, v0, Lu0/F;->j:I

    if-le v1, v2, :cond_3

    iput v1, v0, Lu0/F;->j:I

    iput-boolean p2, v0, Lu0/F;->k:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Lu0/L;

    invoke-virtual {p1}, Lu0/L;->m()V

    :cond_3
    return-void
.end method

.method public e()I
    .locals 2

    iget v0, p0, LS3/g;->c:I

    if-eqz v0, :cond_0

    iput v0, p0, LS3/g;->a:I

    const/4 v0, 0x0

    iput v0, p0, LS3/g;->c:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/r;

    invoke-virtual {v0}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iput v0, p0, LS3/g;->a:I

    :goto_0
    iget v0, p0, LS3/g;->a:I

    if-eqz v0, :cond_2

    iget v1, p0, LS3/g;->b:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public f(Ljava/lang/Object;Lcom/google/protobuf/J0;Lcom/google/protobuf/y;)V
    .locals 2

    iget v0, p0, LS3/g;->b:I

    iget v1, p0, LS3/g;->a:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, LS3/g;->b:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/J0;->c(Ljava/lang/Object;LS3/g;Lcom/google/protobuf/y;)V

    iget p1, p0, LS3/g;->a:I

    iget p2, p0, LS3/g;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, LS3/g;->b:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/b0;->h()Lcom/google/protobuf/b0;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, LS3/g;->b:I

    throw p1
.end method

.method public g(Ljava/lang/Object;Lcom/google/protobuf/J0;Lcom/google/protobuf/y;)V
    .locals 4

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/r;

    invoke-virtual {v0}, Lcom/google/protobuf/r;->A()I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/r;->a:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/r;->i(I)I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/r;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/protobuf/r;->a:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/J0;->c(Ljava/lang/Object;LS3/g;Lcom/google/protobuf/y;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r;->a(I)V

    iget p1, v0, Lcom/google/protobuf/r;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/google/protobuf/r;->a:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/r;->h(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/protobuf/b0;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/g;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/g;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->j()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g;->h(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->j()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g;->h(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public i()Lcom/google/protobuf/m;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LS3/g;->B(I)V

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/r;

    invoke-virtual {v0}, Lcom/google/protobuf/r;->k()Lcom/google/protobuf/l;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/util/List;)V
    .locals 2

    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, LS3/g;->i()Lcom/google/protobuf/m;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/r;

    invoke-virtual {v0}, Lcom/google/protobuf/r;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_0

    iput v0, p0, LS3/g;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1
.end method

.method public k(Ljava/util/List;)V
    .locals 6

    instance-of v0, p1, Lcom/google/protobuf/v;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/v;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-static {p1}, LS3/g;->E(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/r;->l()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/protobuf/v;->h(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/r;->l()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/v;->h(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, LS3/g;->E(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/r;->l()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/r;->l()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/O;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public m(Lcom/google/protobuf/m1;Ljava/lang/Class;Lcom/google/protobuf/y;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/protobuf/r;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->w()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, v2}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->u()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, v1}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, LS3/g;->i()Lcom/google/protobuf/m;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0, v0}, LS3/g;->B(I)V

    sget-object p1, Lcom/google/protobuf/D0;->c:Lcom/google/protobuf/D0;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/D0;->a(Ljava/lang/Class;)Lcom/google/protobuf/J0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/J0;->j()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, LS3/g;->g(Ljava/lang/Object;Lcom/google/protobuf/J0;Lcom/google/protobuf/y;)V

    invoke-interface {p1, p2}, Lcom/google/protobuf/J0;->d(Ljava/lang/Object;)V

    return-object p2

    :pswitch_9
    invoke-virtual {p0, v0}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->y()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0, v1}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0, v2}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->o()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->B()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0, v3}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->r()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0, v1}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->p()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-virtual {p0, v2}, LS3/g;->B(I)V

    invoke-virtual {v4}, Lcom/google/protobuf/r;->l()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public n(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/O;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/r;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/r;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_0

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-static {p1}, LS3/g;->D(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int v4, v1, p1

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/r;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/r;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_6

    iput v0, p0, LS3/g;->c:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, LS3/g;->D(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/r;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 6

    instance-of v0, p1, Lcom/google/protobuf/j0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/j0;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-static {p1}, LS3/g;->E(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/r;->o()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/r;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, LS3/g;->E(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/r;->o()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/r;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/D;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/r;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/D;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/r;->p()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/D;->h(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_0

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-static {p1}, LS3/g;->D(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int v4, v1, p1

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/r;->p()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/D;->h(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/r;->p()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_6

    iput v0, p0, LS3/g;->c:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, LS3/g;->D(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/r;->p()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/O;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/j0;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/j0;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->r()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->r()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->r()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public s(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/O;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/r;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/r;->t()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_0

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-static {p1}, LS3/g;->D(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int v4, v1, p1

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/r;->t()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/r;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_6

    iput v0, p0, LS3/g;->c:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, LS3/g;->D(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/r;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 6

    instance-of v0, p1, Lcom/google/protobuf/j0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/j0;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-static {p1}, LS3/g;->E(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/r;->u()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/r;->u()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, LS3/g;->E(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/r;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/r;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/O;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/j0;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/j0;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->w()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->w()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public w(Ljava/util/List;Z)V
    .locals 4

    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/protobuf/f0;

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/f0;

    :cond_0
    invoke-virtual {p0}, LS3/g;->i()Lcom/google/protobuf/m;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/f0;->c(Lcom/google/protobuf/m;)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget p2, p0, LS3/g;->a:I

    if-eq p1, p2, :cond_0

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, v1}, LS3/g;->B(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, LS3/g;->B(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->x()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v3, p0, LS3/g;->a:I

    if-eq v0, v3, :cond_2

    iput v0, p0, LS3/g;->c:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1
.end method

.method public x(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/O;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O;->h(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public y(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/j0;

    const/4 v1, 0x2

    iget-object v2, p0, LS3/g;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/j0;

    iget p1, p0, LS3/g;->a:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/r;->B()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/r;->B()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/j0;->h(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result p1

    iget v1, p0, LS3/g;->a:I

    if-eq p1, v1, :cond_2

    iput p1, p0, LS3/g;->c:I

    return-void

    :cond_4
    iget v0, p0, LS3/g;->a:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/r;->A()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/r;->B()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, LS3/g;->A(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/r;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/r;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/r;->z()I

    move-result v0

    iget v1, p0, LS3/g;->a:I

    if-eq v0, v1, :cond_7

    iput v0, p0, LS3/g;->c:I

    return-void
.end method

.method public z([Ljava/lang/Object;II)V
    .locals 4

    iget v0, p0, LS3/g;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LS3/g;->b:I

    :goto_0
    add-int/lit8 v0, p2, 0x1

    :goto_1
    and-int/2addr v0, p3

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    const/4 p3, 0x0

    aput-object p3, p1, p2

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x61c88647

    mul-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    and-int/2addr v2, p3

    if-gt p2, v0, :cond_1

    if-ge p2, v2, :cond_2

    if-le v2, v0, :cond_3

    goto :goto_2

    :cond_1
    if-lt p2, v2, :cond_3

    if-le v2, v0, :cond_3

    :cond_2
    :goto_2
    aput-object v1, p1, p2

    move p2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
