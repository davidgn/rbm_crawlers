.class public final LZ2/h;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_SIGNALS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:LZ2/h;

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final PROJECT_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final REQUESTING_CLIENT_APP_FIELD_NUMBER:I = 0x2


# instance fields
.field private alreadySeenCampaigns_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field

.field private clientSignals_:LP2/b;

.field private projectNumber_:Ljava/lang/String;

.field private requestingClientApp_:LZ2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ2/h;

    invoke-direct {v0}, LZ2/h;-><init>()V

    sput-object v0, LZ2/h;->DEFAULT_INSTANCE:LZ2/h;

    const-class v1, LZ2/h;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LZ2/h;->projectNumber_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LZ2/h;->alreadySeenCampaigns_:Lcom/google/protobuf/Y;

    return-void
.end method

.method public static f(LZ2/h;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LZ2/h;->projectNumber_:Ljava/lang/String;

    return-void
.end method

.method public static g(LZ2/h;Lcom/google/protobuf/Y;)V
    .locals 2

    iget-object v0, p0, LZ2/h;->alreadySeenCampaigns_:Lcom/google/protobuf/Y;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/d;

    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/K;->mutableCopy(Lcom/google/protobuf/Y;)Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LZ2/h;->alreadySeenCampaigns_:Lcom/google/protobuf/Y;

    :cond_0
    iget-object p0, p0, LZ2/h;->alreadySeenCampaigns_:Lcom/google/protobuf/Y;

    invoke-static {p1, p0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static h(LZ2/h;LP2/b;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LZ2/h;->clientSignals_:LP2/b;

    return-void
.end method

.method public static i(LZ2/h;LZ2/f;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LZ2/h;->requestingClientApp_:LZ2/f;

    return-void
.end method

.method public static j()LZ2/h;
    .locals 1

    sget-object v0, LZ2/h;->DEFAULT_INSTANCE:LZ2/h;

    return-object v0
.end method

.method public static k()LZ2/g;
    .locals 1

    sget-object v0, LZ2/h;->DEFAULT_INSTANCE:LZ2/h;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LZ2/g;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LZ2/h;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LZ2/h;

    monitor-enter p2

    :try_start_0
    sget-object p1, LZ2/h;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LZ2/h;->DEFAULT_INSTANCE:LZ2/h;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LZ2/h;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LZ2/h;->DEFAULT_INSTANCE:LZ2/h;

    return-object p1

    :pswitch_2
    new-instance p1, LZ2/g;

    sget-object p2, LZ2/h;->DEFAULT_INSTANCE:LZ2/h;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LZ2/h;

    invoke-direct {p1}, LZ2/h;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "projectNumber_"

    const-string p2, "requestingClientApp_"

    const-string p3, "alreadySeenCampaigns_"

    const-class v0, LZ2/b;

    const-string v1, "clientSignals_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\t\u0003\u001b\u0004\t"

    sget-object p3, LZ2/h;->DEFAULT_INSTANCE:LZ2/h;

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
