.class public final LY0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/h0;->a:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance p2, Landroid/app/ProgressDialog;

    iget-object v0, p0, LY0/h0;->a:Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    invoke-direct {p2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Deleting Book..."

    invoke-virtual {p2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AllBook"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    iget-object v3, v0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LY0/g0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, LY0/g;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->b:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v3, "BookImages/"

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "P1.jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v4, LY0/g0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, LY0/g0;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v4, LY0/g;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, LY0/g;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, v0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->b:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "P2.jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g0;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, LY0/g0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/g;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, LY0/g;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const p1, 0x7f09020f

    invoke-virtual {v0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "Deleted Successfully.."

    invoke-static {p1, p2, v1}, LA2/q;->f(Landroid/view/View;Ljava/lang/String;I)LA2/q;

    move-result-object p1

    new-instance p2, LB2/e;

    const/16 v1, 0x8

    invoke-direct {p2, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    const-string v1, "Close."

    invoke-virtual {p1, v1, p2}, LA2/q;->g(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, LA2/q;->h(I)V

    const/16 p2, 0x3e8

    iput p2, p1, LA2/n;->e:I

    invoke-virtual {p1}, LA2/q;->i()V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/booklal/booklal/SellingItems;

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
