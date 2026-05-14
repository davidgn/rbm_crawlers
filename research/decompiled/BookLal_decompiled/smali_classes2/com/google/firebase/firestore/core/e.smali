.class public final synthetic Lcom/google/firebase/firestore/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/core/FirestoreClient;

.field public final synthetic c:Lcom/google/firebase/firestore/core/QueryListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/firestore/core/e;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/core/e;->b:Lcom/google/firebase/firestore/core/FirestoreClient;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/e;->c:Lcom/google/firebase/firestore/core/QueryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/core/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/e;->b:Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/e;->c:Lcom/google/firebase/firestore/core/QueryListener;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->n(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/e;->c:Lcom/google/firebase/firestore/core/QueryListener;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/e;->b:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->q(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
