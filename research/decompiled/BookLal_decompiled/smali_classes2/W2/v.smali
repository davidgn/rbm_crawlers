.class public final LW2/v;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:LW2/v;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final REMOVED_TARGET_IDS_FIELD_NUMBER:I = 0x2


# instance fields
.field private document_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/T0;

.field private removedTargetIdsMemoizedSerializedSize:I

.field private removedTargetIds_:Lcom/google/protobuf/W;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/v;

    invoke-direct {v0}, LW2/v;-><init>()V

    sput-object v0, LW2/v;->DEFAULT_INSTANCE:LW2/v;

    const-class v1, LW2/v;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LW2/v;->removedTargetIdsMemoizedSerializedSize:I

    const-string v0, ""

    iput-object v0, p0, LW2/v;->document_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/K;->emptyIntList()Lcom/google/protobuf/W;

    move-result-object v0

    iput-object v0, p0, LW2/v;->removedTargetIds_:Lcom/google/protobuf/W;

    return-void
.end method

.method public static f()LW2/v;
    .locals 1

    sget-object v0, LW2/v;->DEFAULT_INSTANCE:LW2/v;

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
    sget-object p1, LW2/v;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/v;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/v;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/v;->DEFAULT_INSTANCE:LW2/v;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/v;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/v;->DEFAULT_INSTANCE:LW2/v;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/b;

    sget-object p2, LW2/v;->DEFAULT_INSTANCE:LW2/v;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/v;

    invoke-direct {p1}, LW2/v;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "document_"

    const-string p2, "removedTargetIds_"

    const-string p3, "readTime_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0004\u0003\u0000\u0001\u0000\u0001\u0208\u0002\'\u0004\t"

    sget-object p3, LW2/v;->DEFAULT_INSTANCE:LW2/v;

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

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW2/v;->document_:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/google/protobuf/W;
    .locals 1

    iget-object v0, p0, LW2/v;->removedTargetIds_:Lcom/google/protobuf/W;

    return-object v0
.end method
