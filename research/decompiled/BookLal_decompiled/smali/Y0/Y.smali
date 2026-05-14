.class public final LY0/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    iput p3, p0, LY0/Y;->a:I

    iput-object p1, p0, LY0/Y;->c:Ljava/lang/Object;

    iput-object p2, p0, LY0/Y;->b:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "Reported."

    const-string v4, "books"

    const-string v5, "reports"

    const-string v6, "Reporting..."

    const-string v7, "You reported this listing."

    const-string v9, "android.permission.READ_MEDIA_IMAGES"

    const-string v11, "android.permission.CAMERA"

    const-string v12, "Take Picture"

    const-string v14, "Cancel"

    const-string v2, "android.intent.action.PICK"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v13, "Choose from Gallery"

    iget-object v15, v0, LY0/Y;->c:Ljava/lang/Object;

    iget-object v8, v0, LY0/Y;->b:Ljava/io/Serializable;

    iget v10, v0, LY0/Y;->a:I

    packed-switch v10, :pswitch_data_0

    check-cast v8, [Ljava/lang/CharSequence;

    aget-object v1, v8, p2

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    check-cast v15, Lcom/booklal/booklal/Take_Book_Information;

    if-eqz v1, :cond_1

    invoke-static {v15, v11}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v15, v1, v2}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/booklal/booklal/Take_Book_Information;->k0:Ljava/util/HashMap;

    invoke-virtual {v15}, Lcom/booklal/booklal/Take_Book_Information;->o()V

    goto :goto_1

    :cond_1
    aget-object v1, v8, p2

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v1, v4, :cond_3

    invoke-static {v15, v3}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v15, v9}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_5

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v15, v1, v4}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    invoke-static {v15, v3}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v15, v9}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_5

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v4}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_5
    :goto_0
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-virtual {v15, v1, v2}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_6
    aget-object v1, v8, p2

    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_7
    :goto_1
    return-void

    :pswitch_0
    check-cast v15, Lcom/booklal/booklal/ShowBookDetailsActivity;

    iget-object v2, v15, Lcom/booklal/booklal/ShowBookDetailsActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v6

    iput-object v6, v15, Lcom/booklal/booklal/ShowBookDetailsActivity;->c:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v6, v15, Lcom/booklal/booklal/ShowBookDetailsActivity;->c:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v6, v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8, v5, v3}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v2, 0x1

    invoke-static {v15, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    check-cast v15, LY0/x0;

    iget-object v2, v15, LY0/x0;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "Deleting Book..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    iput-object v2, v15, LY0/x0;->l:Ljava/lang/Object;

    iget-object v2, v15, LY0/x0;->l:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "AllBook"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g0;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LY0/g0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, LY0/g;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    iput-object v2, v15, LY0/x0;->m:Ljava/lang/Object;

    iget-object v2, v15, LY0/x0;->m:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/storage/FirebaseStorage;

    const-string v3, "BookImages/"

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "P1.jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v4, LY0/g0;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, LY0/g0;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v4, LY0/g;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, LY0/g;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, v15, LY0/x0;->m:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "P2.jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g0;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, LY0/g0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, LY0/g;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, v15, LY0/x0;->f:Landroid/content/Context;

    const-string v2, "Book Deleted..."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v15, LY0/x0;->f:Landroid/content/Context;

    const-class v3, Lcom/booklal/booklal/SellingItems;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "bookKey"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v15, LY0/x0;->f:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    check-cast v15, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;

    iget-object v2, v15, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v6

    iput-object v6, v15, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v6, v15, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v6, v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8, v5, v3}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v2, 0x1

    invoke-static {v15, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_3
    check-cast v8, [Ljava/lang/CharSequence;

    aget-object v1, v8, p2

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    check-cast v15, Lcom/booklal/booklal/Edit_Profile_Activity;

    const/16 v4, 0x21

    if-ge v1, v4, :cond_9

    invoke-static {v15, v3}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v15, v9}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_b

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v15, v1, v4}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_9
    const/4 v4, 0x1

    invoke-static {v15, v3}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v15, v9}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_b

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v4}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_b
    :goto_2
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-virtual {v15, v1, v2}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_c
    aget-object v1, v8, p2

    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_d
    :goto_3
    return-void

    :pswitch_4
    check-cast v8, [Ljava/lang/CharSequence;

    aget-object v1, v8, p2

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    check-cast v15, Lcom/booklal/booklal/EditBookDetailsActivity;

    if-eqz v1, :cond_f

    invoke-static {v15, v11}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_e

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v15, v1, v2}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_4

    :cond_e
    sget v1, Lcom/booklal/booklal/EditBookDetailsActivity;->c0:I

    invoke-virtual {v15}, Lcom/booklal/booklal/EditBookDetailsActivity;->l()V

    goto :goto_4

    :cond_f
    aget-object v1, v8, p2

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v15, v1}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    invoke-virtual {v15, v1, v4}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_10
    const/4 v4, 0x2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v15, v1, v3}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15, v1, v4}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_11
    aget-object v1, v8, p2

    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_12
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
