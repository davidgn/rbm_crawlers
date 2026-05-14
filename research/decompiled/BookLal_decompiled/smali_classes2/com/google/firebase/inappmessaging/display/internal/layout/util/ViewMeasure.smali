.class public Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private flex:Z

.field private maxHeight:I

.field private maxWidth:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->view:Landroid/view/View;

    iput-boolean p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->flex:Z

    return-void
.end method


# virtual methods
.method public getDesiredHeight()I
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->maxWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->view:Landroid/view/View;

    return-object v0
.end method

.method public isFlex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->flex:Z

    return v0
.end method

.method public preMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->view:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    return-void
.end method

.method public setMaxDimens(II)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->maxWidth:I

    iput p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->maxHeight:I

    return-void
.end method
