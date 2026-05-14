.class public final synthetic Lcom/google/firebase/firestore/remote/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/Task;Lj3/c;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/remote/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/google/firebase/firestore/remote/e;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget v0, p0, Lcom/google/firebase/firestore/remote/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/e;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/e;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;

    invoke-static {v1, v2, v0, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->a(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/e;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/e;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    invoke-static {v2, v0, v1, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->b(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/e;->c:Ljava/lang/Object;

    check-cast v0, [Lj3/k;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/e;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/e;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/remote/FirestoreChannel;

    invoke-static {v2, v0, v1, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->c(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lj3/k;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/e;->d:Ljava/lang/Object;

    check-cast v2, Lj3/c;

    invoke-static {v1, v2, v0, p1}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->a(Lcom/google/android/gms/tasks/Task;Lj3/c;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
