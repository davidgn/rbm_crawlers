.class public final synthetic LY0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Listener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LY0/k0;->a:Ljava/lang/Object;

    iput-object p2, p0, LY0/k0;->b:Ljava/lang/Object;

    iput-object p3, p0, LY0/k0;->c:Ljava/lang/Object;

    iput-object p4, p0, LY0/k0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/firebase/firestore/auth/User;

    iget-object v0, p0, LY0/k0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, LY0/k0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, LY0/k0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v3, p0, LY0/k0;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-static {v2, v0, v1, v3, p1}, Lcom/google/firebase/firestore/core/FirestoreClient;->a(Lcom/google/firebase/firestore/core/FirestoreClient;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/auth/User;)V

    return-void
.end method
