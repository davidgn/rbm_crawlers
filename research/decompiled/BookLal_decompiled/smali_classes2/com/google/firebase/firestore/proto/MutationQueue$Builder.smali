.class public final Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/MutationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/F;",
        "Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$000()Lcom/google/firebase/firestore/proto/MutationQueue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/proto/MutationQueue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLastAcknowledgedBatchId()Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$200(Lcom/google/firebase/firestore/proto/MutationQueue;)V

    return-object p0
.end method

.method public clearLastStreamToken()Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$400(Lcom/google/firebase/firestore/proto/MutationQueue;)V

    return-object p0
.end method

.method public getLastAcknowledgedBatchId()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->getLastAcknowledgedBatchId()I

    move-result v0

    return v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->getLastStreamToken()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public setLastAcknowledgedBatchId(I)Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$100(Lcom/google/firebase/firestore/proto/MutationQueue;I)V

    return-object p0
.end method

.method public setLastStreamToken(Lcom/google/protobuf/m;)Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$300(Lcom/google/firebase/firestore/proto/MutationQueue;Lcom/google/protobuf/m;)V

    return-object p0
.end method
