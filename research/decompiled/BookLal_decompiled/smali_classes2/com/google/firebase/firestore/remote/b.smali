.class public final synthetic Lcom/google/firebase/firestore/remote/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/firestore/remote/b;->a:I

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/remote/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/RemoteStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteStore;->a(Lcom/google/firebase/firestore/remote/RemoteStore;Lcom/google/firebase/firestore/remote/ConnectivityMonitor$NetworkStatus;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/TestingHooks;->b(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->b(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$NetworkReceiver;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;->a(Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor;Lcom/google/firebase/firestore/remote/AndroidConnectivityMonitor$DefaultNetworkCallback;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    check-cast v1, Lj3/r0;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->a(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lj3/r0;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    check-cast v1, Lj3/f0;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->b(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lj3/f0;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/b;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->c(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
