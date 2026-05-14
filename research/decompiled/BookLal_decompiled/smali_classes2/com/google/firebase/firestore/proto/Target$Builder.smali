.class public final Lcom/google/firebase/firestore/proto/Target$Builder;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/F;",
        "Lcom/google/firebase/firestore/proto/TargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/firestore/proto/Target;->access$000()Lcom/google/firebase/firestore/proto/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/proto/Target$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocuments()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1600(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1900(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearLastListenSequenceNumber()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1000(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearQuery()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1300(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearResumeToken()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$800(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$600(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearTargetId()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$300(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearTargetType()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$100(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public getDocuments()LW2/w0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getDocuments()LW2/w0;

    move-result-object v0

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/T0;

    move-result-object v0

    return-object v0
.end method

.method public getLastListenSequenceNumber()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getLastListenSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuery()LW2/y0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getQuery()LW2/y0;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getResumeToken()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotVersion()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getSnapshotVersion()Lcom/google/protobuf/T0;

    move-result-object v0

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getTargetId()I

    move-result v0

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasDocuments()Z

    move-result v0

    return v0
.end method

.method public hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasLastLimboFreeSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasQuery()Z

    move-result v0

    return v0
.end method

.method public hasSnapshotVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public mergeDocuments(LW2/w0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1500(Lcom/google/firebase/firestore/proto/Target;LW2/w0;)V

    return-object p0
.end method

.method public mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1800(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public mergeQuery(LW2/y0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1200(Lcom/google/firebase/firestore/proto/Target;LW2/y0;)V

    return-object p0
.end method

.method public mergeSnapshotVersion(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setDocuments(LW2/v0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LW2/w0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1400(Lcom/google/firebase/firestore/proto/Target;LW2/w0;)V

    return-object p0
.end method

.method public setDocuments(LW2/w0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1400(Lcom/google/firebase/firestore/proto/Target;LW2/w0;)V

    return-object p0
.end method

.method public setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/S0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/T0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setLastListenSequenceNumber(J)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/Target;->access$900(Lcom/google/firebase/firestore/proto/Target;J)V

    return-object p0
.end method

.method public setQuery(LW2/x0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LW2/y0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1100(Lcom/google/firebase/firestore/proto/Target;LW2/y0;)V

    return-object p0
.end method

.method public setQuery(LW2/y0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1100(Lcom/google/firebase/firestore/proto/Target;LW2/y0;)V

    return-object p0
.end method

.method public setResumeToken(Lcom/google/protobuf/m;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/m;)V

    return-object p0
.end method

.method public setSnapshotVersion(Lcom/google/protobuf/S0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/T0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setSnapshotVersion(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setTargetId(I)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$200(Lcom/google/firebase/firestore/proto/Target;I)V

    return-object p0
.end method
