.class public final LY0/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/Q;->a:I

    iput-object p1, p0, LY0/Q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    iget v0, p0, LY0/Q;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    iget-object v1, p0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/SellingItems;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    iget-object v2, v1, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    const-string v0, "sellingBookCount"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/booklal/booklal/SellingItems;->J:Ljava/lang/String;

    const-string v2, "userID"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/booklal/booklal/SellingItems;->U:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "SellingScreen"

    invoke-virtual {v0, v2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->N:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, LY0/x0;

    iget-object v0, v1, Lcom/booklal/booklal/SellingItems;->d:Ljava/util/ArrayList;

    invoke-direct {p1, v1, v0}, LY0/x0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, v1, Lcom/booklal/booklal/SellingItems;->L:LY0/x0;

    invoke-virtual {p1}, Lu0/y;->d()V

    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->K:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v1, Lcom/booklal/booklal/SellingItems;->L:LY0/x0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    goto :goto_2

    :cond_1
    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->N:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v1, Lcom/booklal/booklal/SellingItems;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "Searching Books..."

    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    iget-object v2, v1, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v2, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    iput-object v2, v1, Lcom/booklal/booklal/SellingItems;->l:Ljava/lang/String;

    iget-object v2, v1, Lcom/booklal/booklal/SellingItems;->H:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "AllBook"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    iget-object v3, v1, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    new-instance v3, LY0/u;

    invoke-direct {v3, p0, v0, p1}, LY0/u;-><init>(LY0/Q;ILandroid/app/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cached document data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RewardedAdActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string v1, "coins"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result p1

    iget-object v2, p0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v2, Lcom/booklal/booklal/RewardAdActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_3
    iput-wide v3, v2, Lcom/booklal/booklal/RewardAdActivity;->d:J

    iget-object p1, v2, Lcom/booklal/booklal/RewardAdActivity;->c:Landroid/widget/TextView;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iput-wide v3, v2, Lcom/booklal/booklal/RewardAdActivity;->d:J

    iget-object p1, v2, Lcom/booklal/booklal/RewardAdActivity;->c:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, v2, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    new-instance v0, LB2/e;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "coins"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/ManageOTP;

    iput-wide v0, p1, Lcom/booklal/booklal/ManageOTP;->b:J

    goto :goto_4

    :cond_6
    const-string p1, "MainActivityTAG"

    const-string v0, "No such document"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "signInPhoneAllow"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/MainActivity;

    iput-object v0, v1, Lcom/booklal/booklal/MainActivity;->t:Ljava/util/List;

    const-string v0, "coins"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/booklal/booklal/MainActivity;->q:J

    goto :goto_5

    :cond_8
    const-string p1, "MainActivityTAG"

    const-string v0, "No such document"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return-void

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v0

    const-string v1, "Query Result Activity"

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v4, p0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v4, LY0/S;

    if-eqz v0, :cond_b

    iget-object v0, v4, LY0/S;->d:Lh/i;

    check-cast v0, Lcom/booklal/booklal/Dashboard;

    const-string v5, "imageUrl"

    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/booklal/booklal/Dashboard;->T:Ljava/lang/String;

    const-string v0, "adRedirectUrl"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, LY0/S;->d:Lh/i;

    check-cast v5, Lcom/booklal/booklal/Dashboard;

    iput-object v0, v5, Lcom/booklal/booklal/Dashboard;->U:Ljava/lang/String;

    const-string v0, "clicks"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v5, Lcom/booklal/booklal/Dashboard;->T:Ljava/lang/String;

    iget-object v0, v4, LY0/S;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, v5, Lcom/booklal/booklal/Dashboard;->U:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    const-string v1, "Ads"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    const-string v1, "BannerAds"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    const-string v1, "AdConfigs"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v1, v5, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "impressions"

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {v5}, Lcom/bumptech/glide/b;->f(Landroidx/fragment/app/F;)Lcom/bumptech/glide/i;

    move-result-object p1

    iget-object v1, v5, Lcom/booklal/booklal/Dashboard;->T:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    const-string p1, "Banner config values missing"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    iget-object p1, v4, LY0/S;->c:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, v4, LY0/S;->c:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    const-string p1, "No banner ad available"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
