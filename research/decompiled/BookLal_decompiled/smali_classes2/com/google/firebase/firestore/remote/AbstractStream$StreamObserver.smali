.class Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/remote/IncomingStreamObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/AbstractStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/remote/IncomingStreamObserver<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/remote/AbstractStream<",
            "TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/firebase/firestore/remote/AbstractStream;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/remote/AbstractStream;Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/AbstractStream<",
            "TReqT;TRespT;TCallbackT;>.CloseGuardedRunner;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lj3/r0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->lambda$onClose$3(Lj3/r0;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lj3/f0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->lambda$onHeaders$0(Lj3/f0;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->lambda$onNext$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->lambda$onOpen$2()V

    return-void
.end method

.method private synthetic lambda$onClose$3(Lj3/r0;)V
    .locals 3

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%x) Stream closed."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%x) Stream closed with status: %s."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream;->handleServerClose(Lj3/r0;)V

    return-void
.end method

.method private lambda$onHeaders$0(Lj3/f0;)V
    .locals 6

    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p1, Lj3/f0;->b:I

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget v2, p1, Lj3/f0;->b:I

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p1, Lj3/f0;->b:I

    if-ge v3, v4, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lj3/f0;->e(I)[B

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/String;-><init>([BI)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/firestore/remote/Datastore;->WHITE_LISTED_HEADERS:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lj3/f0;->d:Lj3/n;

    sget-object v4, Lj3/c0;->d:Ljava/util/BitSet;

    new-instance v4, Lj3/a0;

    invoke-direct {v4, v2, v3}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    invoke-virtual {p1, v4}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%x) Stream received headers: %s"

    invoke-static {p1, v1, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$onNext$1(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%x) Stream received: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onOpen$2()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%x) Stream is open"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->this$0:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream;->access$200(Lcom/google/firebase/firestore/remote/AbstractStream;)V

    return-void
.end method


# virtual methods
.method public onClose(Lj3/r0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/google/firebase/firestore/remote/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHeaders(Lj3/f0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/google/firebase/firestore/remote/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/google/firebase/firestore/remote/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpen()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->dispatcher:Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;

    new-instance v1, Lcom/google/firebase/firestore/remote/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/firestore/remote/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$CloseGuardedRunner;->run(Ljava/lang/Runnable;)V

    return-void
.end method
