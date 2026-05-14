.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/F;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->access$10500()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearActionUrl()Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->access$10700(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionUrlBytes()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getActionUrlBytes()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->access$10600(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Ljava/lang/String;)V

    return-object p0
.end method

.method public setActionUrlBytes(Lcom/google/protobuf/m;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->access$10800(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Lcom/google/protobuf/m;)V

    return-object p0
.end method
