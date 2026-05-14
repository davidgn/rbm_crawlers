.class public final LY0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LY0/h;->a:I

    iput-object p2, p0, LY0/h;->c:Ljava/lang/Object;

    iput-object p3, p0, LY0/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 7

    iget p2, p0, LY0/h;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p1, p0, LY0/h;->c:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/SellingItems;

    iget-object p2, p1, Lcom/booklal/booklal/SellingItems;->G:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, LY0/h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/DocumentReference;

    const-string v2, "token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p1, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p1, p0, LY0/h;->c:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/CategorySelection;

    iget-object p2, p1, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, LY0/h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/DocumentReference;

    const-string v2, "token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p1, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p1, p0, LY0/h;->c:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/AllChatsActivity;

    iget-object p2, p1, Lcom/booklal/booklal/AllChatsActivity;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, LY0/h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/DocumentReference;

    const-string v2, "token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p1, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    :cond_2
    return-void

    :pswitch_2
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/h;->c:Ljava/lang/Object;

    check-cast p2, LK0/j;

    iget-object v0, p2, LK0/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/AllChatsActivity;

    const-string v1, "displayname"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/AllChatsActivity;->K:Ljava/lang/String;

    const-string v0, "isVerified"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "profileURL"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, LK0/j;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/AllChatsActivity;

    iput-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->L:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "ABC"

    iput-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->L:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/booklal/booklal/AllChatsActivity;->M:I

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->K:Ljava/lang/String;

    :cond_4
    iget-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->H:Ljava/util/ArrayList;

    new-instance v6, Lcom/booklal/booklal/User;

    iget-object v0, p0, LY0/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/User;

    invoke-virtual {v0}, Lcom/booklal/booklal/User;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/booklal/booklal/AllChatsActivity;->K:Ljava/lang/String;

    iget-object v4, p2, Lcom/booklal/booklal/AllChatsActivity;->L:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/booklal/booklal/User;->getStringTimeStamp()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/booklal/booklal/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->I:LY0/C0;

    invoke-virtual {p1}, Lu0/y;->d()V

    iget-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->A:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
