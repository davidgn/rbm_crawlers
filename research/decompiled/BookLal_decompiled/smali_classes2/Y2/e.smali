.class public final LY2/e;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final DATA_BUNDLE_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:LY2/e;

.field public static final EXPERIMENTAL_PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final IS_TEST_CAMPAIGN_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x4

.field public static final TRIGGERING_CONDITIONS_FIELD_NUMBER:I = 0x5

.field public static final VANILLA_PAYLOAD_FIELD_NUMBER:I = 0x1


# instance fields
.field private content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

.field private dataBundle_:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0;"
        }
    .end annotation
.end field

.field private isTestCampaign_:Z

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

.field private triggeringConditions_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LY2/e;

    invoke-direct {v0}, LY2/e;-><init>()V

    sput-object v0, LY2/e;->DEFAULT_INSTANCE:LY2/e;

    const-class v1, LY2/e;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LY2/e;->payloadCase_:I

    sget-object v0, Lcom/google/protobuf/o0;->b:Lcom/google/protobuf/o0;

    iput-object v0, p0, LY2/e;->dataBundle_:Lcom/google/protobuf/o0;

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LY2/e;->triggeringConditions_:Lcom/google/protobuf/Y;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LY2/e;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LY2/e;

    monitor-enter p2

    :try_start_0
    sget-object p1, LY2/e;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LY2/e;->DEFAULT_INSTANCE:LY2/e;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LY2/e;->PARSER:Lcom/google/protobuf/B0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_1
    sget-object p1, LY2/e;->DEFAULT_INSTANCE:LY2/e;

    return-object p1

    :pswitch_2
    new-instance p1, LY2/c;

    sget-object p2, LY2/e;->DEFAULT_INSTANCE:LY2/e;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LY2/e;

    invoke-direct {p1}, LY2/e;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "payload_"

    const-string v1, "payloadCase_"

    const-class v2, LY2/f;

    const-class v3, LY2/b;

    const-string v4, "content_"

    const-string v5, "priority_"

    const-string v6, "triggeringConditions_"

    const-class v7, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    const-string v8, "isTestCampaign_"

    const-string v9, "dataBundle_"

    sget-object v10, LY2/d;->a:Lcom/google/protobuf/n0;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0008\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\t\u0004\t\u0005\u001b\u0007\u0007\u00082"

    sget-object p3, LY2/e;->DEFAULT_INSTANCE:LY2/e;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/K;->newMessageInfo(Lcom/google/protobuf/t0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LY2/e;->dataBundle_:Lcom/google/protobuf/o0;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final g()LY2/b;
    .locals 2

    iget v0, p0, LY2/e;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LY2/e;->payload_:Ljava/lang/Object;

    check-cast v0, LY2/b;

    return-object v0

    :cond_0
    invoke-static {}, LY2/b;->i()LY2/b;

    move-result-object v0

    return-object v0
.end method

.method public final getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    iget-object v0, p0, LY2/e;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, LY2/e;->isTestCampaign_:Z

    return v0
.end method

.method public final i()I
    .locals 2

    iget v0, p0, LY2/e;->payloadCase_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :cond_1
    :goto_0
    return v1
.end method

.method public final j()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    iget-object v0, p0, LY2/e;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final k()Lcom/google/protobuf/Y;
    .locals 1

    iget-object v0, p0, LY2/e;->triggeringConditions_:Lcom/google/protobuf/Y;

    return-object v0
.end method

.method public final l()LY2/f;
    .locals 2

    iget v0, p0, LY2/e;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LY2/e;->payload_:Ljava/lang/Object;

    check-cast v0, LY2/f;

    return-object v0

    :cond_0
    invoke-static {}, LY2/f;->i()LY2/f;

    move-result-object v0

    return-object v0
.end method
