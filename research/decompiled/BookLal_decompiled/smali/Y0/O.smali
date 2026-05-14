.class public final LY0/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:LI1/a;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/booklal/booklal/Dashboard;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/Dashboard;Ljava/util/ArrayList;LI1/a;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/O;->d:Lcom/booklal/booklal/Dashboard;

    iput-object p2, p0, LY0/O;->a:Ljava/util/ArrayList;

    iput-object p3, p0, LY0/O;->b:LI1/a;

    iput-object p4, p0, LY0/O;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LY0/O;->d:Lcom/booklal/booklal/Dashboard;

    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->q0:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/booklal/booklal/Dashboard;->l0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    :cond_0
    iget-object v2, v0, LY0/O;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/QuerySnapshot;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string v7, "Latitude"

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "Longitude"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    if-eqz v7, :cond_3

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, LI1/a;->a(DD)Z

    move-result v7

    if-eqz v7, :cond_5

    sget v7, LK1/a;->a:I

    iget-object v7, v0, LY0/O;->b:LI1/a;

    iget-wide v13, v7, LI1/a;->a:D

    iget-wide v7, v7, LI1/a;->b:D

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, LK1/a;->a(DDDD)D

    move-result-wide v7

    iget-object v9, v1, Lcom/booklal/booklal/Dashboard;->V:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_3

    iget-object v7, v1, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/booklal/booklal/Dashboard;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a valid geo location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, LY0/O;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/booklal/booklal/Dashboard;->g0:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Lcom/booklal/booklal/Dashboard;->e0:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v1, Lcom/booklal/booklal/Dashboard;->f0:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v1, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_7
    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->c:Ljava/util/ArrayList;

    new-instance v5, LY0/N;

    invoke-direct {v5, v0, v4}, LY0/N;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v1}, Lcom/booklal/booklal/Dashboard;->j(Lcom/booklal/booklal/Dashboard;)V

    :goto_2
    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/booklal/booklal/Dashboard;->l0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
