.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
.super Lcom/google/protobuf/F;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/F;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$000()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDate()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$300(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public clearTime()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$600(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public clearTimeZone()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$800(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public getDate()Lb3/b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getDate()Lb3/b;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Lb3/f;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTime()Lb3/f;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneBytes()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTimeZoneBytes()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public hasDate()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->hasDate()Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->hasTime()Z

    move-result v0

    return v0
.end method

.method public mergeDate(Lb3/b;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$200(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lb3/b;)V

    return-object p0
.end method

.method public mergeTime(Lb3/f;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$500(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lb3/f;)V

    return-object p0
.end method

.method public setDate(Lb3/a;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lb3/b;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$100(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lb3/b;)V

    return-object p0
.end method

.method public setDate(Lb3/b;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$100(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lb3/b;)V

    return-object p0
.end method

.method public setTime(Lb3/e;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lb3/f;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$400(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lb3/f;)V

    return-object p0
.end method

.method public setTime(Lb3/f;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$400(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lb3/f;)V

    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$700(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeZoneBytes(Lcom/google/protobuf/m;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$900(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/protobuf/m;)V

    return-object p0
.end method
