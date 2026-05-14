.class public Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public J0:Lu0/y;

.field public final K0:LA1/b;

.field public L0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public M0:Lu0/F;

.field public N0:LA1/e;

.field public O0:Z

.field public P0:I

.field public Q0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, LA1/b;

    invoke-direct {v0}, Lu0/y;-><init>()V

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->K0:LA1/b;

    sget-object v0, LA1/a;->a:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const v0, 0x7f0c006b

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoLayoutReference(I)V

    const/16 p2, 0xa

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoChildCount(I)V

    const/4 p2, 0x3

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setGridChildCount(I)V

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    if-ne p2, v2, :cond_0

    sget-object p2, LA1/e;->c:LA1/e;

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoLayoutManager(LA1/e;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "This value for layout manager is not valid!"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object p2, LA1/e;->b:LA1/e;

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoLayoutManager(LA1/e;)V

    goto :goto_0

    :cond_2
    sget-object p2, LA1/e;->a:LA1/e;

    invoke-virtual {p0, p2}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setDemoLayoutManager(LA1/e;)V

    :goto_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f060047

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x5dc

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->K0:LA1/b;

    iput p2, p1, LA1/b;->f:I

    iput v0, p1, LA1/b;->l:I

    iput-object v3, p1, LA1/b;->o:Landroid/graphics/drawable/Drawable;

    iput v2, p1, LA1/b;->m:I

    iput-boolean v1, p1, LA1/b;->n:Z

    invoke-virtual {p0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->i0()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getActualAdapter()Lu0/y;
    .locals 1

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->J0:Lu0/y;

    return-object v0
.end method

.method public getLayoutReference()I
    .locals 1

    iget v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->P0:I

    return v0
.end method

.method public final i0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->O0:Z

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->L0:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->N0:LA1/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LA1/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget v1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->Q0:I

    invoke-direct {v0, p0, v1}, LA1/d;-><init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;I)V

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->L0:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_1
    new-instance v0, LA1/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LA1/c;-><init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;I)V

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->L0:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_2
    new-instance v0, LA1/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LA1/c;-><init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;I)V

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->L0:Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->L0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setLayoutManager(Lu0/F;)V

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->K0:LA1/b;

    invoke-virtual {p0, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setAdapter(Lu0/y;)V

    return-void
.end method

.method public setAdapter(Lu0/y;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->J0:Lu0/y;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->K0:LA1/b;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->J0:Lu0/y;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    return-void
.end method

.method public setDemoChildCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->K0:LA1/b;

    iput p1, v0, LA1/b;->d:I

    return-void
.end method

.method public setDemoLayoutManager(LA1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->N0:LA1/e;

    return-void
.end method

.method public setDemoLayoutReference(I)V
    .locals 1

    iput p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->P0:I

    iget-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->K0:LA1/b;

    invoke-virtual {p0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->getLayoutReference()I

    move-result v0

    iput v0, p1, LA1/b;->e:I

    return-void
.end method

.method public setDemoShimmerDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->K0:LA1/b;

    iput p1, v0, LA1/b;->m:I

    return-void
.end method

.method public setGridChildCount(I)V
    .locals 0

    iput p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->Q0:I

    return-void
.end method

.method public setLayoutManager(Lu0/F;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->M0:Lu0/F;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->L0:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->M0:Lu0/F;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    return-void
.end method
