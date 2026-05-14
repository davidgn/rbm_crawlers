.class public final synthetic LY0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LY0/o;->a:I

    iput-object p2, p0, LY0/o;->b:Ljava/lang/Object;

    iput-object p3, p0, LY0/o;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 9

    iget-object v0, p0, LY0/o;->c:Ljava/lang/Object;

    iget-object v1, p0, LY0/o;->b:Ljava/lang/Object;

    iget v2, p0, LY0/o;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lcom/google/firebase/firestore/core/TransactionRunner;

    check-cast v0, Lcom/google/firebase/firestore/core/Transaction;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/firestore/core/TransactionRunner;->a(Lcom/google/firebase/firestore/core/TransactionRunner;Lcom/google/firebase/firestore/core/Transaction;Lcom/google/android/gms/tasks/Task;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/firebase/firestore/core/TransactionRunner;

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/firestore/core/TransactionRunner;->c(Lcom/google/firebase/firestore/core/TransactionRunner;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    return-void

    :pswitch_1
    sget-object v2, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    move-object v4, v1

    check-cast v4, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    check-cast v0, Landroid/app/ProgressDialog;

    const-string v2, "MainActivityTAG"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "signInWithCredential:failure"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p1, "signInWithCredential:success"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v4, Lcom/booklal/booklal/MainActivity;->f:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p1, v4, Lcom/booklal/booklal/MainActivity;->r:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "users"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    invoke-virtual {v6}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, LY0/j0;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, LY0/j0;-><init>(Lcom/booklal/booklal/MainActivity;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, LY0/i0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LY0/i0;-><init>(Landroid/app/ProgressDialog;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void

    :pswitch_2
    sget v2, Lcom/booklal/booklal/BookAdditionSuccessful;->o:I

    check-cast v1, Lcom/booklal/booklal/BookAdditionSuccessful;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD2/b;

    check-cast v0, LD2/e;

    check-cast p1, LD2/c;

    iget-boolean v2, p1, LD2/c;->b:Z

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "confirmation_intent"

    iget-object p1, p1, LD2/c;->a:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    const-string v3, "window_flags"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v3, LD2/d;

    iget-object v0, v0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v3, v0, p1}, LD2/d;-><init>(Landroid/os/Handler;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-string v0, "result_receiver"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
