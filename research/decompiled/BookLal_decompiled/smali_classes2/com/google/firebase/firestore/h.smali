.class public final synthetic Lcom/google/firebase/firestore/h;
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

    iput p1, p0, Lcom/google/firebase/firestore/h;->a:I

    iput-object p2, p0, Lcom/google/firebase/firestore/h;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/LoadBundleTask;

    iget-object v1, p0, Lcom/google/firebase/firestore/h;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/OnProgressListener;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/LoadBundleTask;->a(Lcom/google/firebase/firestore/LoadBundleTask;Lcom/google/firebase/firestore/OnProgressListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/h;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->a(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;

    iget-object v1, p0, Lcom/google/firebase/firestore/h;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;->a(Lcom/google/firebase/firestore/LoadBundleTask$ManagedListener;Lcom/google/firebase/firestore/LoadBundleTaskProgress;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
