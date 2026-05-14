.class public final LZ2/j;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:LZ2/j;

.field public static final EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x2

.field public static final MESSAGES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field


# instance fields
.field private expirationEpochTimestampMillis_:J

.field private messages_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ2/j;

    invoke-direct {v0}, LZ2/j;-><init>()V

    sput-object v0, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

    const-class v1, LZ2/j;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LZ2/j;->messages_:Lcom/google/protobuf/Y;

    return-void
.end method

.method public static f(LZ2/j;J)V
    .locals 0

    iput-wide p1, p0, LZ2/j;->expirationEpochTimestampMillis_:J

    return-void
.end method

.method public static g()LZ2/j;
    .locals 1

    sget-object v0, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

    return-object v0
.end method

.method public static j()LZ2/i;
    .locals 1

    sget-object v0, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LZ2/i;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/B0;
    .locals 1

    sget-object v0, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LZ2/j;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LZ2/j;

    monitor-enter p2

    :try_start_0
    sget-object p1, LZ2/j;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LZ2/j;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

    return-object p1

    :pswitch_2
    new-instance p1, LZ2/i;

    sget-object p2, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LZ2/j;

    invoke-direct {p1}, LZ2/j;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "messages_"

    const-class p2, LY2/e;

    const-string p3, "expirationEpochTimestampMillis_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002"

    sget-object p3, LZ2/j;->DEFAULT_INSTANCE:LZ2/j;

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

.method public final h()J
    .locals 2

    iget-wide v0, p0, LZ2/j;->expirationEpochTimestampMillis_:J

    return-wide v0
.end method

.method public final i()Lcom/google/protobuf/Y;
    .locals 1

    iget-object v0, p0, LZ2/j;->messages_:Lcom/google/protobuf/Y;

    return-object v0
.end method
