.class public final synthetic Lcom/google/firebase/firestore/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/firestore/e;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/firestore/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/firebase/firestore/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/util/Function;

    iget-object v1, p0, Lcom/google/firebase/firestore/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v2, p0, Lcom/google/firebase/firestore/e;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/TransactionOptions;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->b(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/TransactionOptions;Lcom/google/firebase/firestore/util/Function;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/core/Transaction;

    iget-object v1, p0, Lcom/google/firebase/firestore/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/e;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/Transaction$Function;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->e(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/Transaction$Function;Lcom/google/firebase/firestore/core/Transaction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
