.class public final LW2/O0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LW2/O0;

.field public static final LABELS_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x2

.field public static final STREAM_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final WRITES_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0;"
        }
    .end annotation
.end field

.field private streamId_:Ljava/lang/String;

.field private streamToken_:Lcom/google/protobuf/m;

.field private writes_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/O0;

    invoke-direct {v0}, LW2/O0;-><init>()V

    sput-object v0, LW2/O0;->DEFAULT_INSTANCE:LW2/O0;

    const-class v1, LW2/O0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    sget-object v0, Lcom/google/protobuf/o0;->b:Lcom/google/protobuf/o0;

    iput-object v0, p0, LW2/O0;->labels_:Lcom/google/protobuf/o0;

    const-string v0, ""

    iput-object v0, p0, LW2/O0;->database_:Ljava/lang/String;

    iput-object v0, p0, LW2/O0;->streamId_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/O0;->writes_:Lcom/google/protobuf/Y;

    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    iput-object v0, p0, LW2/O0;->streamToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method public static f(LW2/O0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/O0;->database_:Ljava/lang/String;

    return-void
.end method

.method public static g(LW2/O0;Lcom/google/protobuf/m;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/O0;->streamToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method public static h(LW2/O0;LW2/K0;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LW2/O0;->writes_:Lcom/google/protobuf/Y;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/d;

    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/K;->mutableCopy(Lcom/google/protobuf/Y;)Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/O0;->writes_:Lcom/google/protobuf/Y;

    :cond_0
    iget-object p0, p0, LW2/O0;->writes_:Lcom/google/protobuf/Y;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static i()LW2/O0;
    .locals 1

    sget-object v0, LW2/O0;->DEFAULT_INSTANCE:LW2/O0;

    return-object v0
.end method

.method public static j()LW2/M0;
    .locals 1

    sget-object v0, LW2/O0;->DEFAULT_INSTANCE:LW2/O0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/M0;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/O0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/O0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/O0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/O0;->DEFAULT_INSTANCE:LW2/O0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/O0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/O0;->DEFAULT_INSTANCE:LW2/O0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/M0;

    sget-object p2, LW2/O0;->DEFAULT_INSTANCE:LW2/O0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/O0;

    invoke-direct {p1}, LW2/O0;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "database_"

    const-string v1, "streamId_"

    const-string v2, "writes_"

    const-class v3, LW2/K0;

    const-string v4, "streamToken_"

    const-string v5, "labels_"

    sget-object v6, LW2/N0;->a:Lcom/google/protobuf/n0;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0001\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\n\u00052"

    sget-object p3, LW2/O0;->DEFAULT_INSTANCE:LW2/O0;

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
