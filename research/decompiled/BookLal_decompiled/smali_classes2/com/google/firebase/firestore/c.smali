.class public final synthetic Lcom/google/firebase/firestore/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/EventListener;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/firebase/firestore/EventListener;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/firestore/c;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/firestore/c;->b:Lcom/google/firebase/firestore/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/c;->a:I

    check-cast p1, Lcom/google/firebase/firestore/core/ViewSnapshot;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/c;->b:Lcom/google/firebase/firestore/EventListener;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/firestore/Query;->c(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/c;->b:Lcom/google/firebase/firestore/EventListener;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->c(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
