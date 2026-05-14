.class public final Lu0/u;
.super Lu0/s;
.source "SourceFile"


# instance fields
.field public final synthetic q:Lu0/v;


# direct methods
.method public constructor <init>(Lu0/v;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lu0/u;->q:Lu0/v;

    invoke-direct {p0, p2}, Lu0/s;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final c(I)I
    .locals 1

    const/16 v0, 0x64

    invoke-super {p0, p1}, Lu0/s;->c(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final f(Landroid/view/View;Lu0/P;)V
    .locals 6

    iget-object v0, p0, Lu0/u;->q:Lu0/v;

    iget-object v1, v0, Lu0/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lu0/F;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lu0/v;->a(Lu0/F;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lu0/u;->c(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lu0/s;->j:Landroid/view/animation/DecelerateInterpolator;

    iput v0, p2, Lu0/P;->a:I

    iput p1, p2, Lu0/P;->b:I

    iput v2, p2, Lu0/P;->c:I

    iput-object v3, p2, Lu0/P;->e:Landroid/view/animation/BaseInterpolator;

    iput-boolean v1, p2, Lu0/P;->f:Z

    :cond_0
    return-void
.end method
