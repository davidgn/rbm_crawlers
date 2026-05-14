.class public final LY0/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lh/i;


# direct methods
.method public synthetic constructor <init>(Lh/i;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    iput p4, p0, LY0/S;->a:I

    iput-object p1, p0, LY0/S;->d:Lh/i;

    iput-object p2, p0, LY0/S;->b:Ljava/lang/Object;

    iput-object p3, p0, LY0/S;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, " "

    const-string v2, "by "

    const-string v3, "showPhone"

    const-string v4, "BookName"

    const-string v5, "PrintedPrice"

    const-string v6, "SellingPrice"

    const-string v7, "Symbol"

    const-string v8, "Author"

    const-string v9, "Publication"

    const-string v10, "BookDescription"

    const-string v11, "user"

    const-string v12, "Front Cover"

    const-string v13, "Back Cover"

    const-string v14, ""

    iget-object v15, v0, LY0/S;->c:Landroid/view/View;

    move-object/from16 v16, v1

    const-string v1, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    move-object/from16 v17, v14

    const-string v14, "displayURL2"

    move-object/from16 v18, v2

    const-string v2, "displayURL1"

    move-object/from16 v19, v3

    iget-object v3, v0, LY0/S;->b:Ljava/lang/Object;

    move-object/from16 v20, v4

    iget-object v4, v0, LY0/S;->d:Lh/i;

    move-object/from16 v21, v5

    iget v5, v0, LY0/S;->a:I

    packed-switch v5, :pswitch_data_0

    move-object/from16 v5, p1

    check-cast v5, Lcom/google/firebase/firestore/DocumentSnapshot;

    check-cast v4, Lcom/booklal/booklal/ShowFullBookImage;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->e:Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->f:Ljava/lang/String;

    :cond_0
    iget-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v5, v4, Lcom/booklal/booklal/ShowFullBookImage;->f:Ljava/lang/String;

    if-nez v5, :cond_1

    iput-object v1, v4, Lcom/booklal/booklal/ShowFullBookImage;->e:Ljava/lang/String;

    iput-object v1, v4, Lcom/booklal/booklal/ShowFullBookImage;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iput-object v1, v4, Lcom/booklal/booklal/ShowFullBookImage;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    iput-object v1, v4, Lcom/booklal/booklal/ShowFullBookImage;->f:Ljava/lang/String;

    :cond_3
    :goto_0
    iget v1, v4, Lcom/booklal/booklal/ShowFullBookImage;->c:I

    check-cast v3, Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, LG1/a;

    iget-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->e:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v12}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LG1/a;

    iget-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->f:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v13}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    new-instance v1, LG1/a;

    iget-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->f:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v13}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LG1/a;

    iget-object v2, v4, Lcom/booklal/booklal/ShowFullBookImage;->e:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v12}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    check-cast v15, Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-virtual {v15, v3, v5}, Lcom/denzcoskun/imageslider/ImageSlider;->a(Ljava/util/ArrayList;I)V

    return-void

    :pswitch_0
    move-object/from16 v5, p1

    check-cast v5, Lcom/google/firebase/firestore/DocumentSnapshot;

    check-cast v4, Lcom/booklal/booklal/ShowBookDetailsActivity;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->f:Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->l:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->z:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->B:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->C:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->E:Ljava/lang/String;

    move-object/from16 v2, v21

    invoke-virtual {v5, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    move-object/from16 v2, v20

    invoke-virtual {v5, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->y:Ljava/lang/String;

    move-object/from16 v2, v19

    invoke-virtual {v5, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->I:Ljava/lang/Boolean;

    :cond_5
    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->e:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v5, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->f:Ljava/lang/String;

    if-nez v5, :cond_6

    iput-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->e:Ljava/lang/String;

    iput-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->f:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    iput-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->e:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->f:Ljava/lang/String;

    if-nez v2, :cond_8

    iput-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->f:Ljava/lang/String;

    :cond_8
    :goto_2
    new-instance v1, LG1/a;

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->e:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v12}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LG1/a;

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->f:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v13}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v15, Lcom/denzcoskun/imageslider/ImageSlider;

    const/4 v1, 0x2

    invoke-virtual {v15, v3, v1}, Lcom/denzcoskun/imageslider/ImageSlider;->a(Ljava/util/ArrayList;I)V

    sget-object v1, LE1/a;->a:LE1/a;

    invoke-virtual {v15, v1}, Lcom/denzcoskun/imageslider/ImageSlider;->setSlideAnimation(LE1/a;)V

    new-instance v1, LC4/o;

    const/16 v2, 0x12

    invoke-direct {v1, v0, v2}, LC4/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v15, v1}, Lcom/denzcoskun/imageslider/ImageSlider;->setItemClickListener(LF1/b;)V

    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->y:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->z:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->B:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->C:Ljava/lang/String;

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->C:Ljava/lang/String;

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->A:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->E:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->E:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->E:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->E:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v3, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-int v3, v7

    iget-object v7, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->E:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-double v8, v3

    sub-double/2addr v8, v5

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_f

    int-to-double v8, v7

    sub-double/2addr v8, v1

    cmpl-double v8, v8, v10

    if-nez v8, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_f
    move-object/from16 v3, v17

    sub-double/2addr v5, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    div-double/2addr v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->A:Ljava/lang/String;

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->A:Ljava/lang/String;

    move-object/from16 v5, v16

    invoke-static {v2, v3, v5, v1}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_10
    move-object/from16 v5, v16

    :goto_4
    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_11
    move-object/from16 v5, v16

    :goto_5
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->A:Ljava/lang/String;

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    :cond_12
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->s:Landroid/widget/TextView;

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_13
    iget-object v1, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->l:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    new-instance v2, LY0/c;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4, v2}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    const-string v2, "ProfileImages/"

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/booklal/booklal/ShowBookDetailsActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, LY0/b;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, LY0/g;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, LY0/g;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_14
    return-void

    :pswitch_1
    move-object/from16 v23, v16

    move-object/from16 v22, v17

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    move-object/from16 v13, p1

    check-cast v13, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {v13, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {v13, v11}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->f:Ljava/lang/String;

    invoke-virtual {v13, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->w:Ljava/lang/String;

    invoke-virtual {v13, v9}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->y:Ljava/lang/String;

    invoke-virtual {v13, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->z:Ljava/lang/String;

    invoke-virtual {v13, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->x:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->B:Ljava/lang/String;

    invoke-virtual {v13, v5}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    invoke-virtual {v13, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->v:Ljava/lang/String;

    invoke-virtual {v13, v15}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->F:Ljava/lang/Boolean;

    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->d:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->e:Ljava/lang/String;

    if-nez v2, :cond_15

    iput-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->d:Ljava/lang/String;

    iput-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->e:Ljava/lang/String;

    goto :goto_6

    :cond_15
    if-nez v0, :cond_16

    iput-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->d:Ljava/lang/String;

    goto :goto_6

    :cond_16
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_17

    iput-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->e:Ljava/lang/String;

    :cond_17
    :goto_6
    new-instance v0, LG1/a;

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v12}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LG1/a;

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->e:Ljava/lang/String;

    move-object/from16 v5, v17

    invoke-direct {v0, v2, v1, v5}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v16

    check-cast v15, Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-virtual {v15, v3, v2}, Lcom/denzcoskun/imageslider/ImageSlider;->a(Ljava/util/ArrayList;I)V

    new-instance v0, LK0/j;

    const/16 v1, 0x12

    move-object/from16 v12, p0

    invoke-direct {v0, v12, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v15, v0}, Lcom/denzcoskun/imageslider/ImageSlider;->setItemClickListener(LF1/b;)V

    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->v:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->z:Ljava/lang/String;

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v13, v18

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->z:Ljava/lang/String;

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v5, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->B:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-double v7, v5

    sub-double/2addr v7, v2

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1e

    int-to-double v7, v6

    sub-double/2addr v7, v0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_1e
    move-object/from16 v5, v22

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->x:Ljava/lang/String;

    move-object/from16 v3, v23

    invoke-static {v1, v2, v3, v0}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_1f
    move-object/from16 v3, v23

    :goto_8
    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_20
    move-object/from16 v3, v23

    :goto_9
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    :cond_21
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->r:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_22
    iget-object v0, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v1, v4, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    new-instance v1, LY0/c;

    const/4 v2, 0x7

    invoke-direct {v1, v12, v2}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v4, v1}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_23
    return-void

    :pswitch_2
    move-object v12, v0

    move-object/from16 v24, v16

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    move-object/from16 v13, p1

    check-cast v13, Lcom/google/firebase/firestore/DocumentSnapshot;

    check-cast v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    if-eqz v13, :cond_24

    invoke-virtual {v13, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->f:Ljava/lang/String;

    invoke-virtual {v13, v11}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v13, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->w:Ljava/lang/String;

    invoke-virtual {v13, v9}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->y:Ljava/lang/String;

    invoke-virtual {v13, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->z:Ljava/lang/String;

    invoke-virtual {v13, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->x:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->A:Ljava/lang/String;

    invoke-virtual {v13, v5}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    invoke-virtual {v13, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->v:Ljava/lang/String;

    const-string v0, "CountryCode"

    invoke-virtual {v13, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->C:Ljava/lang/String;

    invoke-virtual {v13, v15}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->G:Ljava/lang/Boolean;

    :cond_24
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->f:Ljava/lang/String;

    if-nez v2, :cond_25

    iput-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->e:Ljava/lang/String;

    iput-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->f:Ljava/lang/String;

    goto :goto_a

    :cond_25
    if-nez v0, :cond_26

    iput-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->e:Ljava/lang/String;

    goto :goto_a

    :cond_26
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_27

    iput-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->f:Ljava/lang/String;

    :cond_27
    :goto_a
    new-instance v0, LG1/a;

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->e:Ljava/lang/String;

    const-string v2, "Front"

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1, v2}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LG1/a;

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->f:Ljava/lang/String;

    const-string v2, "Back"

    invoke-direct {v0, v5, v1, v2}, LG1/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v16

    check-cast v15, Lcom/denzcoskun/imageslider/ImageSlider;

    const/4 v0, 0x2

    invoke-virtual {v15, v3, v0}, Lcom/denzcoskun/imageslider/ImageSlider;->a(Ljava/util/ArrayList;I)V

    new-instance v0, LK0/j;

    const/16 v1, 0x11

    invoke-direct {v0, v12, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v15, v0}, Lcom/denzcoskun/imageslider/ImageSlider;->setItemClickListener(LF1/b;)V

    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->v:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->z:Ljava/lang/String;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->z:Ljava/lang/String;

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2c
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_30

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->A:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->A:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v5, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->A:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-double v7, v5

    sub-double/2addr v7, v2

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2e

    int-to-double v7, v6

    sub-double/2addr v7, v0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_2e
    move-object/from16 v5, v17

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->x:Ljava/lang/String;

    move-object/from16 v3, v24

    invoke-static {v1, v2, v3, v0}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_2f
    move-object/from16 v3, v24

    :goto_c
    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_30
    move-object/from16 v3, v24

    :goto_d
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_32

    iput-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->D:Ljava/lang/String;

    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    :cond_31
    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->r:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_32
    return-void

    :pswitch_3
    move-object v12, v0

    move-object/from16 v5, v17

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    goto/16 :goto_16

    :cond_33
    check-cast v4, Lcom/booklal/booklal/Dashboard;

    iput-object v0, v4, Lcom/booklal/booklal/Dashboard;->Y:Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object v1, v4, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_45

    const-string v1, "displayname"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Fraud [Flagged]"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "_name"

    if-eqz v7, :cond_34

    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_34
    if-eqz v2, :cond_35

    iget-object v7, v4, Lcom/booklal/booklal/Dashboard;->q:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    :goto_e
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    const-string v7, "NA"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    iget-object v7, v4, Lcom/booklal/booklal/Dashboard;->r:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_36
    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->r:Landroid/widget/TextView;

    const-string v7, "email"

    invoke-virtual {v0, v7}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    const-string v2, "coins"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, v4, Lcom/booklal/booklal/Dashboard;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "blockedSource"

    invoke-virtual {v0, v9}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "city"

    invoke-virtual {v0, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/booklal/booklal/Dashboard;->n0:Ljava/lang/String;

    iget-object v11, v4, Lcom/booklal/booklal/Dashboard;->o0:Ljava/lang/String;

    if-eqz v11, :cond_38

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_39

    :cond_38
    const-string v11, "state"

    invoke-virtual {v0, v11}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/booklal/booklal/Dashboard;->o0:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/booklal/booklal/Dashboard;->n()V

    :cond_39
    iget-boolean v11, v4, Lcom/booklal/booklal/Dashboard;->b0:Z

    const/4 v13, 0x0

    const-string v14, "Blocked"

    check-cast v3, Lcom/google/firebase/firestore/DocumentReference;

    if-nez v11, :cond_3c

    iget-object v11, v4, Lcom/booklal/booklal/Dashboard;->C0:Ljava/util/ArrayList;

    if-eqz v11, :cond_3b

    iget-object v15, v4, Lcom/booklal/booklal/Dashboard;->n0:Ljava/lang/String;

    if-eqz v15, :cond_3b

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3a

    goto :goto_11

    :cond_3a
    :goto_10
    const/4 v11, 0x1

    goto :goto_12

    :cond_3b
    :goto_11
    iget-object v11, v4, Lcom/booklal/booklal/Dashboard;->D0:Ljava/util/ArrayList;

    if-eqz v11, :cond_3c

    iget-object v15, v4, Lcom/booklal/booklal/Dashboard;->o0:Ljava/lang/String;

    if-eqz v15, :cond_3c

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    goto :goto_10

    :goto_12
    iput-boolean v11, v4, Lcom/booklal/booklal/Dashboard;->b0:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v15, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v11, v15}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    new-array v8, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v14, v8}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "blockedBy"

    const-string v6, "Automatic"

    invoke-virtual {v3, v2, v6, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LB/a;

    const/4 v6, 0x2

    invoke-direct {v2, v12, v6}, LB/a;-><init>(Ljava/lang/Object;I)V

    move-object/from16 p2, v14

    const-wide/16 v13, 0xbb8

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v1, p2

    goto :goto_13

    :cond_3c
    move-object v1, v14

    :goto_13
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "border"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    sget-object v2, LY0/X0;->a:LC4/A;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    if-nez v2, :cond_3d

    goto :goto_14

    :cond_3d
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v8

    new-instance v6, LY0/l;

    const/4 v9, 0x3

    invoke-direct {v6, v2, v9}, LY0/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v6}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :goto_14
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    const-string v2, "Your account is disabled due to unlawful activities"

    const/4 v6, 0x1

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v6, LA2/h;

    const/16 v8, 0x9

    invoke-direct {v6, v12, v8}, LA2/h;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v8, 0xfa0

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3e
    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->d0:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v0, v10}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->n0:Ljava/lang/String;

    const-string v2, "country_code"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    if-eqz v2, :cond_3f

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_3f
    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->n0:Ljava/lang/String;

    if-eqz v2, :cond_40

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->n0:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_40
    const-string v2, "Latitude"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    const-string v2, "Longitude"

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    if-eqz v6, :cond_41

    iget-object v8, v4, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    if-eqz v8, :cond_41

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    goto :goto_15

    :cond_41
    if-eqz v6, :cond_42

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    if-nez v6, :cond_43

    :cond_42
    if-eqz v2, :cond_43

    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    if-eqz v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    invoke-static {v2, v6, v5}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    invoke-static {v2, v6, v5}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    :cond_43
    :goto_15
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    const-string v6, "Ads"

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    const-string v6, "BannerAds"

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    const-string v6, "AdConfigs"

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v6, LY0/Q;

    const/4 v8, 0x0

    invoke-direct {v6, v12, v8}, LY0/Q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->b:Ljava/util/ArrayList;

    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->M:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->v0:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Lcom/booklal/booklal/Dashboard;->l(Ljava/util/ArrayList;)V

    new-instance v2, LY0/j;

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-direct {v2, v4, v6}, LY0/j;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->N:LY0/j;

    iget-object v6, v4, Lcom/booklal/booklal/Dashboard;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->N:LY0/j;

    invoke-virtual {v2}, Lu0/y;->d()V

    iget-object v2, v4, Lcom/booklal/booklal/Dashboard;->M:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, LY0/t;

    const/4 v8, 0x1

    invoke-direct {v6, v12, v8}, LY0/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->h(Lu0/I;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v4, Lcom/booklal/booklal/Dashboard;->d0:Ljava/lang/Boolean;

    :cond_44
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    sget v1, Lcom/booklal/booklal/fcm/FirebaseMessageReceiver;->a:I

    const-string v1, "_"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "fb"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "token"

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_45

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_45
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
