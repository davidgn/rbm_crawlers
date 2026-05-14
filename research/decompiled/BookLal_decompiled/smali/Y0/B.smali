.class public final LY0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(LY0/C;Ljava/lang/String;Lcom/booklal/booklal/Message;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LY0/B;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/B;->d:Landroid/view/View$OnClickListener;

    iput-object p2, p0, LY0/B;->b:Ljava/lang/String;

    iput-object p3, p0, LY0/B;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LY0/S0;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LY0/B;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/B;->d:Landroid/view/View$OnClickListener;

    iput-object p2, p0, LY0/B;->c:Ljava/lang/Object;

    iput-object p3, p0, LY0/B;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, LY0/B;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSuccess: Service provider  added for userID="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/S0;

    iget-object v1, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v1, v1, Lcom/booklal/booklal/Take_Book_Information;->O:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Take_Book_Information"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iget-object v0, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iput-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->R:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "users"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v1, v0, Lcom/booklal/booklal/Take_Book_Information;->O:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    iget v1, v0, Lcom/booklal/booklal/Take_Book_Information;->N:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "count"

    invoke-virtual {p1, v4, v1, v3}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "coins"

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->H:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->I:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->I:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/booklal/booklal/Take_Book_Information;->q:Ljava/lang/String;

    const-string v2, "g1"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/booklal/booklal/Take_Book_Information;->r:Ljava/lang/String;

    const-string v2, "g2"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BOOK_ADDED"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, LY0/B;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->H:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, ".jpeg"

    const-string v2, "BookImages/"

    const-string v3, "temp"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-static {v0}, Ld3/a;->v(Landroid/content/Context;)Ld3/a;

    move-result-object v4

    iget-object v5, v0, Lcom/booklal/booklal/Take_Book_Information;->J:Landroid/net/Uri;

    invoke-static {v0, v5}, LL4/d;->u(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Ld3/a;->s(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/booklal/booklal/Take_Book_Information;->S:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v5, v2}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/booklal/booklal/Take_Book_Information;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v4

    new-instance v5, LY0/U0;

    invoke-direct {v5, p0}, LY0/U0;-><init>(LY0/B;)V

    invoke-virtual {v4, v5}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->I:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-static {v0}, Ld3/a;->v(Landroid/content/Context;)Ld3/a;

    move-result-object v4

    iget-object v5, v0, Lcom/booklal/booklal/Take_Book_Information;->K:Landroid/net/Uri;

    invoke-static {v0, v5}, LL4/d;->u(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Ld3/a;->s(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/booklal/booklal/Take_Book_Information;->S:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v4, v2}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->t:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v0

    new-instance v1, LY0/V0;

    invoke-direct {v1, p0}, LY0/V0;-><init>(LY0/B;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/C;

    iget-object v0, p1, LY0/C;->e:Landroid/content/Context;

    check-cast v0, Lcom/booklal/booklal/ChatActivity;

    iget-object v0, v0, Lcom/booklal/booklal/ChatActivity;->f:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "chats"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object p1, p1, LY0/C;->e:Landroid/content/Context;

    check-cast p1, Lcom/booklal/booklal/ChatActivity;

    iget-object p1, p1, Lcom/booklal/booklal/ChatActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v0, p0, LY0/B;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v0, p0, LY0/B;->c:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Message;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
