.class public final LY0/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/auth/FirebaseUser;

.field public final synthetic c:Lcom/google/android/gms/tasks/OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/firebase/auth/FirebaseUser;I)V
    .locals 0

    iput p3, p0, LY0/T0;->a:I

    iput-object p1, p0, LY0/T0;->c:Lcom/google/android/gms/tasks/OnCompleteListener;

    iput-object p2, p0, LY0/T0;->b:Lcom/google/firebase/auth/FirebaseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 4

    iget p1, p0, LY0/T0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LY0/T0;->b:Lcom/google/firebase/auth/FirebaseUser;

    iget-object v0, p0, LY0/T0;->c:Lcom/google/android/gms/tasks/OnCompleteListener;

    check-cast v0, LY0/V0;

    if-eqz p1, :cond_0

    iget-object p1, v0, LY0/V0;->a:LY0/B;

    iget-object p1, p1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, p1, Lcom/booklal/booklal/Take_Book_Information;->R:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "AllBook"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, v0, LY0/V0;->a:LY0/B;

    iget-object v2, v2, LY0/B;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    iput-object v1, p1, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    iget-object p1, v0, LY0/V0;->a:LY0/B;

    iget-object p1, p1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object p1, p1, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "displayURL2"

    const-string v3, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, v0, LY0/V0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    const-class v2, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, v0, LY0/V0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->q:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, LY0/V0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->r:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BOOK_ADDED"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, LY0/V0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, v0, LY0/V0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, v0, LY0/V0;->a:LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object p1, p0, LY0/T0;->b:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p1, :cond_1

    iget-object p1, p0, LY0/T0;->c:Lcom/google/android/gms/tasks/OnCompleteListener;

    check-cast p1, LY0/U0;

    iget-object v0, p1, LY0/U0;->a:LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v0, Lcom/booklal/booklal/Take_Book_Information;->R:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "AllBook"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p1, LY0/U0;->a:LY0/B;

    iget-object v2, v2, LY0/B;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v0, p1, LY0/U0;->a:LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "displayURL"

    const-string v3, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p1, LY0/U0;->a:LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, LY0/U0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    const-class v2, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p1, LY0/U0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->q:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, LY0/U0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->r:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BOOK_ADDED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p1, LY0/U0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, p1, LY0/U0;->a:LY0/B;

    iget-object v1, v1, LY0/B;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p1, LY0/U0;->a:LY0/B;

    iget-object p1, p1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
