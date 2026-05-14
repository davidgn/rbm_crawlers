.class public final synthetic Lcom/google/firebase/firestore/remote/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/remote/c;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/remote/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/OnlineStateTracker;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/OnlineStateTracker;->a(Lcom/google/firebase/firestore/remote/OnlineStateTracker;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->d(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
