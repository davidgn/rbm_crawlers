.class public Lcom/google/firebase/firestore/core/AsyncEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/EventListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final eventListener:Lcom/google/firebase/firestore/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/EventListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile muted:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/EventListener<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/AsyncEventListener;->muted:Z

    iput-object p1, p0, Lcom/google/firebase/firestore/core/AsyncEventListener;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/AsyncEventListener;->eventListener:Lcom/google/firebase/firestore/EventListener;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/firestore/core/AsyncEventListener;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/core/AsyncEventListener;->lambda$onEvent$0(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method private synthetic lambda$onEvent$0(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/AsyncEventListener;->muted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/AsyncEventListener;->eventListener:Lcom/google/firebase/firestore/EventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public mute()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/AsyncEventListener;->muted:Z

    return-void
.end method

.method public onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/firestore/FirebaseFirestoreException;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/firestore/core/AsyncEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, LX1/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, LX1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
