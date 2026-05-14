.class public final Lcom/google/firebase/firestore/proto/MutationQueue;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/K;",
        "Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

.field public static final LAST_ACKNOWLEDGED_BATCH_ID_FIELD_NUMBER:I = 0x1

.field public static final LAST_STREAM_TOKEN_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/B0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field


# instance fields
.field private lastAcknowledgedBatchId_:I

.field private lastStreamToken_:Lcom/google/protobuf/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    const-class v1, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/firestore/proto/MutationQueue;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->setLastAcknowledgedBatchId(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/firestore/proto/MutationQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MutationQueue;->clearLastAcknowledgedBatchId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/firestore/proto/MutationQueue;Lcom/google/protobuf/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->setLastStreamToken(Lcom/google/protobuf/m;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/firestore/proto/MutationQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MutationQueue;->clearLastStreamToken()V

    return-void
.end method

.method private clearLastAcknowledgedBatchId()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastAcknowledgedBatchId_:I

    return-void
.end method

.method private clearLastStreamToken()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/firestore/proto/MutationQueue;->getDefaultInstance()Lcom/google/firebase/firestore/proto/MutationQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->getLastStreamToken()Lcom/google/protobuf/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/MutationQueue;)Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[B)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MutationQueue;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[BLcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/B0;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object v0

    return-object v0
.end method

.method private setLastAcknowledgedBatchId(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastAcknowledgedBatchId_:I

    return-void
.end method

.method private setLastStreamToken(Lcom/google/protobuf/m;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/m;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/firebase/firestore/proto/MutationQueue;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/firestore/proto/MutationQueue;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/firestore/proto/MutationQueue;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/firebase/firestore/proto/MutationQueue;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;

    invoke-direct {p1, p2}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;-><init>(Lcom/google/firebase/firestore/proto/MutationQueue$1;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-direct {p1}, Lcom/google/firebase/firestore/proto/MutationQueue;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "lastAcknowledgedBatchId_"

    const-string p2, "lastStreamToken_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\n"

    sget-object p3, Lcom/google/firebase/firestore/proto/MutationQueue;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/K;->newMessageInfo(Lcom/google/protobuf/t0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    return-object p2

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

.method public getLastAcknowledgedBatchId()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastAcknowledgedBatchId_:I

    return v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue;->lastStreamToken_:Lcom/google/protobuf/m;

    return-object v0
.end method
