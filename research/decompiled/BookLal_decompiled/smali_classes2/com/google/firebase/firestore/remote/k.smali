.class public final synthetic Lcom/google/firebase/firestore/remote/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/ListenerRegistration;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/remote/TestingHooks;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/TestingHooks;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/k;->a:Lcom/google/firebase/firestore/remote/TestingHooks;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/k;->a:Lcom/google/firebase/firestore/remote/TestingHooks;

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/remote/TestingHooks;->a(Lcom/google/firebase/firestore/remote/TestingHooks;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
