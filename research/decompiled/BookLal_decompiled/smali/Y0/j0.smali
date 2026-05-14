.class public final synthetic LY0/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/MainActivity;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/MainActivity;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LY0/j0;->a:I

    iput-object p1, p0, LY0/j0;->b:Lcom/booklal/booklal/MainActivity;

    iput-object p2, p0, LY0/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, LY0/j0;->d:Ljava/lang/Object;

    iput-object p4, p0, LY0/j0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, LY0/j0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, LY0/j0;->d:Ljava/lang/Object;

    iget-object v3, p0, LY0/j0;->c:Ljava/lang/Object;

    iget-object v4, p0, LY0/j0;->b:Lcom/booklal/booklal/MainActivity;

    iget v5, p0, LY0/j0;->a:I

    packed-switch v5, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    sget-object v5, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->isEmpty()Z

    move-result p1

    check-cast v3, LY0/k0;

    if-eqz p1, :cond_4

    iget-object p1, v3, LY0/k0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v3, LY0/k0;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayname"

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v5, p1, Lcom/booklal/booklal/MainActivity;->l:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p1, Lcom/booklal/booklal/MainActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v5, p1, Lcom/booklal/booklal/MainActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    const-string v7, "phone"

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x7

    if-le v6, v8, :cond_3

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v5, "NA"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v5, "email"

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "username"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p1, Lcom/booklal/booklal/MainActivity;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "coins"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "isSeller"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, LY0/k0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, LY0/H;

    iget-object v3, v3, LY0/k0;->d:Ljava/lang/Object;

    check-cast v3, Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v3, v4}, LY0/H;-><init>(Lh/i;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/i0;

    invoke-direct {v0, v3, v1}, LY0/i0;-><init>(Landroid/app/ProgressDialog;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2

    :cond_4
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lcom/booklal/booklal/MainActivity;->j(Ljava/lang/String;LY0/k0;)V

    :goto_2
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    sget-object v1, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result p1

    check-cast v3, Landroid/app/ProgressDialog;

    if-eqz p1, :cond_5

    const-string p1, "MainActivityTAG"

    const-string v0, "Existing user login"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/GetCurrentLocation;

    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_5
    check-cast v2, Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    new-instance v1, LY0/k0;

    check-cast v0, Lcom/google/firebase/firestore/DocumentReference;

    invoke-direct {v1, v4, v2, v0, v3}, LY0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v1}, Lcom/booklal/booklal/MainActivity;->j(Ljava/lang/String;LY0/k0;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
