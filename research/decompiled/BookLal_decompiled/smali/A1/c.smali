.class public final LA1/c;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic E:I

.field public final synthetic F:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;


# direct methods
.method public constructor <init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;I)V
    .locals 0

    iput p2, p0, LA1/c;->E:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, LA1/c;->F:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void

    :pswitch_0
    iput-object p1, p0, LA1/c;->F:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget v0, p0, LA1/c;->E:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LA1/c;->F:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    iget-boolean v0, v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->O0:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Z
    .locals 1

    iget v0, p0, LA1/c;->E:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->e()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LA1/c;->F:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    iget-boolean v0, v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->O0:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
