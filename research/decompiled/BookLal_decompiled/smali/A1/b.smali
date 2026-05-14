.class public final LA1/b;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LA1/b;->d:I

    return v0
.end method

.method public final e(Lu0/W;I)V
    .locals 0

    check-cast p1, LA1/f;

    iget-object p1, p1, LA1/f;->z:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->c()V

    return-void
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v0, LA1/f;

    iget v1, p0, LA1/b;->e:I

    const v2, 0x7f0c00c5

    const/4 v3, 0x0

    invoke-virtual {p2, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    check-cast p1, Lio/supercharge/shimmerlayout/ShimmerLayout;

    iput-object p1, v0, LA1/f;->z:Lio/supercharge/shimmerlayout/ShimmerLayout;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget p2, p0, LA1/b;->l:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerColor(I)V

    iget p2, p0, LA1/b;->f:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    iget-object p2, p0, LA1/b;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget p2, p0, LA1/b;->m:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAnimationDuration(I)V

    iget-boolean p2, p0, LA1/b;->n:Z

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setAnimationReversed(Z)V

    return-object v0
.end method
