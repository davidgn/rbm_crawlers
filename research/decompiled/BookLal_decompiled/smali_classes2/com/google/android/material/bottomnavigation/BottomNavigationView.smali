.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Lu2/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lu2/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Le2/a;->d:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    const v3, 0x7f04006a

    const v4, 0x7f120304

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Ls2/A;->g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)LJ2/e;

    move-result-object p2

    const/4 v0, 0x1

    iget-object v1, p2, LJ2/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/TypedArray;

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    invoke-virtual {p2}, LJ2/e;->M()V

    new-instance p1, Ly3/c;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Ly3/c;-><init>(I)V

    invoke-static {p0, p1}, Ls2/A;->d(Landroid/view/View;Ls2/C;)V

    return-void
.end method


# virtual methods
.method public getMaxItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lu2/k;->getMenuView()Lk/B;

    move-result-object v0

    check-cast v0, Lk2/b;

    iget-boolean v1, v0, Lk2/b;->N:Z

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lk2/b;->setItemHorizontalTranslationEnabled(Z)V

    invoke-virtual {p0}, Lu2/k;->getPresenter()Lu2/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu2/g;->g(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lk2/c;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lu2/k;->setOnItemReselectedListener(Lu2/h;)V

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lk2/d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lu2/k;->setOnItemSelectedListener(Lu2/i;)V

    return-void
.end method
