.class public final LY0/t;
.super Lu0/I;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/t;->a:I

    iput-object p1, p0, LY0/t;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iget p1, p0, LY0/t;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, LY0/t;->b:Ljava/lang/Object;

    check-cast p1, LY0/S;

    iget-object p1, p1, LY0/S;->d:Lh/i;

    check-cast p1, Lcom/booklal/booklal/Dashboard;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/booklal/booklal/Dashboard;->w0:Ljava/lang/Boolean;

    :cond_0
    return-void

    :pswitch_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, LY0/t;->b:Ljava/lang/Object;

    check-cast p1, LY0/c;

    iget-object p1, p1, LY0/c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/CategoryBookListingActivity;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->Q:Ljava/lang/Boolean;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    iget p2, p0, LY0/t;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p3, p0, LY0/t;->b:Ljava/lang/Object;

    check-cast p3, Lu0/i;

    iget-object v0, p3, Lu0/i;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p3, Lu0/i;->r:I

    sub-int v2, v0, v1

    iget v3, p3, Lu0/i;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    if-lt v1, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p3, Lu0/i;->t:Z

    iget-object v2, p3, Lu0/i;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    iget v6, p3, Lu0/i;->q:I

    sub-int v7, v2, v6

    if-lez v7, :cond_1

    if-lt v6, v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p3, Lu0/i;->u:Z

    iget-boolean v7, p3, Lu0/i;->t:Z

    if-nez v7, :cond_2

    if-nez v3, :cond_2

    iget p1, p3, Lu0/i;->v:I

    if-eqz p1, :cond_6

    invoke-virtual {p3, v4}, Lu0/i;->f(I)V

    goto :goto_2

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v7, :cond_3

    int-to-float p1, p1

    int-to-float v4, v1

    div-float v7, v4, v3

    add-float/2addr v7, p1

    mul-float/2addr v7, v4

    int-to-float p1, v0

    div-float/2addr v7, p1

    float-to-int p1, v7

    iput p1, p3, Lu0/i;->l:I

    mul-int p1, v1, v1

    div-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Lu0/i;->k:I

    :cond_3
    iget-boolean p1, p3, Lu0/i;->u:Z

    if-eqz p1, :cond_4

    int-to-float p1, p2

    int-to-float p2, v6

    div-float v0, p2, v3

    add-float/2addr v0, p1

    mul-float/2addr v0, p2

    int-to-float p1, v2

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p3, Lu0/i;->o:I

    mul-int p1, v6, v6

    div-int/2addr p1, v2

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Lu0/i;->n:I

    :cond_4
    iget p1, p3, Lu0/i;->v:I

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_6

    :cond_5
    invoke-virtual {p3, v5}, Lu0/i;->f(I)V

    :cond_6
    :goto_2
    return-void

    :pswitch_0
    iget-object p1, p0, LY0/t;->b:Ljava/lang/Object;

    check-cast p1, LY0/S;

    iget-object p2, p1, LY0/S;->d:Lh/i;

    check-cast p2, Lcom/booklal/booklal/Dashboard;

    iget-object p3, p2, Lcom/booklal/booklal/Dashboard;->v0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Lu0/F;->v()I

    move-result p3

    iput p3, p2, Lcom/booklal/booklal/Dashboard;->x0:I

    iget-object p1, p1, LY0/S;->d:Lh/i;

    check-cast p1, Lcom/booklal/booklal/Dashboard;

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->v0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Lu0/F;->z()I

    move-result p2

    iput p2, p1, Lcom/booklal/booklal/Dashboard;->y0:I

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->v0:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()I

    move-result p2

    iput p2, p1, Lcom/booklal/booklal/Dashboard;->z0:I

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->q0:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/booklal/booklal/Dashboard;->c0:Z

    if-nez p2, :cond_7

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->w0:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p1, Lcom/booklal/booklal/Dashboard;->x0:I

    iget v0, p1, Lcom/booklal/booklal/Dashboard;->z0:I

    add-int/2addr p2, v0

    iget v0, p1, Lcom/booklal/booklal/Dashboard;->y0:I

    add-int/lit8 v0, v0, -0x2

    if-lt p2, v0, :cond_7

    iput-boolean p3, p1, Lcom/booklal/booklal/Dashboard;->c0:Z

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/booklal/booklal/Dashboard;->w0:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/booklal/booklal/Dashboard;->j(Lcom/booklal/booklal/Dashboard;)V

    goto :goto_3

    :cond_7
    iget-boolean p2, p1, Lcom/booklal/booklal/Dashboard;->c0:Z

    if-nez p2, :cond_8

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->w0:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p1, Lcom/booklal/booklal/Dashboard;->x0:I

    iget v0, p1, Lcom/booklal/booklal/Dashboard;->z0:I

    add-int/2addr p2, v0

    iget v0, p1, Lcom/booklal/booklal/Dashboard;->y0:I

    if-lt p2, v0, :cond_8

    iput-boolean p3, p1, Lcom/booklal/booklal/Dashboard;->c0:Z

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/booklal/booklal/Dashboard;->l(Ljava/util/ArrayList;)V

    :cond_8
    :goto_3
    return-void

    :pswitch_1
    iget-object p1, p0, LY0/t;->b:Ljava/lang/Object;

    check-cast p1, LY0/c;

    iget-object p2, p1, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/CategoryBookListingActivity;

    iget-object p3, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->P:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Lu0/F;->v()I

    move-result p3

    iput p3, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->S:I

    iget-object p1, p1, LY0/c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/CategoryBookListingActivity;

    iget-object p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->P:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Lu0/F;->z()I

    move-result p2

    iput p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->T:I

    iget-object p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->P:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()I

    move-result p2

    iput p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->U:I

    iget-object p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->Q:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->S:I

    iget p3, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->U:I

    add-int/2addr p2, p3

    iget p3, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->T:I

    if-ne p2, p3, :cond_9

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->Q:Ljava/lang/Boolean;

    iget-object p2, p1, Lcom/booklal/booklal/CategoryBookListingActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/booklal/booklal/CategoryBookListingActivity;->j(Ljava/util/ArrayList;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
