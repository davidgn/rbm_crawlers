.class public final synthetic Lcom/google/firebase/firestore/util/e;
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

    iput p1, p0, Lcom/google/firebase/firestore/util/e;->a:I

    iput-object p2, p0, Lcom/google/firebase/firestore/util/e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/util/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/util/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/util/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/util/ExponentialBackoff;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/ExponentialBackoff;->a(Lcom/google/firebase/firestore/util/ExponentialBackoff;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/BackgroundQueue;->a(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/util/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/util/AsyncQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->e(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/util/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->a(Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/firestore/util/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/AsyncQueue$SynchronizedShutdownAwareExecutor;->a(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
