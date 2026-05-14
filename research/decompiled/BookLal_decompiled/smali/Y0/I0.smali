.class public final LY0/I0;
.super Lu0/I;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/booklal/booklal/SearchPage;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/SearchPage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/I0;->b:Lcom/booklal/booklal/SearchPage;

    iput-object p2, p0, LY0/I0;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, p0, LY0/I0;->b:Lcom/booklal/booklal/SearchPage;

    iput-object p1, p2, Lcom/booklal/booklal/SearchPage;->A:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, LY0/I0;->b:Lcom/booklal/booklal/SearchPage;

    iget-object p2, p1, Lcom/booklal/booklal/SearchPage;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Lu0/F;->v()I

    move-result p2

    iput p2, p1, Lcom/booklal/booklal/SearchPage;->B:I

    iget-object p2, p1, Lcom/booklal/booklal/SearchPage;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Lu0/F;->z()I

    move-result p2

    iput p2, p1, Lcom/booklal/booklal/SearchPage;->C:I

    iget-object p2, p1, Lcom/booklal/booklal/SearchPage;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0()I

    move-result p2

    iput p2, p1, Lcom/booklal/booklal/SearchPage;->D:I

    iget-object p2, p1, Lcom/booklal/booklal/SearchPage;->A:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lcom/booklal/booklal/SearchPage;->J:Z

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/booklal/booklal/SearchPage;->F:Lcom/google/firebase/firestore/DocumentSnapshot;

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/booklal/booklal/SearchPage;->B:I

    iget p3, p1, Lcom/booklal/booklal/SearchPage;->D:I

    add-int/2addr p2, p3

    iget p3, p1, Lcom/booklal/booklal/SearchPage;->C:I

    add-int/lit8 p3, p3, -0x2

    if-lt p2, p3, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/booklal/booklal/SearchPage;->A:Ljava/lang/Boolean;

    iget-object p2, p1, Lcom/booklal/booklal/SearchPage;->t:Ljava/util/ArrayList;

    iget-object p3, p0, LY0/I0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lcom/booklal/booklal/SearchPage;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
