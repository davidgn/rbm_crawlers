.class public final synthetic LY0/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/booklal/booklal/SearchPage;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/SearchPage;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/H0;->a:Lcom/booklal/booklal/SearchPage;

    iput-object p2, p0, LY0/H0;->b:Ljava/util/ArrayList;

    iput-object p3, p0, LY0/H0;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, LY0/H0;->a:Lcom/booklal/booklal/SearchPage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/booklal/booklal/SearchPage;->J:Z

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    iget-object v3, v0, LY0/H0;->b:Ljava/util/ArrayList;

    const/16 v4, 0x8

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v1, v1, Lcom/booklal/booklal/SearchPage;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/QuerySnapshot;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/google/firebase/firestore/QuerySnapshot;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/firebase/firestore/QuerySnapshot;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/DocumentSnapshot;

    iput-object v5, v1, Lcom/booklal/booklal/SearchPage;->F:Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object v5, v1, Lcom/booklal/booklal/SearchPage;->v:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    const-string v6, "BookName"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "BookDescription"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "Publication"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "Author"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "Latitude"

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "Longitude"

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    const-string v10, "City"

    invoke-virtual {v5, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v10, "Unknown"

    :cond_2
    const-string v11, "displayURL1"

    invoke-virtual {v5, v11}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Symbol"

    invoke-virtual {v5, v12}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, " "

    invoke-static {v12, v14}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "SellingPrice"

    invoke-virtual {v5, v14}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v12, "CountryCode"

    invoke-virtual {v5, v12}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    if-eqz v11, :cond_3

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    :cond_3
    const-string v11, "displayURL2"

    invoke-virtual {v5, v11}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    move-object v11, v4

    :cond_4
    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->o:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->p:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v16 .. v23}, LK1/a;->a(DDDD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    const-wide v16, 0x40e86a0000000000L    # 50000.0

    cmpg-double v4, v6, v16

    if-gez v4, :cond_c

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    :cond_5
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    if-eqz v12, :cond_9

    const-string v4, "US"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "GB"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "USA"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "LR"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "MM"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_6
    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x409925604189374cL    # 1609.344

    cmpl-double v4, v18, v20

    const-string v10, " mile away"

    if-lez v4, :cond_8

    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    mul-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    div-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    cmpl-double v4, v18, v6

    if-lez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    const-string v7, " miles away "

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-static {v4, v6, v10}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->d:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-static {v4, v6, v10}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->d:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x407f400000000000L    # 500.0

    cmpl-double v4, v18, v20

    if-lez v4, :cond_a

    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    const-string v7, " km away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->d:Ljava/lang/String;

    goto :goto_2

    :cond_a
    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    mul-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    div-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    cmpg-double v4, v18, v6

    if-gez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    const-string v7, " meter away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->d:Ljava/lang/String;

    goto :goto_2

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/booklal/booklal/SearchPage;->q:Ljava/lang/Double;

    const-string v7, " meters away"

    invoke-static {v4, v6, v7}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/booklal/booklal/SearchPage;->d:Ljava/lang/String;

    :goto_2
    iget-object v4, v1, Lcom/booklal/booklal/SearchPage;->d:Ljava/lang/String;

    move-object v12, v4

    goto :goto_3

    :cond_c
    move-object v12, v10

    :goto_3
    new-instance v4, LY0/e;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v10

    move-object v7, v4

    invoke-direct/range {v7 .. v15}, LY0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_d
    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->s:LY0/j;

    invoke-virtual {v2}, Lu0/y;->d()V

    iget-object v1, v1, Lcom/booklal/booklal/SearchPage;->E:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_e
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, LX1/a;

    iget-object v5, v0, LY0/H0;->c:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v3, v6}, LX1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v1, v1, Lcom/booklal/booklal/SearchPage;->E:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_5
    return-void
.end method
