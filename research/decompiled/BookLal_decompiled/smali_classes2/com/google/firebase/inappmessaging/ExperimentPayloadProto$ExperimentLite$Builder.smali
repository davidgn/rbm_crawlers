.class public final Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/F;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$000()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExperimentId()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    return-object p0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->getExperimentIdBytes()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public setExperimentId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExperimentIdBytes(Lcom/google/protobuf/m;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;Lcom/google/protobuf/m;)V

    return-object p0
.end method
