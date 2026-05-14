.class public final synthetic LY0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh/i;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh/i;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LY0/H;->a:I

    iput-object p1, p0, LY0/H;->b:Lh/i;

    iput-object p2, p0, LY0/H;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LY0/H;->c:Ljava/lang/Object;

    iget-object v1, p0, LY0/H;->b:Lh/i;

    iget v2, p0, LY0/H;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    sget v2, Lcom/booklal/booklal/SearchPage;->K:I

    check-cast v1, Lcom/booklal/booklal/SearchPage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->f:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Blocked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "Your account has been disabled."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, LB/a;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, LB/a;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->u:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "city"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/booklal/booklal/SearchPage;->y:Ljava/lang/String;

    const-string v2, "country_code"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->x:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_3
    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->y:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->y:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_4
    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->c:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->b:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->o:Ljava/lang/Double;

    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->p:Ljava/lang/Double;

    goto :goto_0

    :cond_5
    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->p:Ljava/lang/Double;

    if-eqz p1, :cond_6

    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->o:Ljava/lang/Double;

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->o:Ljava/lang/Double;

    const-string v4, ""

    invoke-static {p1, v2, v4}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->p:Ljava/lang/Double;

    invoke-static {p1, v2, v4}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->c:Ljava/lang/String;

    :cond_6
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->t:Ljava/util/ArrayList;

    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->t:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Lcom/booklal/booklal/SearchPage;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p1, LY0/j;

    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->t:Ljava/util/ArrayList;

    invoke-direct {p1, v1, v2}, LY0/j;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->s:LY0/j;

    iget-object v2, v1, Lcom/booklal/booklal/SearchPage;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    iget-object p1, v1, Lcom/booklal/booklal/SearchPage;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, LY0/I0;

    invoke-direct {v2, v1, v0}, LY0/I0;-><init>(Lcom/booklal/booklal/SearchPage;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->h(Lu0/I;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v1, Lcom/booklal/booklal/SearchPage;->u:Ljava/lang/Boolean;

    :cond_7
    :goto_1
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    check-cast v1, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "MainActivityTAG"

    const-string v2, "New user created"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/GetCurrentLocation;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    sget v2, Lcom/booklal/booklal/Dashboard;->G0:I

    check-cast v1, Lcom/booklal/booklal/Dashboard;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "borderBlockInKm"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "blockBorderState"

    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "blockedCity"

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v5, "blockedState"

    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v3}, Lcom/booklal/booklal/Dashboard;->k(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/booklal/booklal/Dashboard;->E0:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/booklal/booklal/Dashboard;->k(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/booklal/booklal/Dashboard;->C0:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/booklal/booklal/Dashboard;->k(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/Dashboard;->D0:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_8

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_8

    iput-wide v2, v1, Lcom/booklal/booklal/Dashboard;->Z:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "border states="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/booklal/booklal/Dashboard;->E0:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CONFIG"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    check-cast v0, LY0/E;

    invoke-virtual {v0}, LY0/E;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
