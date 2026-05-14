.class public final Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/UnknownDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/F;",
        "Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$000()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/proto/UnknownDocument$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$200(Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    return-object p0
.end method

.method public clearVersion()Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$600(Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getNameBytes()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getVersion()Lcom/google/protobuf/T0;

    move-result-object v0

    return-object v0
.end method

.method public hasVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public mergeVersion(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$500(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$100(Lcom/google/firebase/firestore/proto/UnknownDocument;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/m;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$300(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/m;)V

    return-object p0
.end method

.method public setVersion(Lcom/google/protobuf/S0;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/T0;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$400(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/T0;)V

    return-object p0
.end method

.method public setVersion(Lcom/google/protobuf/T0;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$400(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/T0;)V

    return-object p0
.end method
