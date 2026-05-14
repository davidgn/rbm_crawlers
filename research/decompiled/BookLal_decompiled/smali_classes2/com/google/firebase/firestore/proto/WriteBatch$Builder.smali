.class public final Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/WriteBatchOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/WriteBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/F;",
        "Lcom/google/firebase/firestore/proto/WriteBatchOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$000()Lcom/google/firebase/firestore/proto/WriteBatch;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/proto/WriteBatch$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBaseWrites(Ljava/lang/Iterable;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LW2/K0;",
            ">;)",
            "Lcom/google/firebase/firestore/proto/WriteBatch$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1500(Lcom/google/firebase/firestore/proto/WriteBatch;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllWrites(Ljava/lang/Iterable;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LW2/K0;",
            ">;)",
            "Lcom/google/firebase/firestore/proto/WriteBatch$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$600(Lcom/google/firebase/firestore/proto/WriteBatch;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBaseWrites(ILW2/I0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 9
    invoke-virtual {p2}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p2

    check-cast p2, LW2/K0;

    .line 10
    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1400(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method

.method public addBaseWrites(ILW2/K0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1400(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method

.method public addBaseWrites(LW2/I0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LW2/K0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1300(Lcom/google/firebase/firestore/proto/WriteBatch;LW2/K0;)V

    return-object p0
.end method

.method public addBaseWrites(LW2/K0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1300(Lcom/google/firebase/firestore/proto/WriteBatch;LW2/K0;)V

    return-object p0
.end method

.method public addWrites(ILW2/I0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 9
    invoke-virtual {p2}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p2

    check-cast p2, LW2/K0;

    .line 10
    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$500(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method

.method public addWrites(ILW2/K0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$500(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method

.method public addWrites(LW2/I0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LW2/K0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$400(Lcom/google/firebase/firestore/proto/WriteBatch;LW2/K0;)V

    return-object p0
.end method

.method public addWrites(LW2/K0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$400(Lcom/google/firebase/firestore/proto/WriteBatch;LW2/K0;)V

    return-object p0
.end method

.method public clearBaseWrites()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1600(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    return-object p0
.end method

.method public clearBatchId()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$200(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    return-object p0
.end method

.method public clearLocalWriteTime()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1100(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    return-object p0
.end method

.method public clearWrites()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$700(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    return-object p0
.end method

.method public getBaseWrites(I)LW2/K0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWrites(I)LW2/K0;

    move-result-object p1

    return-object p1
.end method

.method public getBaseWritesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWritesCount()I

    move-result v0

    return v0
.end method

.method public getBaseWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LW2/K0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWritesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBatchId()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBatchId()I

    move-result v0

    return v0
.end method

.method public getLocalWriteTime()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getLocalWriteTime()Lcom/google/protobuf/T0;

    move-result-object v0

    return-object v0
.end method

.method public getWrites(I)LW2/K0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWrites(I)LW2/K0;

    move-result-object p1

    return-object p1
.end method

.method public getWritesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWritesCount()I

    move-result v0

    return v0
.end method

.method public getWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LW2/K0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWritesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasLocalWriteTime()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->hasLocalWriteTime()Z

    move-result v0

    return v0
.end method

.method public mergeLocalWriteTime(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1000(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public removeBaseWrites(I)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1700(Lcom/google/firebase/firestore/proto/WriteBatch;I)V

    return-object p0
.end method

.method public removeWrites(I)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$800(Lcom/google/firebase/firestore/proto/WriteBatch;I)V

    return-object p0
.end method

.method public setBaseWrites(ILW2/I0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p2

    check-cast p2, LW2/K0;

    .line 6
    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1200(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method

.method public setBaseWrites(ILW2/K0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1200(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method

.method public setBatchId(I)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$100(Lcom/google/firebase/firestore/proto/WriteBatch;I)V

    return-object p0
.end method

.method public setLocalWriteTime(Lcom/google/protobuf/S0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/T0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$900(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setLocalWriteTime(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$900(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setWrites(ILW2/I0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p2

    check-cast p2, LW2/K0;

    .line 6
    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$300(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method

.method public setWrites(ILW2/K0;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$300(Lcom/google/firebase/firestore/proto/WriteBatch;ILW2/K0;)V

    return-object p0
.end method
