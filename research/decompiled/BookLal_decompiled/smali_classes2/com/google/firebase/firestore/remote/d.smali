.class public final synthetic Lcom/google/firebase/firestore/remote/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/remote/d;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/remote/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/Datastore;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/remote/Datastore;->b(Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/android/gms/tasks/Task;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/Datastore;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/remote/Datastore;->a(Lcom/google/firebase/firestore/remote/Datastore;Lcom/google/android/gms/tasks/Task;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
