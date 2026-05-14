.class public final LY0/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:LY0/B;


# direct methods
.method public constructor <init>(LY0/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/U0;->a:LY0/B;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    iget-object v0, p0, LY0/U0;->a:LY0/B;

    if-eqz p1, :cond_0

    iget-object p1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    iput-object v1, p1, Lcom/booklal/booklal/Take_Book_Information;->Q:Lcom/google/firebase/storage/FirebaseStorage;

    iget-object p1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/S0;

    iget-object v0, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->Q:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v1, "BookImages/"

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object p1, p1, Lcom/booklal/booklal/Take_Book_Information;->s:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpeg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/V;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0, v1}, LY0/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/T0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LY0/T0;-><init>(Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/firebase/auth/FirebaseUser;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_0
    iget-object p1, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    const-string v0, "Failed Uploading Picture..."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
