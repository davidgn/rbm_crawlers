.class public final LY0/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/booklal/booklal/Dashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/Dashboard;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, LY0/P;->a:I

    iput-object p1, p0, LY0/P;->c:Lcom/booklal/booklal/Dashboard;

    iput-object p2, p0, LY0/P;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, LY0/P;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    const/16 v2, 0x8

    iget-object v3, v0, LY0/P;->c:Lcom/booklal/booklal/Dashboard;

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, LY0/P;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v6, "BookName"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->P:Ljava/lang/String;

    const-string v6, "BookDescription"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->Q:Ljava/lang/String;

    const-string v6, "Publication"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->C:Ljava/lang/String;

    const-string v6, "Latitude"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    const-string v6, "Longitude"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    const-string v6, "City"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, "Unknown"

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    :cond_1
    const-string v6, "displayURL1"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    const-string v6, "Symbol"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->L:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/booklal/booklal/Dashboard;->L:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SellingPrice"

    invoke-virtual {v4, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->K:Ljava/lang/String;

    const-string v6, "CountryCode"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v6, "Author"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->R:Ljava/lang/String;

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    const-string v7, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    if-nez v6, :cond_3

    :cond_2
    const-string v6, "displayURL2"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    if-nez v4, :cond_3

    iput-object v7, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    :cond_3
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, LK1/a;->a(DDDD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v10, 0x40e86a0000000000L    # 50000.0

    cmpg-double v4, v6, v10

    if-gez v4, :cond_a

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    :cond_4
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    if-eqz v4, :cond_7

    const-string v8, "US"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "GB"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "USA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "LR"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "MM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x409925604189374cL    # 1609.344

    cmpl-double v4, v10, v12

    if-lez v4, :cond_6

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " miles away "

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " mile away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x407f400000000000L    # 500.0

    cmpl-double v4, v10, v12

    if-lez v4, :cond_8

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " km away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpg-double v4, v6, v10

    if-gez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " meter away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto :goto_1

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " meters away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    :goto_1
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    :cond_a
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, LY0/e;

    iget-object v7, v3, Lcom/booklal/booklal/Dashboard;->P:Ljava/lang/String;

    iget-object v8, v3, Lcom/booklal/booklal/Dashboard;->Q:Ljava/lang/String;

    iget-object v10, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    iget-object v11, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    iget-object v12, v3, Lcom/booklal/booklal/Dashboard;->C:Ljava/lang/String;

    iget-object v13, v3, Lcom/booklal/booklal/Dashboard;->K:Ljava/lang/String;

    iget-object v14, v3, Lcom/booklal/booklal/Dashboard;->R:Ljava/lang/String;

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, LY0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v1, v3, Lcom/booklal/booklal/Dashboard;->N:LY0/j;

    invoke-virtual {v1}, Lu0/y;->d()V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/booklal/booklal/Dashboard;->c0:Z

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->g0:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->e0:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->f0:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/QuerySnapshot;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/DocumentSnapshot;

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->B0:Lcom/google/firebase/firestore/DocumentSnapshot;

    :cond_e
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->g0:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->e0:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->f0:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v3, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v2, v3, Lcom/booklal/booklal/Dashboard;->l0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_3

    :cond_f
    iget-object v1, v3, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    const/16 v2, 0x8

    iget-object v3, v0, LY0/P;->c:Lcom/booklal/booklal/Dashboard;

    if-eqz v1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v1

    const/4 v4, 0x6

    if-ge v1, v4, :cond_10

    iget-object v1, v3, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, LY0/P;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v6, "BookName"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->P:Ljava/lang/String;

    const-string v6, "BookDescription"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->Q:Ljava/lang/String;

    const-string v6, "Publication"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->C:Ljava/lang/String;

    const-string v6, "Latitude"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    const-string v6, "Longitude"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    const-string v6, "City"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    if-nez v6, :cond_12

    const-string v6, "Unknown"

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    :cond_12
    const-string v6, "displayURL1"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    const-string v6, "Symbol"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->L:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/booklal/booklal/Dashboard;->L:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SellingPrice"

    invoke-virtual {v4, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->K:Ljava/lang/String;

    const-string v6, "CountryCode"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v6, "Author"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Dashboard;->R:Ljava/lang/String;

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    const-string v7, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    if-nez v6, :cond_14

    :cond_13
    const-string v6, "displayURL2"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    if-nez v4, :cond_14

    iput-object v7, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    :cond_14
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    if-eqz v4, :cond_1b

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    if-eqz v4, :cond_1b

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, LK1/a;->a(DDDD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v10, 0x40e86a0000000000L    # 50000.0

    cmpg-double v4, v6, v10

    if-gez v4, :cond_1b

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    :cond_15
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    if-eqz v4, :cond_18

    const-string v8, "US"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "GB"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "USA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "LR"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "MM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_16
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x409925604189374cL    # 1609.344

    cmpl-double v4, v10, v12

    if-lez v4, :cond_17

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " miles away "

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto/16 :goto_5

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " mile away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto/16 :goto_5

    :cond_18
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x407f400000000000L    # 500.0

    cmpl-double v4, v10, v12

    if-lez v4, :cond_19

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " km away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto :goto_5

    :cond_19
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpg-double v4, v6, v10

    if-gez v4, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " meter away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto :goto_5

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v7, " meters away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    :goto_5
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    :cond_1b
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, LY0/e;

    iget-object v7, v3, Lcom/booklal/booklal/Dashboard;->P:Ljava/lang/String;

    iget-object v8, v3, Lcom/booklal/booklal/Dashboard;->Q:Ljava/lang/String;

    iget-object v10, v3, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    iget-object v11, v3, Lcom/booklal/booklal/Dashboard;->D:Ljava/lang/String;

    iget-object v12, v3, Lcom/booklal/booklal/Dashboard;->C:Ljava/lang/String;

    iget-object v13, v3, Lcom/booklal/booklal/Dashboard;->K:Ljava/lang/String;

    iget-object v14, v3, Lcom/booklal/booklal/Dashboard;->R:Ljava/lang/String;

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, LY0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1c
    iget-object v1, v3, Lcom/booklal/booklal/Dashboard;->N:LY0/j;

    invoke-virtual {v1}, Lu0/y;->d()V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/booklal/booklal/Dashboard;->c0:Z

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->g0:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->e0:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->f0:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/QuerySnapshot;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/DocumentSnapshot;

    iput-object v4, v3, Lcom/booklal/booklal/Dashboard;->B0:Lcom/google/firebase/firestore/DocumentSnapshot;

    :cond_1e
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->g0:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->e0:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->f0:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v3, Lcom/booklal/booklal/Dashboard;->l0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_7

    :cond_1f
    iget-object v1, v3, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
