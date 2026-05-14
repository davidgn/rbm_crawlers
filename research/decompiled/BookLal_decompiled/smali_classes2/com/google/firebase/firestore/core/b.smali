.class public final synthetic Lcom/google/firebase/firestore/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/core/FirestoreClient;

.field public final synthetic c:Lcom/google/firebase/firestore/EventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/EventListener;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/firestore/core/b;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/core/b;->b:Lcom/google/firebase/firestore/core/FirestoreClient;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/b;->c:Lcom/google/firebase/firestore/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/core/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/b;->b:Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/b;->c:Lcom/google/firebase/firestore/EventListener;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->d(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/EventListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/b;->b:Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/b;->c:Lcom/google/firebase/firestore/EventListener;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->m(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/EventListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
