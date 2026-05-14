.class public final LY0/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LY0/V;->a:I

    iput-object p2, p0, LY0/V;->c:Ljava/lang/Object;

    iput-object p3, p0, LY0/V;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, LY0/V;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, LY0/V;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/FirebaseUser;

    iget-object v1, p0, LY0/V;->c:Ljava/lang/Object;

    check-cast v1, LY0/V0;

    if-eqz v0, :cond_0

    iget-object v0, v1, LY0/V0;->a:LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v2, v0, Lcom/booklal/booklal/Take_Book_Information;->R:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "AllBook"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    iget-object v3, v1, LY0/V0;->a:LY0/B;

    iget-object v4, v3, LY0/B;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v0, v3, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "displayURL2"

    invoke-virtual {v0, v3, p1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, v1, LY0/V0;->a:LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    const-class v2, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, LY0/V0;->a:LY0/B;

    iget-object v1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->q:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->r:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BOOK_ADDED"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, v0, LY0/B;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, LY0/V;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/FirebaseUser;

    iget-object v1, p0, LY0/V;->c:Ljava/lang/Object;

    check-cast v1, LY0/U0;

    if-eqz v0, :cond_1

    iget-object v0, v1, LY0/U0;->a:LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v2, v0, Lcom/booklal/booklal/Take_Book_Information;->R:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "AllBook"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    iget-object v3, v1, LY0/U0;->a:LY0/B;

    iget-object v4, v3, LY0/B;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v0, v3, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->V:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "displayURL1"

    invoke-virtual {v0, v3, p1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    iget-object p1, v1, LY0/U0;->a:LY0/B;

    iget-object p1, p1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object p1, p1, Lcom/booklal/booklal/Take_Book_Information;->I:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, v1, LY0/U0;->a:LY0/B;

    iget-object v1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    const-class v2, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->q:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->r:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BOOK_ADDED"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/S0;

    iget-object v1, v1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, v0, LY0/B;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, LY0/V;->c:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/ProfileActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v1, p0, LY0/V;->b:Ljava/lang/Object;

    check-cast v1, LD0/e;

    invoke-virtual {p1, v1}, Lu1/a;->i(Landroid/graphics/drawable/Drawable;)Lu1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/booklal/booklal/ProfileActivity;->q:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, LY0/V;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_3

    iget-object v0, p0, LY0/V;->c:Ljava/lang/Object;

    check-cast v0, LY0/X;

    iget-object v0, v0, LY0/X;->a:LY0/U;

    iget-object v0, v0, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "displayURL2"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_3
    return-void

    :pswitch_3
    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, LY0/V;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/FirebaseUser;

    if-eqz v0, :cond_4

    iget-object v0, p0, LY0/V;->c:Ljava/lang/Object;

    check-cast v0, LY0/W;

    iget-object v0, v0, LY0/W;->a:LY0/U;

    iget-object v0, v0, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "displayURL1"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_4
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
